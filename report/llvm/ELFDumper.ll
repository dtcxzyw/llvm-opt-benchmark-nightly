Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ELFDumper?download=true
inline.NumInlined: 48625
inline.NumDeleted: 9668
loop-unroll.NumCompletelyUnrolled: 193
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 240
begin_hunk_0_@_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE1ELb0EEEE25getSectionContentsAsArrayINS0_12Elf_Rel_ImplIS4_Lb1EEEEENS_8ExpectedINS_8ArrayRefIT_EEEERKNS0_13Elf_Shdr_ImplIS4_EE:bb.a
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %24 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %25 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %26 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %27 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %28 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 3 uses
  %.0.copyload.i.i.i = load i32, ptr %i.a, align 1
  %.not = icmp eq i32 %.0.copyload.i.i.i, 12
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE1ELb0EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(40) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !5236)
  %i.b = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.172, i64 noundef 8) #31, !noalias !5236 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.c, ptr %7, align 8, !tbaa !268, !alias.scope !5236
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !349  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !269  ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  store ptr %i.d, ptr %7, align 8, !tbaa !349, !alias.scope !5236
  %i.k = load i64, ptr %i.e, align 8, !tbaa !270
  store i64 %i.k, ptr %i.c, align 8, !tbaa !270, !alias.scope !5236
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !269
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.l = phi i64 [ %i.h, %bb.c ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !269, !alias.scope !5236
  store ptr %i.e, ptr %i.b, align 8, !tbaa !349
  store i64 0, ptr %i.m, align 8, !tbaa !269
  store i8 0, ptr %i.e, align 8, !tbaa !270
  call void @llvm.experimental.noalias.scope.decl(metadata !5237)
  %i.o = add i64 %i.l, -4611686018427387870
  %i.p = icmp ult i64 %i.o, 34
  br i1 %i.p, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33, !noalias !5237
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.q = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.173, i64 noundef 34) #31, !noalias !5237 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.r, ptr %6, align 8, !tbaa !268, !alias.scope !5237
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !349  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !269  ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.s, ptr %6, align 8, !tbaa !349, !alias.scope !5237
  %i.z = load i64, ptr %i.t, align 8, !tbaa !270
  store i64 %i.z, ptr %i.r, align 8, !tbaa !270, !alias.scope !5237
  %.phi.trans.insert.i25 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i26 = load i64, ptr %.phi.trans.insert.i25, align 8, !tbaa !269
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.e
  %i.aa = phi i64 [ %i.w, %bb.e ], [ %.pre.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !269, !alias.scope !5237
  store ptr %i.t, ptr %i.q, align 8, !tbaa !349
  store i64 0, ptr %i.ab, align 8, !tbaa !269
  store i8 0, ptr %i.t, align 8, !tbaa !270
  store ptr %6, ptr %5, align 8, !alias.scope !5238
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr inttoptr (i64 12 to ptr), ptr %i.ad, align 8, !alias.scope !5238
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 4, ptr %i.ae, align 8, !tbaa !352, !alias.scope !5238
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 11, ptr %i.af, align 1, !tbaa !353, !alias.scope !5238
  store ptr %5, ptr %4, align 8, !alias.scope !5239
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.174, ptr %i.ag, align 8, !alias.scope !5239
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.ah, align 8, !tbaa !352, !alias.scope !5239
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 3, ptr %i.ai, align 1, !tbaa !353, !alias.scope !5239
  %.0.copyload.i.i.i42 = load i32, ptr %i.a, align 1
  %.sroa.0446.0.insert.ext = zext i32 %.0.copyload.i.i.i42 to i64
  %i.aj = inttoptr i64 %.sroa.0446.0.insert.ext to ptr
  store ptr %4, ptr %3, align 8, !alias.scope !5240
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.aj, ptr %i.ak, align 8, !alias.scope !5240
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 2, ptr %i.al, align 8, !tbaa !352, !alias.scope !5240
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 9, ptr %i.am, align 1, !tbaa !353, !alias.scope !5240
  %i.an = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30, !noalias !5241 ; 2 uses
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #31, !noalias !5241
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.an, ptr noundef nonnull align 8 dereferenceable(34) %3, i32 3, ptr nonnull %i.ao) #31, !noalias !5241
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8
  %i.ar = or i8 %i.aq, 1
  store i8 %i.ar, ptr %i.ap, align 8
  store ptr %i.an, ptr %0, align 8, !tbaa !346, !alias.scope !5242
  %i.as = load ptr, ptr %6, align 8, !tbaa !349   ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.r
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.au = load i64, ptr %i.r, align 8, !tbaa !270
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  %i.aw = load ptr, ptr %7, align 8, !tbaa !349   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.c
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ay = load i64, ptr %i.c, align 8, !tbaa !270
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  %i.ba = load ptr, ptr %8, align 8, !tbaa !349   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !270
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.v

bb.f:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.0.copyload.i.i.i65 = load i32, ptr %i.bf, align 1 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.0.copyload.i.i.i66 = load i32, ptr %i.bg, align 1 ; 5 uses
  %i.bh = zext i32 %.0.copyload.i.i.i66 to i64    ; 3 uses
  %i.bi = urem i32 %.0.copyload.i.i.i66, 12
  %i.bj = udiv i32 %.0.copyload.i.i.i66, 12
  %.not23 = icmp eq i32 %i.bi, 0
  br i1 %.not23, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE1ELb0EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(40) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !5243)
  %i.bk = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.172, i64 noundef 8) #31, !noalias !5243 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr %i.bl, ptr %14, align 8, !tbaa !268, !alias.scope !5243
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !349 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 5 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

bb.h:                                             ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !269 ; 3 uses
  %i.br = icmp ult i64 %i.bq, 16
  call void @llvm.assume(i1 %i.br)
  %i.bs = add nuw nsw i64 %i.bq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bl, ptr noundef nonnull align 8 dereferenceable(1) %i.bn, i64 %i.bs, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.g
  store ptr %i.bm, ptr %14, align 8, !tbaa !349, !alias.scope !5243
  %i.bt = load i64, ptr %i.bn, align 8, !tbaa !270
  store i64 %i.bt, ptr %i.bl, align 8, !tbaa !270, !alias.scope !5243
  %.phi.trans.insert.i68 = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.pre.i69 = load i64, ptr %.phi.trans.insert.i68, align 8, !tbaa !269
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  %i.bu = phi i64 [ %i.bq, %bb.h ], [ %.pre.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.bu, ptr %i.bw, align 8, !tbaa !269, !alias.scope !5243
  store ptr %i.bn, ptr %i.bk, align 8, !tbaa !349
  store i64 0, ptr %i.bv, align 8, !tbaa !269
  store i8 0, ptr %i.bn, align 8, !tbaa !270
  call void @llvm.experimental.noalias.scope.decl(metadata !5244)
  %i.bx = add i64 %i.bu, -4611686018427387879
  %i.by = icmp ult i64 %i.bx, 25
  br i1 %i.by, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71

bb.i:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33, !noalias !5244
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70
  %i.bz = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.175, i64 noundef 25) #31, !noalias !5244 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr %i.ca, ptr %13, align 8, !tbaa !268, !alias.scope !5244
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !349 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 5 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !269 ; 3 uses
  %i.cg = icmp ult i64 %i.cf, 16
  call void @llvm.assume(i1 %i.cg)
  %i.ch = add nuw nsw i64 %i.cf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ca, ptr noundef nonnull align 8 dereferenceable(1) %i.cc, i64 %i.ch, i1 false)
  br label %_ZN4llvm5ErrorD2Ev.exit137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71
  store ptr %i.cb, ptr %13, align 8, !tbaa !349, !alias.scope !5244
  %i.ci = load i64, ptr %i.cc, align 8, !tbaa !270
  store i64 %i.ci, ptr %i.ca, align 8, !tbaa !270, !alias.scope !5244
  %.phi.trans.insert.i73 = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.pre.i74 = load i64, ptr %.phi.trans.insert.i73, align 8, !tbaa !269
  br label %_ZN4llvm5ErrorD2Ev.exit137

_ZN4llvm5ErrorD2Ev.exit137:                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %bb.j
  %i.cj = phi i64 [ %i.cf, %bb.j ], [ %.pre.i74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.cj, ptr %i.cl, align 8, !tbaa !269, !alias.scope !5244
  store ptr %i.cc, ptr %i.bz, align 8, !tbaa !349
  store i64 0, ptr %i.ck, align 8, !tbaa !269
  store i8 0, ptr %i.cc, align 8, !tbaa !270
  %i.cm = inttoptr i64 %i.bh to ptr
  store ptr %13, ptr %12, align 8, !alias.scope !5245
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.cm, ptr %i.cn, align 8, !alias.scope !5245
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 4, ptr %i.co, align 8, !tbaa !352, !alias.scope !5245
  %i.cp = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 9, ptr %i.cp, align 1, !tbaa !353, !alias.scope !5245
  store ptr %12, ptr %11, align 8, !alias.scope !5246
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr @.str.176, ptr %i.cq, align 8, !alias.scope !5246
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 2, ptr %i.cr, align 8, !tbaa !352, !alias.scope !5246
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 3, ptr %i.cs, align 1, !tbaa !353, !alias.scope !5246
  %.0.copyload.i.i.i106 = load i32, ptr %i.a, align 1
  %.sroa.0422.0.insert.ext = zext i32 %.0.copyload.i.i.i106 to i64
  %i.ct = inttoptr i64 %.sroa.0422.0.insert.ext to ptr
  store ptr %11, ptr %10, align 8, !alias.scope !5247
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.ct, ptr %i.cu, align 8, !alias.scope !5247
  %i.cv = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 2, ptr %i.cv, align 8, !tbaa !352, !alias.scope !5247
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 9, ptr %i.cw, align 1, !tbaa !353, !alias.scope !5247
  store ptr %10, ptr %9, align 8, !alias.scope !5248
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @.str.6, ptr %i.cx, align 8, !alias.scope !5248
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 2, ptr %i.cy, align 8, !tbaa !352, !alias.scope !5248
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 3, ptr %i.cz, align 1, !tbaa !353, !alias.scope !5248
  %i.da = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30, !noalias !5249 ; 2 uses
  %i.db = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #31, !noalias !5249
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.da, ptr noundef nonnull align 8 dereferenceable(34) %9, i32 3, ptr nonnull %i.db) #31, !noalias !5249
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 8
  %i.de = or i8 %i.dd, 1
  store i8 %i.de, ptr %i.dc, align 8
  store ptr %i.da, ptr %0, align 8, !tbaa !346, !alias.scope !5250
  %i.df = load ptr, ptr %13, align 8, !tbaa !349  ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.ca
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZN4llvm5ErrorD2Ev.exit137
  %i.dh = load i64, ptr %i.ca, align 8, !tbaa !270
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %_ZN4llvm5ErrorD2Ev.exit137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  %i.dj = load ptr, ptr %14, align 8, !tbaa !349  ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.bl
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %i.dl = load i64, ptr %i.bl, align 8, !tbaa !270
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  %i.dn = load ptr, ptr %15, align 8, !tbaa !349  ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !270
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.v

bb.k:                                             ; preds = %bb.f
  %i.ds = xor i32 %.0.copyload.i.i.i65, -1
  %i.dt = icmp ugt i32 %.0.copyload.i.i.i66, %i.ds
  br i1 %i.dt, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE1ELb0EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(40) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !5251)
  %i.du = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %22, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.172, i64 noundef 8) #31, !noalias !5251 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  store ptr %i.dv, ptr %21, align 8, !tbaa !268, !alias.scope !5251
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !349 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 5 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

bb.m:                                             ; preds = %bb.l
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !269 ; 3 uses
  %i.eb = icmp ult i64 %i.ea, 16
  call void @llvm.assume(i1 %i.eb)
end_hunk_0
begin_hunk_1_@_ZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE29printDynamicRelocationsHelperEvENKUlRNS_13DynRegionInfoEE_clES8_:bb.a
  %i.y = load ptr, ptr %5, align 8, !tbaa !349    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !270
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ad = load ptr, ptr %6, align 8, !tbaa !348   ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !250
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) #31, !inline_history !0
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr %3, align 8, !tbaa !846   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !846 ; 2 uses
  %.not12 = icmp eq ptr %i.ai, %i.ak
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 24
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !847 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !847 ; 2 uses
  %.not1014 = icmp eq ptr %i.aq, %i.as
  br i1 %.not1014, label %.loopexit, label %.lr.ph17

.lr.ph17:                                         ; preds = %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.05.013 = phi ptr [ %i.ai, %.lr.ph ], [ %i.bb, %bb.e ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.05.013, i64 4
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.ay, align 1 ; 3 uses
  %i.az = and i32 %.0.copyload.i.i.i.i.i.i, 255
  store i32 %i.az, ptr %7, align 8, !tbaa !642
  %i.ba = lshr i32 %.0.copyload.i.i.i.i.i.i, 8
  store i32 %i.ba, ptr %i.al, align 4, !tbaa !845
  %.0.copyload.i.i.i.i = load i32, ptr %.sroa.05.013, align 1
  store i32 %.0.copyload.i.i.i.i, ptr %i.am, align 8, !tbaa !638
  store i32 %.0.copyload.i.i.i.i.i.i, ptr %i.an, align 4, !tbaa !760
  store i8 0, ptr %i.ao, align 8, !tbaa !643
  call fastcc void @_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE17printDynamicRelocERKNS_10RelocationIS5_EE(ptr noundef nonnull align 8 dereferenceable(1152) %.0.val, ptr noundef nonnull align 8 dereferenceable(32) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.05.013, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bb, %i.ak
  br i1 %.not, label %._crit_edge, label %bb.e

bb.f:                                             ; preds = %.lr.ph17, %bb.f
  %.sroa.01.015 = phi ptr [ %i.aq, %.lr.ph17 ], [ %i.bg, %bb.f ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.01.015, i64 4
  %.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.bc, align 1 ; 3 uses
  %i.bd = and i32 %.0.copyload.i.i.i.i.i.i.i, 255
  store i32 %i.bd, ptr %8, align 8, !tbaa !642
  %i.be = lshr i32 %.0.copyload.i.i.i.i.i.i.i, 8
  store i32 %i.be, ptr %i.at, align 4, !tbaa !845
  %.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.01.015, align 1
  store i32 %.0.copyload.i.i.i.i.i, ptr %i.au, align 8, !tbaa !638
  store i32 %.0.copyload.i.i.i.i.i.i.i, ptr %i.av, align 4, !tbaa !760
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.01.015, i64 8
  %.0.copyload.i.i.i.i3.i = load i32, ptr %i.bf, align 1
  store i8 1, ptr %i.aw, align 8, !tbaa !643
  %.sink.i.i = sext i32 %.0.copyload.i.i.i.i3.i to i64
  store i64 %.sink.i.i, ptr %i.ax, align 8, !tbaa !340
  call fastcc void @_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE17printDynamicRelocERKNS_10RelocationIS5_EE(ptr noundef nonnull align 8 dereferenceable(1152) %.0.val, ptr noundef nonnull align 8 dereferenceable(32) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.01.015, i64 12 ; 2 uses
  %.not10 = icmp eq ptr %i.bg, %i.as
  br i1 %.not10, label %.loopexit, label %bb.f

.loopexit:                                        ; preds = %bb.f, %._crit_edge, %_ZN4llvm5ErrorD2Ev.exit
  %i.bh = load i8, ptr %i.r, align 8
  %i.bi = trunc i8 %i.bh to i1
  br i1 %i.bi, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !413 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE1ELb0EEELb1EEESaIS6_EED2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !414
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = sub i64 %i.bn, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bp) #32
  br label %_ZNSt6vectorIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE1ELb0EEELb1EEESaIS6_EED2Ev.exit.i.i

_ZNSt6vectorIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE1ELb0EEELb1EEESaIS6_EED2Ev.exit.i.i: ; preds = %bb.h, %bb.g
  %i.bq = load ptr, ptr %3, align 8, !tbaa !417   ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i1.i.i, label %_ZN4llvm8ExpectedISt4pairISt6vectorINS_6object12Elf_Rel_ImplINS3_7ELFTypeILNS_10endiannessE1ELb0EEELb0EEESaIS8_EES2_INS4_IS7_Lb1EEESaISB_EEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE1ELb0EEELb1EEESaIS6_EED2Ev.exit.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !418
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bv) #32
  br label %_ZN4llvm8ExpectedISt4pairISt6vectorINS_6object12Elf_Rel_ImplINS3_7ELFTypeILNS_10endiannessE1ELb0EEELb0EEESaIS8_EES2_INS4_IS7_Lb1EEESaISB_EEEED2Ev.exit

bb.j:                                             ; preds = %.loopexit
  %i.bw = load ptr, ptr %3, align 8, !tbaa !346   ; 3 uses
  %.not.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i, label %_ZN4llvm8ExpectedISt4pairISt6vectorINS_6object12Elf_Rel_ImplINS3_7ELFTypeILNS_10endiannessE1ELb0EEELb0EEESaIS8_EES2_INS4_IS7_Lb1EEESaISB_EEEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.j
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !250
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(8) %i.bw) #31, !inline_history !57
  br label %_ZN4llvm8ExpectedISt4pairISt6vectorINS_6object12Elf_Rel_ImplINS3_7ELFTypeILNS_10endiannessE1ELb0EEELb0EEESaIS8_EES2_INS4_IS7_Lb1EEESaISB_EEEED2Ev.exit

_ZN4llvm8ExpectedISt4pairISt6vectorINS_6object12Elf_Rel_ImplINS3_7ELFTypeILNS_10endiannessE1ELb0EEELb0EEESaIS8_EES2_INS4_IS7_Lb1EEESaISB_EEEED2Ev.exit: ; preds = %_ZNSt6vectorIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE1ELb0EEELb1EEESaIS6_EED2Ev.exit.i.i, %bb.i, %bb.j, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvm8ExpectedISt4pairISt6vectorINS_6object12Elf_Rel_ImplINS3_7ELFTypeILNS_10endiannessE1ELb0EEELb0EEESaIS8_EES2_INS4_IS7_Lb1EEESaISB_EEEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i64 } @_ZNK12_GLOBAL__N_113DynRegionInfo13getAsArrayRefIN4llvm6object12Elf_Rel_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEELb1EEEEENS2_8ArrayRefIT_EEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 4 uses
  %2 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 4 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !356    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !266
  call void @_ZNK4llvm6object6Binary18getMemoryBufferRefEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryBufferRef") align 8 %1, ptr noundef nonnull align 8 dereferenceable(48) %i.c) #31
  %i.d = load ptr, ptr %1, align 8, !tbaa !271
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !266
  call void @_ZNK4llvm6object6Binary18getMemoryBufferRefEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryBufferRef") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %i.h) #31
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !272  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !763
  %.fr = freeze i64 %i.l                          ; 5 uses
  %i.m = sub i64 %i.j, %i.g
  %i.n = icmp ugt i64 %.fr, %i.m
  br i1 %i.n, label %_ZN4llvmplERKNS_5TwineES2_.exit109, label %bb.c

_ZN4llvmplERKNS_5TwineES2_.exit109:               ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !267
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.q = inttoptr i64 %i.g to ptr
  store ptr @.str.37, ptr %9, align 8, !alias.scope !5929
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !5929
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 3, ptr %i.s, align 8, !tbaa !352, !alias.scope !5929
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 15, ptr %i.t, align 1, !tbaa !353, !alias.scope !5929
  store ptr %9, ptr %8, align 8, !alias.scope !5930
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @.str.38, ptr %i.u, align 8, !alias.scope !5930
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 2, ptr %i.v, align 8, !tbaa !352, !alias.scope !5930
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 3, ptr %i.w, align 1, !tbaa !353, !alias.scope !5930
  %i.x = inttoptr i64 %.fr to ptr
  store ptr %8, ptr %7, align 8, !alias.scope !5931
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.x, ptr %i.y, align 8, !alias.scope !5931
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 2, ptr %i.z, align 8, !tbaa !352, !alias.scope !5931
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 15, ptr %i.aa, align 1, !tbaa !353, !alias.scope !5931
  store ptr %7, ptr %6, align 8, !alias.scope !5932
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.39, ptr %i.ab, align 8, !alias.scope !5932
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 2, ptr %i.ac, align 8, !tbaa !352, !alias.scope !5932
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 3, ptr %i.ad, align 1, !tbaa !353, !alias.scope !5932
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !340
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.03.0.copyload = load ptr, ptr %i.ae, align 8, !tbaa !355
  store ptr %6, ptr %5, align 8, !alias.scope !5933
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.sroa.03.0.copyload, ptr %i.af, align 8, !alias.scope !5933
  %.sroa.2.0..sroa_idx.i.i.i78 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %.sroa.24.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i.i78, align 8, !tbaa !270, !alias.scope !5933
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 2, ptr %i.ag, align 8, !tbaa !352, !alias.scope !5933
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 5, ptr %i.ah, align 1, !tbaa !353, !alias.scope !5933
  store ptr %5, ptr %4, align 8, !alias.scope !5934
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.40, ptr %i.ai, align 8, !alias.scope !5934
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.aj, align 8, !tbaa !352, !alias.scope !5934
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 3, ptr %i.ak, align 1, !tbaa !353, !alias.scope !5934
  %i.al = inttoptr i64 %i.j to ptr
  store ptr %4, ptr %3, align 8, !alias.scope !5935
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !5935
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 2, ptr %i.an, align 8, !tbaa !352, !alias.scope !5935
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 15, ptr %i.ao, align 1, !tbaa !353, !alias.scope !5935
  call void @_ZNK4llvm9ObjDumper19reportUniqueWarningERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(34) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !810
  %i.ar = icmp eq i64 %i.aq, 12
  %i.as = urem i64 %.fr, 12
  %i.at = icmp eq i64 %i.as, 0
  %or.cond = and i1 %i.at, %i.ar
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.au = sdiv exact i64 %.fr, 12
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.av, ptr %10, align 8, !tbaa !268
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i64 0, ptr %i.aw, align 8, !tbaa !269
  store i8 0, ptr %i.av, align 8, !tbaa !270
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !269 ; 4 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_ZN4llvmplERKNS_5TwineES2_.exit154, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !5936)
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !349, !noalias !5936
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.bc, ptr %11, align 8, !tbaa !268, !alias.scope !5937
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i64 0, ptr %i.bd, align 8, !tbaa !269, !alias.scope !5937
  store i8 0, ptr %i.bc, align 8, !tbaa !270, !alias.scope !5937
  %i.be = add i64 %i.ay, 5
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.be) #31
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !269, !alias.scope !5937
  %i.bg = sub i64 4611686018427387903, %i.bf
  %i.bh = icmp ult i64 %i.bg, %i.ay
  br i1 %i.bh, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.f
  %i.bi = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.bb, i64 noundef %i.ay) #31 ; 0 uses
  %i.bj = load i64, ptr %i.bd, align 8, !tbaa !269, !alias.scope !5937
  %i.bk = add i64 %i.bj, -4611686018427387899
  %i.bl = icmp ult i64 %i.bk, 5
  br i1 %i.bl, label %bb.h, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.41, i64 noundef 5) #31 ; 0 uses
  %i.bn = load i64, ptr %i.bd, align 8, !tbaa !269 ; 2 uses
  %i.bo = load i64, ptr %i.aw, align 8, !tbaa !269
  %i.bp = sub i64 4611686018427387903, %i.bo
  %i.bq = icmp ult i64 %i.bp, %i.bn
  br i1 %i.bq, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.i:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.br = load ptr, ptr %11, align 8, !tbaa !349
  %i.bs = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.br, i64 noundef %i.bn) #31 ; 0 uses
  %i.bt = load ptr, ptr %11, align 8, !tbaa !349  ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.bc
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.bv = load i64, ptr %i.bc, align 8, !tbaa !270
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  %.pre = load i64, ptr %i.k, align 8, !tbaa !763
  br label %_ZN4llvmplERKNS_5TwineES2_.exit154

_ZN4llvmplERKNS_5TwineES2_.exit154:               ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bx = phi i64 [ %.fr, %bb.e ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.01.0.copyload = load ptr, ptr %i.by, align 8, !tbaa !355
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !340
  %i.bz = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i8 3, ptr %i.bz, align 8, !tbaa !352, !alias.scope !5938
  %i.ca = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 5, ptr %i.ca, align 1, !tbaa !353, !alias.scope !5938
  store ptr @.str.42, ptr %16, align 8, !tbaa !270, !alias.scope !5938
  %i.cb = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %.sroa.01.0.copyload, ptr %i.cb, align 8, !tbaa !270, !alias.scope !5938
  %i.cc = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i64 %.sroa.22.0.copyload, ptr %i.cc, align 8, !tbaa !270, !alias.scope !5938
  store ptr %16, ptr %15, align 8, !alias.scope !5939
  %i.cd = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr @.str.43, ptr %i.cd, align 8, !alias.scope !5939
  %i.ce = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 2, ptr %i.ce, align 8, !tbaa !352, !alias.scope !5939
  %i.cf = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 3, ptr %i.cf, align 1, !tbaa !353, !alias.scope !5939
  %i.cg = inttoptr i64 %i.bx to ptr
  store ptr %15, ptr %14, align 8, !alias.scope !5940
  %i.ch = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.cg, ptr %i.ch, align 8, !alias.scope !5940
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 2, ptr %i.ci, align 8, !tbaa !352, !alias.scope !5940
  %i.cj = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 15, ptr %i.cj, align 1, !tbaa !353, !alias.scope !5940
  store ptr %14, ptr %13, align 8, !alias.scope !5941
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr @.str.6, ptr %i.ck, align 8, !alias.scope !5941
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i8 2, ptr %i.cl, align 8, !tbaa !352, !alias.scope !5941
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 3, ptr %i.cm, align 1, !tbaa !353, !alias.scope !5941
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(34) %13) #31
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !269 ; 2 uses
  %i.cp = load i64, ptr %i.aw, align 8, !tbaa !269
  %i.cq = sub i64 4611686018427387903, %i.cp
  %i.cr = icmp ult i64 %i.cq, %i.co
  br i1 %i.cr, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit155

bb.j:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit154
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit155: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit154
  %i.cs = load ptr, ptr %12, align 8, !tbaa !349
  %i.ct = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.cs, i64 noundef %i.co) #31 ; 0 uses
  %i.cu = load ptr, ptr %12, align 8, !tbaa !349  ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit155
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !270
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !272 ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.l, label %_ZN4llvmplERKNS_5TwineES2_.exit203

_ZN4llvmplERKNS_5TwineES2_.exit203:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #31
  %.sroa.0.0.copyload = load ptr, ptr %i.dc, align 8, !tbaa !355
  %i.dd = getelementptr inbounds nuw i8, ptr %21, i64 32
  store i8 3, ptr %i.dd, align 8, !tbaa !352, !alias.scope !5942
  %i.de = getelementptr inbounds nuw i8, ptr %21, i64 33
  store i8 5, ptr %i.de, align 1, !tbaa !353, !alias.scope !5942
  store ptr @.str.44, ptr %21, align 8, !tbaa !270, !alias.scope !5942
  %i.df = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %.sroa.0.0.copyload, ptr %i.df, align 8, !tbaa !270, !alias.scope !5942
  %i.dg = getelementptr inbounds nuw i8, ptr %21, i64 24
  store i64 %i.da, ptr %i.dg, align 8, !tbaa !270, !alias.scope !5942
  store ptr %21, ptr %20, align 8, !alias.scope !5943
  %i.dh = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr @.str.43, ptr %i.dh, align 8, !alias.scope !5943
  %i.di = getelementptr inbounds nuw i8, ptr %20, i64 32
  store i8 2, ptr %i.di, align 8, !tbaa !352, !alias.scope !5943
  %i.dj = getelementptr inbounds nuw i8, ptr %20, i64 33
  store i8 3, ptr %i.dj, align 1, !tbaa !353, !alias.scope !5943
  %i.dk = load i64, ptr %i.ap, align 8, !tbaa !810
  %i.dl = inttoptr i64 %i.dk to ptr
  store ptr %20, ptr %19, align 8, !alias.scope !5944
  %i.dm = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %i.dl, ptr %i.dm, align 8, !alias.scope !5944
  %i.dn = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i8 2, ptr %i.dn, align 8, !tbaa !352, !alias.scope !5944
  %i.do = getelementptr inbounds nuw i8, ptr %19, i64 33
  store i8 15, ptr %i.do, align 1, !tbaa !353, !alias.scope !5944
  store ptr %19, ptr %18, align 8, !alias.scope !5945
  %i.dp = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr @.str.6, ptr %i.dp, align 8, !alias.scope !5945
  %i.dq = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i8 2, ptr %i.dq, align 8, !tbaa !352, !alias.scope !5945
  %i.dr = getelementptr inbounds nuw i8, ptr %18, i64 33
  store i8 3, ptr %i.dr, align 1, !tbaa !353, !alias.scope !5945
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(34) %18) #31
  %i.ds = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !269 ; 2 uses
  %i.du = load i64, ptr %i.aw, align 8, !tbaa !269
  %i.dv = sub i64 4611686018427387903, %i.du
  %i.dw = icmp ult i64 %i.dv, %i.dt
  br i1 %i.dw, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit204

bb.k:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit203
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit204: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit203
  %i.dx = load ptr, ptr %17, align 8, !tbaa !349
  %i.dy = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.dx, i64 noundef %i.dt) #31 ; 0 uses
  %i.dz = load ptr, ptr %17, align 8, !tbaa !349  ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit204
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !270
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit204, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !267
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  %i.eg = getelementptr inbounds nuw i8, ptr %22, i64 32
  store i8 4, ptr %i.eg, align 8, !tbaa !352
  %i.eh = getelementptr inbounds nuw i8, ptr %22, i64 33
  store i8 1, ptr %i.eh, align 1, !tbaa !353
  store ptr %10, ptr %22, align 8, !tbaa !270
  call void @_ZNK4llvm9ObjDumper19reportUniqueWarningERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(72) %i.ef, ptr noundef nonnull align 8 dereferenceable(34) %22) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  %i.ei = load ptr, ptr %10, align 8, !tbaa !349  ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.av
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208: ; preds = %bb.l
  %i.ek = load i64, ptr %i.av, align 8, !tbaa !270
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZN4llvmplERKNS_5TwineES2_.exit109, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210
  %.sroa.5.0 = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210 ], [ 0, %_ZN4llvmplERKNS_5TwineES2_.exit109 ], [ %i.au, %bb.d ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE17printDynamicRelocERKNS_10RelocationIS5_EE(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 7 uses
end_hunk_1
begin_hunk_2_@_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE0ELb0EEEE25getSectionContentsAsArrayINS0_12Elf_Rel_ImplIS4_Lb1EEEEENS_8ExpectedINS_8ArrayRefIT_EEEERKNS0_13Elf_Shdr_ImplIS4_EE:bb.a
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %24 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %25 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %26 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %27 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %28 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 3 uses
  %.0.copyload.i.i.i = load i32, ptr %i.a, align 1
  %.not = icmp eq i32 %.0.copyload.i.i.i, 201326592
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE0ELb0EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(40) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !12692)
  %i.b = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.172, i64 noundef 8) #31, !noalias !12692 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.c, ptr %7, align 8, !tbaa !268, !alias.scope !12692
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !349  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !269  ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  store ptr %i.d, ptr %7, align 8, !tbaa !349, !alias.scope !12692
  %i.k = load i64, ptr %i.e, align 8, !tbaa !270
  store i64 %i.k, ptr %i.c, align 8, !tbaa !270, !alias.scope !12692
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !269
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.l = phi i64 [ %i.h, %bb.c ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !269, !alias.scope !12692
  store ptr %i.e, ptr %i.b, align 8, !tbaa !349
  store i64 0, ptr %i.m, align 8, !tbaa !269
  store i8 0, ptr %i.e, align 8, !tbaa !270
  call void @llvm.experimental.noalias.scope.decl(metadata !12693)
  %i.o = add i64 %i.l, -4611686018427387870
  %i.p = icmp ult i64 %i.o, 34
  br i1 %i.p, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33, !noalias !12693
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.q = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.173, i64 noundef 34) #31, !noalias !12693 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.r, ptr %6, align 8, !tbaa !268, !alias.scope !12693
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !349  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !269  ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.s, ptr %6, align 8, !tbaa !349, !alias.scope !12693
  %i.z = load i64, ptr %i.t, align 8, !tbaa !270
  store i64 %i.z, ptr %i.r, align 8, !tbaa !270, !alias.scope !12693
  %.phi.trans.insert.i25 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i26 = load i64, ptr %.phi.trans.insert.i25, align 8, !tbaa !269
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.e
  %i.aa = phi i64 [ %i.w, %bb.e ], [ %.pre.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !269, !alias.scope !12693
  store ptr %i.t, ptr %i.q, align 8, !tbaa !349
  store i64 0, ptr %i.ab, align 8, !tbaa !269
  store i8 0, ptr %i.t, align 8, !tbaa !270
  store ptr %6, ptr %5, align 8, !alias.scope !12694
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr inttoptr (i64 12 to ptr), ptr %i.ad, align 8, !alias.scope !12694
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 4, ptr %i.ae, align 8, !tbaa !352, !alias.scope !12694
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 11, ptr %i.af, align 1, !tbaa !353, !alias.scope !12694
  store ptr %5, ptr %4, align 8, !alias.scope !12695
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.174, ptr %i.ag, align 8, !alias.scope !12695
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.ah, align 8, !tbaa !352, !alias.scope !12695
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 3, ptr %i.ai, align 1, !tbaa !353, !alias.scope !12695
  %.0.copyload.i.i.i42 = load i32, ptr %i.a, align 1
  %i.aj = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i42)
  %.sroa.0446.0.insert.ext = zext i32 %i.aj to i64
  %i.ak = inttoptr i64 %.sroa.0446.0.insert.ext to ptr
  store ptr %4, ptr %3, align 8, !alias.scope !12696
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ak, ptr %i.al, align 8, !alias.scope !12696
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 2, ptr %i.am, align 8, !tbaa !352, !alias.scope !12696
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 9, ptr %i.an, align 1, !tbaa !353, !alias.scope !12696
  %i.ao = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30, !noalias !12697 ; 2 uses
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #31, !noalias !12697
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.ao, ptr noundef nonnull align 8 dereferenceable(34) %3, i32 3, ptr nonnull %i.ap) #31, !noalias !12697
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8
  %i.as = or i8 %i.ar, 1
  store i8 %i.as, ptr %i.aq, align 8
  store ptr %i.ao, ptr %0, align 8, !tbaa !346, !alias.scope !12698
  %i.at = load ptr, ptr %6, align 8, !tbaa !349   ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.r
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.av = load i64, ptr %i.r, align 8, !tbaa !270
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  %i.ax = load ptr, ptr %7, align 8, !tbaa !349   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.c
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.az = load i64, ptr %i.c, align 8, !tbaa !270
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  %i.bb = load ptr, ptr %8, align 8, !tbaa !349   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !270
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.v

bb.f:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.0.copyload.i.i.i65 = load i32, ptr %i.bg, align 1
  %i.bh = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i65) ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.0.copyload.i.i.i66 = load i32, ptr %i.bi, align 1
  %i.bj = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i66) ; 5 uses
  %i.bk = zext i32 %i.bj to i64                   ; 3 uses
  %i.bl = urem i32 %i.bj, 12
  %i.bm = udiv i32 %i.bj, 12
  %.not23 = icmp eq i32 %i.bl, 0
  br i1 %.not23, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE0ELb0EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(40) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !12699)
  %i.bn = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.172, i64 noundef 8) #31, !noalias !12699 ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr %i.bo, ptr %14, align 8, !tbaa !268, !alias.scope !12699
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !349 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 5 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

bb.h:                                             ; preds = %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !269 ; 3 uses
  %i.bu = icmp ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bu)
  %i.bv = add nuw nsw i64 %i.bt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bo, ptr noundef nonnull align 8 dereferenceable(1) %i.bq, i64 %i.bv, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.g
  store ptr %i.bp, ptr %14, align 8, !tbaa !349, !alias.scope !12699
  %i.bw = load i64, ptr %i.bq, align 8, !tbaa !270
  store i64 %i.bw, ptr %i.bo, align 8, !tbaa !270, !alias.scope !12699
  %.phi.trans.insert.i68 = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.pre.i69 = load i64, ptr %.phi.trans.insert.i68, align 8, !tbaa !269
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  %i.bx = phi i64 [ %i.bt, %bb.h ], [ %.pre.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.bx, ptr %i.bz, align 8, !tbaa !269, !alias.scope !12699
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !349
  store i64 0, ptr %i.by, align 8, !tbaa !269
  store i8 0, ptr %i.bq, align 8, !tbaa !270
  call void @llvm.experimental.noalias.scope.decl(metadata !12700)
  %i.ca = add i64 %i.bx, -4611686018427387879
  %i.cb = icmp ult i64 %i.ca, 25
  br i1 %i.cb, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71

bb.i:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33, !noalias !12700
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70
  %i.cc = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.175, i64 noundef 25) #31, !noalias !12700 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr %i.cd, ptr %13, align 8, !tbaa !268, !alias.scope !12700
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !349 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 5 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !269 ; 3 uses
  %i.cj = icmp ult i64 %i.ci, 16
  call void @llvm.assume(i1 %i.cj)
  %i.ck = add nuw nsw i64 %i.ci, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cd, ptr noundef nonnull align 8 dereferenceable(1) %i.cf, i64 %i.ck, i1 false)
  br label %_ZN4llvm5ErrorD2Ev.exit137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71
  store ptr %i.ce, ptr %13, align 8, !tbaa !349, !alias.scope !12700
  %i.cl = load i64, ptr %i.cf, align 8, !tbaa !270
  store i64 %i.cl, ptr %i.cd, align 8, !tbaa !270, !alias.scope !12700
  %.phi.trans.insert.i73 = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.pre.i74 = load i64, ptr %.phi.trans.insert.i73, align 8, !tbaa !269
  br label %_ZN4llvm5ErrorD2Ev.exit137

_ZN4llvm5ErrorD2Ev.exit137:                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %bb.j
  %i.cm = phi i64 [ %i.ci, %bb.j ], [ %.pre.i74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.cm, ptr %i.co, align 8, !tbaa !269, !alias.scope !12700
  store ptr %i.cf, ptr %i.cc, align 8, !tbaa !349
  store i64 0, ptr %i.cn, align 8, !tbaa !269
  store i8 0, ptr %i.cf, align 8, !tbaa !270
  %i.cp = inttoptr i64 %i.bk to ptr
  store ptr %13, ptr %12, align 8, !alias.scope !12701
  %i.cq = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.cp, ptr %i.cq, align 8, !alias.scope !12701
  %i.cr = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 4, ptr %i.cr, align 8, !tbaa !352, !alias.scope !12701
  %i.cs = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 9, ptr %i.cs, align 1, !tbaa !353, !alias.scope !12701
  store ptr %12, ptr %11, align 8, !alias.scope !12702
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr @.str.176, ptr %i.ct, align 8, !alias.scope !12702
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 2, ptr %i.cu, align 8, !tbaa !352, !alias.scope !12702
  %i.cv = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 3, ptr %i.cv, align 1, !tbaa !353, !alias.scope !12702
  %.0.copyload.i.i.i106 = load i32, ptr %i.a, align 1
  %i.cw = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i106)
  %.sroa.0422.0.insert.ext = zext i32 %i.cw to i64
  %i.cx = inttoptr i64 %.sroa.0422.0.insert.ext to ptr
  store ptr %11, ptr %10, align 8, !alias.scope !12703
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.cx, ptr %i.cy, align 8, !alias.scope !12703
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 2, ptr %i.cz, align 8, !tbaa !352, !alias.scope !12703
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 9, ptr %i.da, align 1, !tbaa !353, !alias.scope !12703
  store ptr %10, ptr %9, align 8, !alias.scope !12704
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @.str.6, ptr %i.db, align 8, !alias.scope !12704
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 2, ptr %i.dc, align 8, !tbaa !352, !alias.scope !12704
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 3, ptr %i.dd, align 1, !tbaa !353, !alias.scope !12704
  %i.de = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30, !noalias !12705 ; 2 uses
  %i.df = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #31, !noalias !12705
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.de, ptr noundef nonnull align 8 dereferenceable(34) %9, i32 3, ptr nonnull %i.df) #31, !noalias !12705
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 8
  %i.di = or i8 %i.dh, 1
  store i8 %i.di, ptr %i.dg, align 8
  store ptr %i.de, ptr %0, align 8, !tbaa !346, !alias.scope !12706
  %i.dj = load ptr, ptr %13, align 8, !tbaa !349  ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.cd
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZN4llvm5ErrorD2Ev.exit137
  %i.dl = load i64, ptr %i.cd, align 8, !tbaa !270
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %_ZN4llvm5ErrorD2Ev.exit137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  %i.dn = load ptr, ptr %14, align 8, !tbaa !349  ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.bo
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %i.dp = load i64, ptr %i.bo, align 8, !tbaa !270
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  %i.dr = load ptr, ptr %15, align 8, !tbaa !349  ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !270
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.v

bb.k:                                             ; preds = %bb.f
  %i.dw = xor i32 %i.bh, -1
  %i.dx = icmp ugt i32 %i.bj, %i.dw
  br i1 %i.dx, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE0ELb0EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(40) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !12707)
  %i.dy = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %22, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.172, i64 noundef 8) #31, !noalias !12707 ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  store ptr %i.dz, ptr %21, align 8, !tbaa !268, !alias.scope !12707
  %i.ea = load ptr, ptr %i.dy, align 8, !tbaa !349 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 5 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

bb.m:                                             ; preds = %bb.l
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !269 ; 3 uses
  %i.ef = icmp ult i64 %i.ee, 16
end_hunk_2
begin_hunk_3_@_ZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb0EEEE29printDynamicRelocationsHelperEvENKUlRNS_13DynRegionInfoEE_clES8_:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !270
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ad = load ptr, ptr %6, align 8, !tbaa !348   ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !250
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) #31, !inline_history !0
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr %3, align 8, !tbaa !1375  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1375 ; 2 uses
  %.not12 = icmp eq ptr %i.ai, %i.ak
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 24
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1376 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1376 ; 2 uses
  %.not1014 = icmp eq ptr %i.aq, %i.as
  br i1 %.not1014, label %.loopexit, label %.lr.ph17

.lr.ph17:                                         ; preds = %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.05.013 = phi ptr [ %i.ai, %.lr.ph ], [ %i.bd, %bb.e ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.05.013, i64 4
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.ay, align 1 ; 2 uses
  %i.az = lshr i32 %.0.copyload.i.i.i.i.i.i, 24
  store i32 %i.az, ptr %7, align 8, !tbaa !1325
  %i.ba = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i) ; 2 uses
  %i.bb = lshr i32 %i.ba, 8
  store i32 %i.bb, ptr %i.al, align 4, !tbaa !1374
  %.0.copyload.i.i.i.i = load i32, ptr %.sroa.05.013, align 1
  %i.bc = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i)
  store i32 %i.bc, ptr %i.am, align 8, !tbaa !1324
  store i32 %i.ba, ptr %i.an, align 4, !tbaa !1336
  store i8 0, ptr %i.ao, align 8, !tbaa !643
  call fastcc void @_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb0EEEE17printDynamicRelocERKNS_10RelocationIS5_EE(ptr noundef nonnull align 8 dereferenceable(1152) %.0.val, ptr noundef nonnull align 8 dereferenceable(32) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.05.013, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bd, %i.ak
  br i1 %.not, label %._crit_edge, label %bb.e

bb.f:                                             ; preds = %.lr.ph17, %bb.f
  %.sroa.01.015 = phi ptr [ %i.aq, %.lr.ph17 ], [ %i.bl, %bb.f ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.01.015, i64 4
  %.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.be, align 1 ; 2 uses
  %i.bf = lshr i32 %.0.copyload.i.i.i.i.i.i.i, 24
  store i32 %i.bf, ptr %8, align 8, !tbaa !1325
  %i.bg = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i.i) ; 2 uses
  %i.bh = lshr i32 %i.bg, 8
  store i32 %i.bh, ptr %i.at, align 4, !tbaa !1374
  %.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.01.015, align 1
  %i.bi = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i)
  store i32 %i.bi, ptr %i.au, align 8, !tbaa !1324
  store i32 %i.bg, ptr %i.av, align 4, !tbaa !1336
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.01.015, i64 8
  %.0.copyload.i.i.i.i3.i = load i32, ptr %i.bj, align 1
  store i8 1, ptr %i.aw, align 8, !tbaa !643
  %i.bk = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i3.i)
  %.sink.i.i = sext i32 %i.bk to i64
  store i64 %.sink.i.i, ptr %i.ax, align 8, !tbaa !340
  call fastcc void @_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb0EEEE17printDynamicRelocERKNS_10RelocationIS5_EE(ptr noundef nonnull align 8 dereferenceable(1152) %.0.val, ptr noundef nonnull align 8 dereferenceable(32) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.01.015, i64 12 ; 2 uses
  %.not10 = icmp eq ptr %i.bl, %i.as
  br i1 %.not10, label %.loopexit, label %bb.f

.loopexit:                                        ; preds = %bb.f, %._crit_edge, %_ZN4llvm5ErrorD2Ev.exit
  %i.bm = load i8, ptr %i.r, align 8
  %i.bn = trunc i8 %i.bm to i1
  br i1 %i.bn, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1252 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE0ELb0EEELb1EEESaIS6_EED2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1253
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #32
  br label %_ZNSt6vectorIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE0ELb0EEELb1EEESaIS6_EED2Ev.exit.i.i

_ZNSt6vectorIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE0ELb0EEELb1EEESaIS6_EED2Ev.exit.i.i: ; preds = %bb.h, %bb.g
  %i.bv = load ptr, ptr %3, align 8, !tbaa !1256  ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i1.i.i, label %_ZN4llvm8ExpectedISt4pairISt6vectorINS_6object12Elf_Rel_ImplINS3_7ELFTypeILNS_10endiannessE0ELb0EEELb0EEESaIS8_EES2_INS4_IS7_Lb1EEESaISB_EEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE0ELb0EEELb1EEESaIS6_EED2Ev.exit.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1257
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.ca) #32
  br label %_ZN4llvm8ExpectedISt4pairISt6vectorINS_6object12Elf_Rel_ImplINS3_7ELFTypeILNS_10endiannessE0ELb0EEELb0EEESaIS8_EES2_INS4_IS7_Lb1EEESaISB_EEEED2Ev.exit

bb.j:                                             ; preds = %.loopexit
  %i.cb = load ptr, ptr %3, align 8, !tbaa !346   ; 3 uses
  %.not.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i, label %_ZN4llvm8ExpectedISt4pairISt6vectorINS_6object12Elf_Rel_ImplINS3_7ELFTypeILNS_10endiannessE0ELb0EEELb0EEESaIS8_EES2_INS4_IS7_Lb1EEESaISB_EEEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.j
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !250
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %i.cb) #31, !inline_history !148
  br label %_ZN4llvm8ExpectedISt4pairISt6vectorINS_6object12Elf_Rel_ImplINS3_7ELFTypeILNS_10endiannessE0ELb0EEELb0EEESaIS8_EES2_INS4_IS7_Lb1EEESaISB_EEEED2Ev.exit

_ZN4llvm8ExpectedISt4pairISt6vectorINS_6object12Elf_Rel_ImplINS3_7ELFTypeILNS_10endiannessE0ELb0EEELb0EEESaIS8_EES2_INS4_IS7_Lb1EEESaISB_EEEED2Ev.exit: ; preds = %_ZNSt6vectorIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE0ELb0EEELb1EEESaIS6_EED2Ev.exit.i.i, %bb.i, %bb.j, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvm8ExpectedISt4pairISt6vectorINS_6object12Elf_Rel_ImplINS3_7ELFTypeILNS_10endiannessE0ELb0EEELb0EEESaIS8_EES2_INS4_IS7_Lb1EEESaISB_EEEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i64 } @_ZNK12_GLOBAL__N_113DynRegionInfo13getAsArrayRefIN4llvm6object12Elf_Rel_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEELb1EEEEENS2_8ArrayRefIT_EEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 4 uses
  %2 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 4 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !356    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !266
  call void @_ZNK4llvm6object6Binary18getMemoryBufferRefEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryBufferRef") align 8 %1, ptr noundef nonnull align 8 dereferenceable(48) %i.c) #31
  %i.d = load ptr, ptr %1, align 8, !tbaa !271
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !266
  call void @_ZNK4llvm6object6Binary18getMemoryBufferRefEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryBufferRef") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %i.h) #31
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !272  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !763
  %.fr = freeze i64 %i.l                          ; 5 uses
  %i.m = sub i64 %i.j, %i.g
  %i.n = icmp ugt i64 %.fr, %i.m
  br i1 %i.n, label %_ZN4llvmplERKNS_5TwineES2_.exit109, label %bb.c

_ZN4llvmplERKNS_5TwineES2_.exit109:               ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !267
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.q = inttoptr i64 %i.g to ptr
  store ptr @.str.37, ptr %9, align 8, !alias.scope !13231
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !13231
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 3, ptr %i.s, align 8, !tbaa !352, !alias.scope !13231
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 15, ptr %i.t, align 1, !tbaa !353, !alias.scope !13231
  store ptr %9, ptr %8, align 8, !alias.scope !13232
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @.str.38, ptr %i.u, align 8, !alias.scope !13232
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 2, ptr %i.v, align 8, !tbaa !352, !alias.scope !13232
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 3, ptr %i.w, align 1, !tbaa !353, !alias.scope !13232
  %i.x = inttoptr i64 %.fr to ptr
  store ptr %8, ptr %7, align 8, !alias.scope !13233
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.x, ptr %i.y, align 8, !alias.scope !13233
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 2, ptr %i.z, align 8, !tbaa !352, !alias.scope !13233
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 15, ptr %i.aa, align 1, !tbaa !353, !alias.scope !13233
  store ptr %7, ptr %6, align 8, !alias.scope !13234
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.39, ptr %i.ab, align 8, !alias.scope !13234
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 2, ptr %i.ac, align 8, !tbaa !352, !alias.scope !13234
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 3, ptr %i.ad, align 1, !tbaa !353, !alias.scope !13234
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !340
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.03.0.copyload = load ptr, ptr %i.ae, align 8, !tbaa !355
  store ptr %6, ptr %5, align 8, !alias.scope !13235
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.sroa.03.0.copyload, ptr %i.af, align 8, !alias.scope !13235
  %.sroa.2.0..sroa_idx.i.i.i78 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %.sroa.24.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i.i78, align 8, !tbaa !270, !alias.scope !13235
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 2, ptr %i.ag, align 8, !tbaa !352, !alias.scope !13235
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 5, ptr %i.ah, align 1, !tbaa !353, !alias.scope !13235
  store ptr %5, ptr %4, align 8, !alias.scope !13236
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.40, ptr %i.ai, align 8, !alias.scope !13236
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.aj, align 8, !tbaa !352, !alias.scope !13236
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 3, ptr %i.ak, align 1, !tbaa !353, !alias.scope !13236
  %i.al = inttoptr i64 %i.j to ptr
  store ptr %4, ptr %3, align 8, !alias.scope !13237
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !13237
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 2, ptr %i.an, align 8, !tbaa !352, !alias.scope !13237
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 15, ptr %i.ao, align 1, !tbaa !353, !alias.scope !13237
  call void @_ZNK4llvm9ObjDumper19reportUniqueWarningERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(34) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !810
  %i.ar = icmp eq i64 %i.aq, 12
  %i.as = urem i64 %.fr, 12
  %i.at = icmp eq i64 %i.as, 0
  %or.cond = and i1 %i.at, %i.ar
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.au = sdiv exact i64 %.fr, 12
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.av, ptr %10, align 8, !tbaa !268
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i64 0, ptr %i.aw, align 8, !tbaa !269
  store i8 0, ptr %i.av, align 8, !tbaa !270
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !269 ; 4 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_ZN4llvmplERKNS_5TwineES2_.exit154, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !13238)
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !349, !noalias !13238
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.bc, ptr %11, align 8, !tbaa !268, !alias.scope !13239
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i64 0, ptr %i.bd, align 8, !tbaa !269, !alias.scope !13239
  store i8 0, ptr %i.bc, align 8, !tbaa !270, !alias.scope !13239
  %i.be = add i64 %i.ay, 5
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.be) #31
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !269, !alias.scope !13239
  %i.bg = sub i64 4611686018427387903, %i.bf
  %i.bh = icmp ult i64 %i.bg, %i.ay
  br i1 %i.bh, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.f
  %i.bi = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.bb, i64 noundef %i.ay) #31 ; 0 uses
  %i.bj = load i64, ptr %i.bd, align 8, !tbaa !269, !alias.scope !13239
  %i.bk = add i64 %i.bj, -4611686018427387899
  %i.bl = icmp ult i64 %i.bk, 5
  br i1 %i.bl, label %bb.h, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.41, i64 noundef 5) #31 ; 0 uses
  %i.bn = load i64, ptr %i.bd, align 8, !tbaa !269 ; 2 uses
  %i.bo = load i64, ptr %i.aw, align 8, !tbaa !269
  %i.bp = sub i64 4611686018427387903, %i.bo
  %i.bq = icmp ult i64 %i.bp, %i.bn
  br i1 %i.bq, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.i:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.br = load ptr, ptr %11, align 8, !tbaa !349
  %i.bs = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.br, i64 noundef %i.bn) #31 ; 0 uses
  %i.bt = load ptr, ptr %11, align 8, !tbaa !349  ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.bc
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.bv = load i64, ptr %i.bc, align 8, !tbaa !270
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  %.pre = load i64, ptr %i.k, align 8, !tbaa !763
  br label %_ZN4llvmplERKNS_5TwineES2_.exit154

_ZN4llvmplERKNS_5TwineES2_.exit154:               ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bx = phi i64 [ %.fr, %bb.e ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.01.0.copyload = load ptr, ptr %i.by, align 8, !tbaa !355
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !340
  %i.bz = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i8 3, ptr %i.bz, align 8, !tbaa !352, !alias.scope !13240
  %i.ca = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 5, ptr %i.ca, align 1, !tbaa !353, !alias.scope !13240
  store ptr @.str.42, ptr %16, align 8, !tbaa !270, !alias.scope !13240
  %i.cb = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %.sroa.01.0.copyload, ptr %i.cb, align 8, !tbaa !270, !alias.scope !13240
  %i.cc = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i64 %.sroa.22.0.copyload, ptr %i.cc, align 8, !tbaa !270, !alias.scope !13240
  store ptr %16, ptr %15, align 8, !alias.scope !13241
  %i.cd = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr @.str.43, ptr %i.cd, align 8, !alias.scope !13241
  %i.ce = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 2, ptr %i.ce, align 8, !tbaa !352, !alias.scope !13241
  %i.cf = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 3, ptr %i.cf, align 1, !tbaa !353, !alias.scope !13241
  %i.cg = inttoptr i64 %i.bx to ptr
  store ptr %15, ptr %14, align 8, !alias.scope !13242
  %i.ch = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.cg, ptr %i.ch, align 8, !alias.scope !13242
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 2, ptr %i.ci, align 8, !tbaa !352, !alias.scope !13242
  %i.cj = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 15, ptr %i.cj, align 1, !tbaa !353, !alias.scope !13242
  store ptr %14, ptr %13, align 8, !alias.scope !13243
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr @.str.6, ptr %i.ck, align 8, !alias.scope !13243
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i8 2, ptr %i.cl, align 8, !tbaa !352, !alias.scope !13243
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 3, ptr %i.cm, align 1, !tbaa !353, !alias.scope !13243
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(34) %13) #31
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !269 ; 2 uses
  %i.cp = load i64, ptr %i.aw, align 8, !tbaa !269
  %i.cq = sub i64 4611686018427387903, %i.cp
  %i.cr = icmp ult i64 %i.cq, %i.co
  br i1 %i.cr, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit155

bb.j:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit154
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit155: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit154
  %i.cs = load ptr, ptr %12, align 8, !tbaa !349
  %i.ct = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.cs, i64 noundef %i.co) #31 ; 0 uses
  %i.cu = load ptr, ptr %12, align 8, !tbaa !349  ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit155
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !270
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !272 ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.l, label %_ZN4llvmplERKNS_5TwineES2_.exit203

_ZN4llvmplERKNS_5TwineES2_.exit203:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #31
  %.sroa.0.0.copyload = load ptr, ptr %i.dc, align 8, !tbaa !355
  %i.dd = getelementptr inbounds nuw i8, ptr %21, i64 32
  store i8 3, ptr %i.dd, align 8, !tbaa !352, !alias.scope !13244
  %i.de = getelementptr inbounds nuw i8, ptr %21, i64 33
  store i8 5, ptr %i.de, align 1, !tbaa !353, !alias.scope !13244
  store ptr @.str.44, ptr %21, align 8, !tbaa !270, !alias.scope !13244
  %i.df = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %.sroa.0.0.copyload, ptr %i.df, align 8, !tbaa !270, !alias.scope !13244
  %i.dg = getelementptr inbounds nuw i8, ptr %21, i64 24
  store i64 %i.da, ptr %i.dg, align 8, !tbaa !270, !alias.scope !13244
  store ptr %21, ptr %20, align 8, !alias.scope !13245
  %i.dh = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr @.str.43, ptr %i.dh, align 8, !alias.scope !13245
  %i.di = getelementptr inbounds nuw i8, ptr %20, i64 32
  store i8 2, ptr %i.di, align 8, !tbaa !352, !alias.scope !13245
  %i.dj = getelementptr inbounds nuw i8, ptr %20, i64 33
  store i8 3, ptr %i.dj, align 1, !tbaa !353, !alias.scope !13245
  %i.dk = load i64, ptr %i.ap, align 8, !tbaa !810
  %i.dl = inttoptr i64 %i.dk to ptr
  store ptr %20, ptr %19, align 8, !alias.scope !13246
  %i.dm = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %i.dl, ptr %i.dm, align 8, !alias.scope !13246
  %i.dn = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i8 2, ptr %i.dn, align 8, !tbaa !352, !alias.scope !13246
  %i.do = getelementptr inbounds nuw i8, ptr %19, i64 33
  store i8 15, ptr %i.do, align 1, !tbaa !353, !alias.scope !13246
  store ptr %19, ptr %18, align 8, !alias.scope !13247
  %i.dp = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr @.str.6, ptr %i.dp, align 8, !alias.scope !13247
  %i.dq = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i8 2, ptr %i.dq, align 8, !tbaa !352, !alias.scope !13247
  %i.dr = getelementptr inbounds nuw i8, ptr %18, i64 33
  store i8 3, ptr %i.dr, align 1, !tbaa !353, !alias.scope !13247
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(34) %18) #31
  %i.ds = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !269 ; 2 uses
  %i.du = load i64, ptr %i.aw, align 8, !tbaa !269
  %i.dv = sub i64 4611686018427387903, %i.du
  %i.dw = icmp ult i64 %i.dv, %i.dt
  br i1 %i.dw, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit204

bb.k:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit203
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit204: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit203
  %i.dx = load ptr, ptr %17, align 8, !tbaa !349
  %i.dy = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.dx, i64 noundef %i.dt) #31 ; 0 uses
  %i.dz = load ptr, ptr %17, align 8, !tbaa !349  ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit204
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !270
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit204, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !267
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  %i.eg = getelementptr inbounds nuw i8, ptr %22, i64 32
  store i8 4, ptr %i.eg, align 8, !tbaa !352
  %i.eh = getelementptr inbounds nuw i8, ptr %22, i64 33
  store i8 1, ptr %i.eh, align 1, !tbaa !353
  store ptr %10, ptr %22, align 8, !tbaa !270
  call void @_ZNK4llvm9ObjDumper19reportUniqueWarningERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(72) %i.ef, ptr noundef nonnull align 8 dereferenceable(34) %22) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  %i.ei = load ptr, ptr %10, align 8, !tbaa !349  ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.av
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208: ; preds = %bb.l
  %i.ek = load i64, ptr %i.av, align 8, !tbaa !270
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZN4llvmplERKNS_5TwineES2_.exit109, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210
  %.sroa.5.0 = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210 ], [ 0, %_ZN4llvmplERKNS_5TwineES2_.exit109 ], [ %i.au, %bb.d ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb0EEEE17printDynamicRelocERKNS_10RelocationIS5_EE(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 7 uses
end_hunk_3
begin_hunk_4_@_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE1ELb1EEEE25getSectionContentsAsArrayINS0_12Elf_Sym_ImplIS4_EEEENS_8ExpectedINS_8ArrayRefIT_EEEERKNS0_13Elf_Shdr_ImplIS4_EE
define linkonce_odr void @_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE1ELb1EEEE25getSectionContentsAsArrayINS0_12Elf_Sym_ImplIS4_EEEENS_8ExpectedINS_8ArrayRefIT_EEEERKNS0_13Elf_Shdr_ImplIS4_EE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected.1976") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(64) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %24 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %25 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %26 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %27 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %28 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %.0.copyload.i.i.i = load i64, ptr %i.a, align 1
  %.not = icmp eq i64 %.0.copyload.i.i.i, 24
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE1ELb1EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(64) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !18774)
  %i.b = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.172, i64 noundef 8) #31, !noalias !18774 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.c, ptr %7, align 8, !tbaa !268, !alias.scope !18774
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !349  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !269  ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  store ptr %i.d, ptr %7, align 8, !tbaa !349, !alias.scope !18774
  %i.k = load i64, ptr %i.e, align 8, !tbaa !270
  store i64 %i.k, ptr %i.c, align 8, !tbaa !270, !alias.scope !18774
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !269
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.l = phi i64 [ %i.h, %bb.c ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !269, !alias.scope !18774
  store ptr %i.e, ptr %i.b, align 8, !tbaa !349
  store i64 0, ptr %i.m, align 8, !tbaa !269
  store i8 0, ptr %i.e, align 8, !tbaa !270
  call void @llvm.experimental.noalias.scope.decl(metadata !18775)
  %i.o = add i64 %i.l, -4611686018427387870
  %i.p = icmp ult i64 %i.o, 34
  br i1 %i.p, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33, !noalias !18775
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.q = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.173, i64 noundef 34) #31, !noalias !18775 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.r, ptr %6, align 8, !tbaa !268, !alias.scope !18775
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !349  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !269  ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.s, ptr %6, align 8, !tbaa !349, !alias.scope !18775
  %i.z = load i64, ptr %i.t, align 8, !tbaa !270
  store i64 %i.z, ptr %i.r, align 8, !tbaa !270, !alias.scope !18775
  %.phi.trans.insert.i25 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i26 = load i64, ptr %.phi.trans.insert.i25, align 8, !tbaa !269
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.e
  %i.aa = phi i64 [ %i.w, %bb.e ], [ %.pre.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !269, !alias.scope !18775
  store ptr %i.t, ptr %i.q, align 8, !tbaa !349
  store i64 0, ptr %i.ab, align 8, !tbaa !269
  store i8 0, ptr %i.t, align 8, !tbaa !270
  store ptr %6, ptr %5, align 8, !alias.scope !18776
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr inttoptr (i64 24 to ptr), ptr %i.ad, align 8, !alias.scope !18776
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 4, ptr %i.ae, align 8, !tbaa !352, !alias.scope !18776
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 11, ptr %i.af, align 1, !tbaa !353, !alias.scope !18776
  store ptr %5, ptr %4, align 8, !alias.scope !18777
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.174, ptr %i.ag, align 8, !alias.scope !18777
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.ah, align 8, !tbaa !352, !alias.scope !18777
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 3, ptr %i.ai, align 1, !tbaa !353, !alias.scope !18777
  %.0.copyload.i.i.i42 = load i64, ptr %i.a, align 1
  %i.aj = inttoptr i64 %.0.copyload.i.i.i42 to ptr
  store ptr %4, ptr %3, align 8, !alias.scope !18778
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.aj, ptr %i.ak, align 8, !alias.scope !18778
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 2, ptr %i.al, align 8, !tbaa !352, !alias.scope !18778
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 11, ptr %i.am, align 1, !tbaa !353, !alias.scope !18778
  %i.an = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30, !noalias !18779 ; 2 uses
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #31, !noalias !18779
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.an, ptr noundef nonnull align 8 dereferenceable(34) %3, i32 3, ptr nonnull %i.ao) #31, !noalias !18779
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8
  %i.ar = or i8 %i.aq, 1
  store i8 %i.ar, ptr %i.ap, align 8
  store ptr %i.an, ptr %0, align 8, !tbaa !346, !alias.scope !18780
  %i.as = load ptr, ptr %6, align 8, !tbaa !349   ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.r
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.au = load i64, ptr %i.r, align 8, !tbaa !270
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  %i.aw = load ptr, ptr %7, align 8, !tbaa !349   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.c
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ay = load i64, ptr %i.c, align 8, !tbaa !270
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  %i.ba = load ptr, ptr %8, align 8, !tbaa !349   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !270
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.v

bb.f:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.0.copyload.i.i.i65 = load i64, ptr %i.bf, align 1 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.0.copyload.i.i.i66 = load i64, ptr %i.bg, align 1 ; 7 uses
  %i.bh = urem i64 %.0.copyload.i.i.i66, 24
  %i.bi = udiv i64 %.0.copyload.i.i.i66, 24
  %.not23 = icmp eq i64 %i.bh, 0
  br i1 %.not23, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE1ELb1EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(64) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !18781)
  %i.bj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.172, i64 noundef 8) #31, !noalias !18781 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr %i.bk, ptr %14, align 8, !tbaa !268, !alias.scope !18781
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !349 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 5 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

bb.h:                                             ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !269 ; 3 uses
  %i.bq = icmp ult i64 %i.bp, 16
  call void @llvm.assume(i1 %i.bq)
  %i.br = add nuw nsw i64 %i.bp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bk, ptr noundef nonnull align 8 dereferenceable(1) %i.bm, i64 %i.br, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.g
  store ptr %i.bl, ptr %14, align 8, !tbaa !349, !alias.scope !18781
  %i.bs = load i64, ptr %i.bm, align 8, !tbaa !270
  store i64 %i.bs, ptr %i.bk, align 8, !tbaa !270, !alias.scope !18781
  %.phi.trans.insert.i68 = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.pre.i69 = load i64, ptr %.phi.trans.insert.i68, align 8, !tbaa !269
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  %i.bt = phi i64 [ %i.bp, %bb.h ], [ %.pre.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.bt, ptr %i.bv, align 8, !tbaa !269, !alias.scope !18781
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !349
  store i64 0, ptr %i.bu, align 8, !tbaa !269
  store i8 0, ptr %i.bm, align 8, !tbaa !270
  call void @llvm.experimental.noalias.scope.decl(metadata !18782)
  %i.bw = add i64 %i.bt, -4611686018427387879
  %i.bx = icmp ult i64 %i.bw, 25
  br i1 %i.bx, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71

bb.i:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33, !noalias !18782
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70
  %i.by = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.175, i64 noundef 25) #31, !noalias !18782 ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr %i.bz, ptr %13, align 8, !tbaa !268, !alias.scope !18782
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !349 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 5 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !269 ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 16
  call void @llvm.assume(i1 %i.cf)
  %i.cg = add nuw nsw i64 %i.ce, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bz, ptr noundef nonnull align 8 dereferenceable(1) %i.cb, i64 %i.cg, i1 false)
  br label %_ZN4llvm5ErrorD2Ev.exit137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71
  store ptr %i.ca, ptr %13, align 8, !tbaa !349, !alias.scope !18782
  %i.ch = load i64, ptr %i.cb, align 8, !tbaa !270
  store i64 %i.ch, ptr %i.bz, align 8, !tbaa !270, !alias.scope !18782
  %.phi.trans.insert.i73 = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.pre.i74 = load i64, ptr %.phi.trans.insert.i73, align 8, !tbaa !269
  br label %_ZN4llvm5ErrorD2Ev.exit137

_ZN4llvm5ErrorD2Ev.exit137:                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %bb.j
  %i.ci = phi i64 [ %i.ce, %bb.j ], [ %.pre.i74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.ci, ptr %i.ck, align 8, !tbaa !269, !alias.scope !18782
  store ptr %i.cb, ptr %i.by, align 8, !tbaa !349
  store i64 0, ptr %i.cj, align 8, !tbaa !269
  store i8 0, ptr %i.cb, align 8, !tbaa !270
  %.sroa.04.0.copyload.i.i82.cast = inttoptr i64 %.0.copyload.i.i.i66 to ptr
  store ptr %13, ptr %12, align 8, !alias.scope !18783
  %i.cl = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %.sroa.04.0.copyload.i.i82.cast, ptr %i.cl, align 8, !alias.scope !18783
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 4, ptr %i.cm, align 8, !tbaa !352, !alias.scope !18783
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 11, ptr %i.cn, align 1, !tbaa !353, !alias.scope !18783
  store ptr %12, ptr %11, align 8, !alias.scope !18784
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr @.str.176, ptr %i.co, align 8, !alias.scope !18784
  %i.cp = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 2, ptr %i.cp, align 8, !tbaa !352, !alias.scope !18784
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 3, ptr %i.cq, align 1, !tbaa !353, !alias.scope !18784
  %.0.copyload.i.i.i106 = load i64, ptr %i.a, align 1
  %i.cr = inttoptr i64 %.0.copyload.i.i.i106 to ptr
  store ptr %11, ptr %10, align 8, !alias.scope !18785
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.cr, ptr %i.cs, align 8, !alias.scope !18785
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 2, ptr %i.ct, align 8, !tbaa !352, !alias.scope !18785
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 11, ptr %i.cu, align 1, !tbaa !353, !alias.scope !18785
  store ptr %10, ptr %9, align 8, !alias.scope !18786
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @.str.6, ptr %i.cv, align 8, !alias.scope !18786
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 2, ptr %i.cw, align 8, !tbaa !352, !alias.scope !18786
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 3, ptr %i.cx, align 1, !tbaa !353, !alias.scope !18786
  %i.cy = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30, !noalias !18787 ; 2 uses
  %i.cz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #31, !noalias !18787
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.cy, ptr noundef nonnull align 8 dereferenceable(34) %9, i32 3, ptr nonnull %i.cz) #31, !noalias !18787
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.db = load i8, ptr %i.da, align 8
  %i.dc = or i8 %i.db, 1
  store i8 %i.dc, ptr %i.da, align 8
  store ptr %i.cy, ptr %0, align 8, !tbaa !346, !alias.scope !18788
  %i.dd = load ptr, ptr %13, align 8, !tbaa !349  ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.bz
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZN4llvm5ErrorD2Ev.exit137
  %i.df = load i64, ptr %i.bz, align 8, !tbaa !270
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %_ZN4llvm5ErrorD2Ev.exit137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  %i.dh = load ptr, ptr %14, align 8, !tbaa !349  ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.bk
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %i.dj = load i64, ptr %i.bk, align 8, !tbaa !270
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  %i.dl = load ptr, ptr %15, align 8, !tbaa !349  ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !270
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.v

bb.k:                                             ; preds = %bb.f
  %i.dq = xor i64 %.0.copyload.i.i.i65, -1
  %i.dr = icmp ugt i64 %.0.copyload.i.i.i66, %i.dq
  br i1 %i.dr, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE1ELb1EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(64) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !18789)
  %i.ds = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %22, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.172, i64 noundef 8) #31, !noalias !18789 ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  store ptr %i.dt, ptr %21, align 8, !tbaa !268, !alias.scope !18789
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !349 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 5 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

bb.m:                                             ; preds = %bb.l
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !269 ; 3 uses
  %i.dz = icmp ult i64 %i.dy, 16
  call void @llvm.assume(i1 %i.dz)
  %i.ea = add nuw nsw i64 %i.dy, 1
end_hunk_4
begin_hunk_5_@_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE1ELb1EEEE25getSectionContentsAsArrayINS0_12Elf_Rel_ImplIS4_Lb1EEEEENS_8ExpectedINS_8ArrayRefIT_EEEERKNS0_13Elf_Shdr_ImplIS4_EE
define linkonce_odr void @_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE1ELb1EEEE25getSectionContentsAsArrayINS0_12Elf_Rel_ImplIS4_Lb1EEEEENS_8ExpectedINS_8ArrayRefIT_EEEERKNS0_13Elf_Shdr_ImplIS4_EE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected.2000") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(64) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %24 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %25 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %26 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %27 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %28 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %.0.copyload.i.i.i = load i64, ptr %i.a, align 1
  %.not = icmp eq i64 %.0.copyload.i.i.i, 24
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE1ELb1EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(64) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !19448)
  %i.b = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.172, i64 noundef 8) #31, !noalias !19448 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.c, ptr %7, align 8, !tbaa !268, !alias.scope !19448
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !349  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !269  ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  store ptr %i.d, ptr %7, align 8, !tbaa !349, !alias.scope !19448
  %i.k = load i64, ptr %i.e, align 8, !tbaa !270
  store i64 %i.k, ptr %i.c, align 8, !tbaa !270, !alias.scope !19448
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !269
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.l = phi i64 [ %i.h, %bb.c ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !269, !alias.scope !19448
  store ptr %i.e, ptr %i.b, align 8, !tbaa !349
  store i64 0, ptr %i.m, align 8, !tbaa !269
  store i8 0, ptr %i.e, align 8, !tbaa !270
  call void @llvm.experimental.noalias.scope.decl(metadata !19449)
  %i.o = add i64 %i.l, -4611686018427387870
  %i.p = icmp ult i64 %i.o, 34
  br i1 %i.p, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33, !noalias !19449
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.q = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.173, i64 noundef 34) #31, !noalias !19449 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.r, ptr %6, align 8, !tbaa !268, !alias.scope !19449
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !349  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !269  ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.s, ptr %6, align 8, !tbaa !349, !alias.scope !19449
  %i.z = load i64, ptr %i.t, align 8, !tbaa !270
  store i64 %i.z, ptr %i.r, align 8, !tbaa !270, !alias.scope !19449
  %.phi.trans.insert.i25 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i26 = load i64, ptr %.phi.trans.insert.i25, align 8, !tbaa !269
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.e
  %i.aa = phi i64 [ %i.w, %bb.e ], [ %.pre.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !269, !alias.scope !19449
  store ptr %i.t, ptr %i.q, align 8, !tbaa !349
  store i64 0, ptr %i.ab, align 8, !tbaa !269
  store i8 0, ptr %i.t, align 8, !tbaa !270
  store ptr %6, ptr %5, align 8, !alias.scope !19450
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr inttoptr (i64 24 to ptr), ptr %i.ad, align 8, !alias.scope !19450
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 4, ptr %i.ae, align 8, !tbaa !352, !alias.scope !19450
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 11, ptr %i.af, align 1, !tbaa !353, !alias.scope !19450
  store ptr %5, ptr %4, align 8, !alias.scope !19451
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.174, ptr %i.ag, align 8, !alias.scope !19451
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.ah, align 8, !tbaa !352, !alias.scope !19451
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 3, ptr %i.ai, align 1, !tbaa !353, !alias.scope !19451
  %.0.copyload.i.i.i42 = load i64, ptr %i.a, align 1
  %i.aj = inttoptr i64 %.0.copyload.i.i.i42 to ptr
  store ptr %4, ptr %3, align 8, !alias.scope !19452
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.aj, ptr %i.ak, align 8, !alias.scope !19452
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 2, ptr %i.al, align 8, !tbaa !352, !alias.scope !19452
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 11, ptr %i.am, align 1, !tbaa !353, !alias.scope !19452
  %i.an = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30, !noalias !19453 ; 2 uses
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #31, !noalias !19453
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.an, ptr noundef nonnull align 8 dereferenceable(34) %3, i32 3, ptr nonnull %i.ao) #31, !noalias !19453
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8
  %i.ar = or i8 %i.aq, 1
  store i8 %i.ar, ptr %i.ap, align 8
  store ptr %i.an, ptr %0, align 8, !tbaa !346, !alias.scope !19454
  %i.as = load ptr, ptr %6, align 8, !tbaa !349   ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.r
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.au = load i64, ptr %i.r, align 8, !tbaa !270
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  %i.aw = load ptr, ptr %7, align 8, !tbaa !349   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.c
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ay = load i64, ptr %i.c, align 8, !tbaa !270
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  %i.ba = load ptr, ptr %8, align 8, !tbaa !349   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !270
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.v

bb.f:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.0.copyload.i.i.i65 = load i64, ptr %i.bf, align 1 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.0.copyload.i.i.i66 = load i64, ptr %i.bg, align 1 ; 7 uses
  %i.bh = urem i64 %.0.copyload.i.i.i66, 24
  %i.bi = udiv i64 %.0.copyload.i.i.i66, 24
  %.not23 = icmp eq i64 %i.bh, 0
  br i1 %.not23, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE1ELb1EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(64) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !19455)
  %i.bj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.172, i64 noundef 8) #31, !noalias !19455 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr %i.bk, ptr %14, align 8, !tbaa !268, !alias.scope !19455
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !349 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 5 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

bb.h:                                             ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !269 ; 3 uses
  %i.bq = icmp ult i64 %i.bp, 16
  call void @llvm.assume(i1 %i.bq)
  %i.br = add nuw nsw i64 %i.bp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bk, ptr noundef nonnull align 8 dereferenceable(1) %i.bm, i64 %i.br, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.g
  store ptr %i.bl, ptr %14, align 8, !tbaa !349, !alias.scope !19455
  %i.bs = load i64, ptr %i.bm, align 8, !tbaa !270
  store i64 %i.bs, ptr %i.bk, align 8, !tbaa !270, !alias.scope !19455
  %.phi.trans.insert.i68 = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.pre.i69 = load i64, ptr %.phi.trans.insert.i68, align 8, !tbaa !269
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  %i.bt = phi i64 [ %i.bp, %bb.h ], [ %.pre.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.bt, ptr %i.bv, align 8, !tbaa !269, !alias.scope !19455
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !349
  store i64 0, ptr %i.bu, align 8, !tbaa !269
  store i8 0, ptr %i.bm, align 8, !tbaa !270
  call void @llvm.experimental.noalias.scope.decl(metadata !19456)
  %i.bw = add i64 %i.bt, -4611686018427387879
  %i.bx = icmp ult i64 %i.bw, 25
  br i1 %i.bx, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71

bb.i:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33, !noalias !19456
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70
  %i.by = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.175, i64 noundef 25) #31, !noalias !19456 ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr %i.bz, ptr %13, align 8, !tbaa !268, !alias.scope !19456
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !349 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 5 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !269 ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 16
  call void @llvm.assume(i1 %i.cf)
  %i.cg = add nuw nsw i64 %i.ce, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bz, ptr noundef nonnull align 8 dereferenceable(1) %i.cb, i64 %i.cg, i1 false)
  br label %_ZN4llvm5ErrorD2Ev.exit137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71
  store ptr %i.ca, ptr %13, align 8, !tbaa !349, !alias.scope !19456
  %i.ch = load i64, ptr %i.cb, align 8, !tbaa !270
  store i64 %i.ch, ptr %i.bz, align 8, !tbaa !270, !alias.scope !19456
  %.phi.trans.insert.i73 = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.pre.i74 = load i64, ptr %.phi.trans.insert.i73, align 8, !tbaa !269
  br label %_ZN4llvm5ErrorD2Ev.exit137

_ZN4llvm5ErrorD2Ev.exit137:                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %bb.j
  %i.ci = phi i64 [ %i.ce, %bb.j ], [ %.pre.i74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.ci, ptr %i.ck, align 8, !tbaa !269, !alias.scope !19456
  store ptr %i.cb, ptr %i.by, align 8, !tbaa !349
  store i64 0, ptr %i.cj, align 8, !tbaa !269
  store i8 0, ptr %i.cb, align 8, !tbaa !270
  %.sroa.04.0.copyload.i.i82.cast = inttoptr i64 %.0.copyload.i.i.i66 to ptr
  store ptr %13, ptr %12, align 8, !alias.scope !19457
  %i.cl = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %.sroa.04.0.copyload.i.i82.cast, ptr %i.cl, align 8, !alias.scope !19457
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 4, ptr %i.cm, align 8, !tbaa !352, !alias.scope !19457
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 11, ptr %i.cn, align 1, !tbaa !353, !alias.scope !19457
  store ptr %12, ptr %11, align 8, !alias.scope !19458
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr @.str.176, ptr %i.co, align 8, !alias.scope !19458
  %i.cp = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 2, ptr %i.cp, align 8, !tbaa !352, !alias.scope !19458
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 3, ptr %i.cq, align 1, !tbaa !353, !alias.scope !19458
  %.0.copyload.i.i.i106 = load i64, ptr %i.a, align 1
  %i.cr = inttoptr i64 %.0.copyload.i.i.i106 to ptr
  store ptr %11, ptr %10, align 8, !alias.scope !19459
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.cr, ptr %i.cs, align 8, !alias.scope !19459
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 2, ptr %i.ct, align 8, !tbaa !352, !alias.scope !19459
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 11, ptr %i.cu, align 1, !tbaa !353, !alias.scope !19459
  store ptr %10, ptr %9, align 8, !alias.scope !19460
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @.str.6, ptr %i.cv, align 8, !alias.scope !19460
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 2, ptr %i.cw, align 8, !tbaa !352, !alias.scope !19460
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 3, ptr %i.cx, align 1, !tbaa !353, !alias.scope !19460
  %i.cy = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30, !noalias !19461 ; 2 uses
  %i.cz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #31, !noalias !19461
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.cy, ptr noundef nonnull align 8 dereferenceable(34) %9, i32 3, ptr nonnull %i.cz) #31, !noalias !19461
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.db = load i8, ptr %i.da, align 8
  %i.dc = or i8 %i.db, 1
  store i8 %i.dc, ptr %i.da, align 8
  store ptr %i.cy, ptr %0, align 8, !tbaa !346, !alias.scope !19462
  %i.dd = load ptr, ptr %13, align 8, !tbaa !349  ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.bz
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZN4llvm5ErrorD2Ev.exit137
  %i.df = load i64, ptr %i.bz, align 8, !tbaa !270
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %_ZN4llvm5ErrorD2Ev.exit137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  %i.dh = load ptr, ptr %14, align 8, !tbaa !349  ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.bk
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %i.dj = load i64, ptr %i.bk, align 8, !tbaa !270
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  %i.dl = load ptr, ptr %15, align 8, !tbaa !349  ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !270
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.v

bb.k:                                             ; preds = %bb.f
  %i.dq = xor i64 %.0.copyload.i.i.i65, -1
  %i.dr = icmp ugt i64 %.0.copyload.i.i.i66, %i.dq
  br i1 %i.dr, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE1ELb1EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(64) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !19463)
  %i.ds = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %22, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.172, i64 noundef 8) #31, !noalias !19463 ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  store ptr %i.dt, ptr %21, align 8, !tbaa !268, !alias.scope !19463
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !349 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 5 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

bb.m:                                             ; preds = %bb.l
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !269 ; 3 uses
  %i.dz = icmp ult i64 %i.dy, 16
  call void @llvm.assume(i1 %i.dz)
  %i.ea = add nuw nsw i64 %i.dy, 1
end_hunk_5
begin_hunk_6_@_ZNK12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEE18printSymbolsHelperEbb:bb.a
  %i.ap = getelementptr i8, ptr %.2.i.i.i.i.i.i, i64 5
  %.2.val.i.i.i.i.i.i = load i8, ptr %i.ap, align 1, !tbaa !1530
  %i.aq = icmp ugt i8 %.2.val.i.i.i.i.i.i, 3
  br i1 %i.aq, label %_ZN4llvm6any_ofIRNS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEEEEZNK12_GLOBAL__N_19ELFDumperIS6_E18printSymbolsHelperEbbEUlRKS7_E_EEbOT_T0_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i.i.i
  br label %_ZN4llvm6any_ofIRNS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEEEEZNK12_GLOBAL__N_19ELFDumperIS6_E18printSymbolsHelperEbbEUlRKS7_E_EEbOT_T0_.exit

.loopexit.split.loop.exit34.i.i.i.i.i.i:          ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i, i64 24
  br label %_ZN4llvm6any_ofIRNS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEEEEZNK12_GLOBAL__N_19ELFDumperIS6_E18printSymbolsHelperEbbEUlRKS7_E_EEbOT_T0_.exit

.loopexit.split.loop.exit36.i.i.i.i.i.i:          ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i, i64 48
  br label %_ZN4llvm6any_ofIRNS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEEEEZNK12_GLOBAL__N_19ELFDumperIS6_E18printSymbolsHelperEbbEUlRKS7_E_EEbOT_T0_.exit

.loopexit.split.loop.exit38.i.i.i.i.i.i:          ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i, i64 72
  br label %_ZN4llvm6any_ofIRNS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEEEEZNK12_GLOBAL__N_19ELFDumperIS6_E18printSymbolsHelperEbbEUlRKS7_E_EEbOT_T0_.exit

_ZN4llvm6any_ofIRNS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEEEEZNK12_GLOBAL__N_19ELFDumperIS6_E18printSymbolsHelperEbbEUlRKS7_E_EEbOT_T0_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.k, %bb.m, %bb.o, %bb.p, %.loopexit.split.loop.exit34.i.i.i.i.i.i, %.loopexit.split.loop.exit36.i.i.i.i.i.i, %.loopexit.split.loop.exit38.i.i.i.i.i.i
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.m ], [ %i.t, %bb.p ], [ %.2.i.i.i.i.i.i, %bb.o ], [ %.029.lcssa.i.i.i.i.i.i, %bb.k ], [ %i.as, %.loopexit.split.loop.exit36.i.i.i.i.i.i ], [ %i.ar, %.loopexit.split.loop.exit34.i.i.i.i.i.i ], [ %i.at, %.loopexit.split.loop.exit38.i.i.i.i.i.i ], [ %.02943.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.au = icmp ne ptr %i.t, %.028.i.i.i.i.i.i     ; 2 uses
  br i1 %1, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN4llvm6any_ofIRNS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEEEEZNK12_GLOBAL__N_19ELFDumperIS6_E18printSymbolsHelperEbbEUlRKS7_E_EEbOT_T0_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1478
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val = load ptr, ptr %i.ax, align 8, !tbaa !1435 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !271
  %i.ba = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !272
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bb
  br label %.lr.ph

bb.r:                                             ; preds = %_ZN4llvm6any_ofIRNS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEEEEZNK12_GLOBAL__N_19ELFDumperIS6_E18printSymbolsHelperEbbEUlRKS7_E_EEbOT_T0_.exit
  %.not.i = icmp eq ptr %.val46, null
  br i1 %.not.i, label %.lr.ph, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1546, !noalias !19642 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1547, !noalias !19642 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1020
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !1548, !noalias !19642 ; 4 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %.loopexit.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = add i32 %i.bi, -1                       ; 2 uses
  %i.bl = ptrtoint ptr %.val46 to i64
  %i.bm = mul i64 %i.bl, -4658895280553007687     ; 2 uses
  %i.bn = lshr i64 %i.bm, 31
  %i.bo = xor i64 %i.bn, %i.bm
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = and i32 %i.bk, %i.bp                    ; 3 uses
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %i.bs = lshr i64 %i.br, 5
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !396, !noalias !19643
  %i.bv = and i32 %i.bq, 31
  %i.bw = lshr i32 %i.bu, %i.bv
  %i.bx = trunc i32 %i.bw to i1
  br i1 %i.bx, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !507

.lr.ph.i.i.i.i:                                   ; preds = %bb.t, %bb.u
  %i.by = phi i64 [ %i.ce, %bb.u ], [ %i.br, %bb.t ]
  %.017.i.i.i.i = phi i32 [ %i.cd, %bb.u ], [ %i.bq, %bb.t ]
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %i.by ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1430, !noalias !19643
  %i.cb = icmp eq ptr %i.d, %i.ca
  br i1 %i.cb, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4findES9_.exit.loopexit.i, label %bb.u, !prof !425

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cc = add nuw i32 %.017.i.i.i.i, 1
  %i.cd = and i32 %i.cc, %i.bk                    ; 3 uses
  %i.ce = zext i32 %i.cd to i64                   ; 2 uses
  %i.cf = lshr i64 %i.ce, 5
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !396, !noalias !19643
  %i.ci = and i32 %i.cd, 31
  %i.cj = lshr i32 %i.ch, %i.ci
  %i.ck = trunc i32 %i.cj to i1
  br i1 %i.ck, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !508

.loopexit.i.i.i:                                  ; preds = %bb.u, %bb.t, %bb.s
  %i.cl = zext i32 %i.bi to i64                   ; 2 uses
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %i.cl
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4findES9_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4findES9_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i = zext i32 %i.bi to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4findES9_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4findES9_.exit.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4findES9_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4findES9_.exit.loopexit.i ], [ %i.cl, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.bz, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4findES9_.exit.loopexit.i ], [ %i.cm, %.loopexit.i.i.i ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %.pre-phi.i
  %.not12.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.cn
  br i1 %.not12.i, label %.lr.ph, label %bb.v

bb.v:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4findES9_.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %.sroa.08.0.copyload.i = load ptr, ptr %i.co, align 8, !tbaa !361
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 16
  %.sroa.49.0.copyload.i = load i64, ptr %.sroa.49.0..sroa_idx.i, align 8, !tbaa !340
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.q, %bb.r, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4findES9_.exit.i, %bb.v
  %.sroa.826.0 = phi ptr [ %i.bc, %bb.q ], [ null, %bb.r ], [ null, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4findES9_.exit.i ], [ null, %bb.v ]
  %.sroa.6.0 = phi i8 [ 0, %bb.q ], [ 1, %bb.r ], [ 1, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4findES9_.exit.i ], [ 1, %bb.v ]
  %.sroa.5.0 = phi i64 [ undef, %bb.q ], [ 0, %bb.r ], [ 0, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4findES9_.exit.i ], [ %.sroa.49.0.copyload.i, %bb.v ]
  %.sroa.0.0 = phi ptr [ %i.aw, %bb.q ], [ null, %bb.r ], [ null, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4findES9_.exit.i ], [ %.sroa.08.0.copyload.i, %bb.v ]
  %i.cp = load ptr, ptr %0, align 8, !tbaa !250
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 560
  %i.cr = load ptr, ptr %i.cq, align 8
  tail call void %i.cr(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef %i.d, i64 noundef %.0, i1 noundef zeroext %i.au, i1 noundef zeroext %2) #31
  %i.cs = ptrtoint ptr %.sroa.0.039 to i64
  store ptr %.sroa.0.0, ptr %4, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.826.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.sroa.826.0, ptr %.sroa.826.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 %.sroa.5.040, ptr %.sroa.5.0..sroa_idx34, align 8
  %.sroa.837.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 17
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %bb.w
  %.02053 = phi ptr [ %.sroa.0.039, %.lr.ph ], [ %i.da, %bb.w ] ; 3 uses
  %i.ct = ptrtoint ptr %.02053 to i64
  %i.cu = sub i64 %i.ct, %i.cs
  %i.cv = sdiv exact i64 %i.cu, 24
  %i.cw = trunc i64 %i.cv to i32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.033, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.837.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %i.a, i64 7, i1 false)
  %i.cx = load ptr, ptr %0, align 8, !tbaa !250
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 568
  %i.cz = load ptr, ptr %i.cy, align 8
  tail call void %i.cz(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef nonnull align 1 dereferenceable(24) %.02053, i32 noundef %i.cw, ptr noundef nonnull byval(%"struct.llvm::object::DataRegion") align 8 %4, ptr noundef nonnull byval(%"class.std::optional.122") align 8 %5, i1 noundef zeroext %1, i1 noundef zeroext %i.au, i1 noundef zeroext %2) #31
  %i.da = getelementptr inbounds nuw i8, ptr %.02053, i64 24 ; 2 uses
  %.not21 = icmp eq ptr %i.da, %i.t
  br i1 %.not21, label %.thread, label %bb.w

.thread:                                          ; preds = %bb.w, %_ZNSt8optionalIN4llvm9StringRefEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit, %bb.c, %_ZNK12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEE15dynamic_symbolsEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.033)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i64 } @_ZNK12_GLOBAL__N_113DynRegionInfo13getAsArrayRefIN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb1EEEEEEENS2_8ArrayRefIT_EEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 4 uses
  %2 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 4 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !356    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !266
  call void @_ZNK4llvm6object6Binary18getMemoryBufferRefEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryBufferRef") align 8 %1, ptr noundef nonnull align 8 dereferenceable(48) %i.c) #31
  %i.d = load ptr, ptr %1, align 8, !tbaa !271
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !266
  call void @_ZNK4llvm6object6Binary18getMemoryBufferRefEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryBufferRef") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %i.h) #31
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !272  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !763
  %.fr = freeze i64 %i.l                          ; 5 uses
  %i.m = sub i64 %i.j, %i.g
  %i.n = icmp ugt i64 %.fr, %i.m
  br i1 %i.n, label %_ZN4llvmplERKNS_5TwineES2_.exit109, label %bb.c

_ZN4llvmplERKNS_5TwineES2_.exit109:               ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !267
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.q = inttoptr i64 %i.g to ptr
  store ptr @.str.37, ptr %9, align 8, !alias.scope !19704
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !19704
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 3, ptr %i.s, align 8, !tbaa !352, !alias.scope !19704
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 15, ptr %i.t, align 1, !tbaa !353, !alias.scope !19704
  store ptr %9, ptr %8, align 8, !alias.scope !19705
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @.str.38, ptr %i.u, align 8, !alias.scope !19705
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 2, ptr %i.v, align 8, !tbaa !352, !alias.scope !19705
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 3, ptr %i.w, align 1, !tbaa !353, !alias.scope !19705
  %i.x = inttoptr i64 %.fr to ptr
  store ptr %8, ptr %7, align 8, !alias.scope !19706
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.x, ptr %i.y, align 8, !alias.scope !19706
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 2, ptr %i.z, align 8, !tbaa !352, !alias.scope !19706
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 15, ptr %i.aa, align 1, !tbaa !353, !alias.scope !19706
  store ptr %7, ptr %6, align 8, !alias.scope !19707
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.39, ptr %i.ab, align 8, !alias.scope !19707
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 2, ptr %i.ac, align 8, !tbaa !352, !alias.scope !19707
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 3, ptr %i.ad, align 1, !tbaa !353, !alias.scope !19707
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !340
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.03.0.copyload = load ptr, ptr %i.ae, align 8, !tbaa !355
  store ptr %6, ptr %5, align 8, !alias.scope !19708
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.sroa.03.0.copyload, ptr %i.af, align 8, !alias.scope !19708
  %.sroa.2.0..sroa_idx.i.i.i78 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %.sroa.24.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i.i78, align 8, !tbaa !270, !alias.scope !19708
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 2, ptr %i.ag, align 8, !tbaa !352, !alias.scope !19708
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 5, ptr %i.ah, align 1, !tbaa !353, !alias.scope !19708
  store ptr %5, ptr %4, align 8, !alias.scope !19709
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.40, ptr %i.ai, align 8, !alias.scope !19709
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.aj, align 8, !tbaa !352, !alias.scope !19709
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 3, ptr %i.ak, align 1, !tbaa !353, !alias.scope !19709
  %i.al = inttoptr i64 %i.j to ptr
  store ptr %4, ptr %3, align 8, !alias.scope !19710
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !19710
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 2, ptr %i.an, align 8, !tbaa !352, !alias.scope !19710
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 15, ptr %i.ao, align 1, !tbaa !353, !alias.scope !19710
  call void @_ZNK4llvm9ObjDumper19reportUniqueWarningERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(34) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !810
  %i.ar = icmp eq i64 %i.aq, 24
  %i.as = urem i64 %.fr, 24
  %i.at = icmp eq i64 %i.as, 0
  %or.cond = and i1 %i.at, %i.ar
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.au = sdiv exact i64 %.fr, 24
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.av, ptr %10, align 8, !tbaa !268
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i64 0, ptr %i.aw, align 8, !tbaa !269
  store i8 0, ptr %i.av, align 8, !tbaa !270
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !269 ; 4 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_ZN4llvmplERKNS_5TwineES2_.exit154, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !19711)
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !349, !noalias !19711
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.bc, ptr %11, align 8, !tbaa !268, !alias.scope !19712
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i64 0, ptr %i.bd, align 8, !tbaa !269, !alias.scope !19712
  store i8 0, ptr %i.bc, align 8, !tbaa !270, !alias.scope !19712
  %i.be = add i64 %i.ay, 5
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.be) #31
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !269, !alias.scope !19712
  %i.bg = sub i64 4611686018427387903, %i.bf
  %i.bh = icmp ult i64 %i.bg, %i.ay
  br i1 %i.bh, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.f
  %i.bi = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.bb, i64 noundef %i.ay) #31 ; 0 uses
  %i.bj = load i64, ptr %i.bd, align 8, !tbaa !269, !alias.scope !19712
  %i.bk = add i64 %i.bj, -4611686018427387899
  %i.bl = icmp ult i64 %i.bk, 5
  br i1 %i.bl, label %bb.h, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.41, i64 noundef 5) #31 ; 0 uses
  %i.bn = load i64, ptr %i.bd, align 8, !tbaa !269 ; 2 uses
  %i.bo = load i64, ptr %i.aw, align 8, !tbaa !269
  %i.bp = sub i64 4611686018427387903, %i.bo
  %i.bq = icmp ult i64 %i.bp, %i.bn
  br i1 %i.bq, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.i:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.br = load ptr, ptr %11, align 8, !tbaa !349
  %i.bs = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.br, i64 noundef %i.bn) #31 ; 0 uses
  %i.bt = load ptr, ptr %11, align 8, !tbaa !349  ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.bc
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.bv = load i64, ptr %i.bc, align 8, !tbaa !270
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  %.pre = load i64, ptr %i.k, align 8, !tbaa !763
  br label %_ZN4llvmplERKNS_5TwineES2_.exit154

_ZN4llvmplERKNS_5TwineES2_.exit154:               ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bx = phi i64 [ %.fr, %bb.e ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.01.0.copyload = load ptr, ptr %i.by, align 8, !tbaa !355
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !340
  %i.bz = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i8 3, ptr %i.bz, align 8, !tbaa !352, !alias.scope !19713
  %i.ca = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 5, ptr %i.ca, align 1, !tbaa !353, !alias.scope !19713
  store ptr @.str.42, ptr %16, align 8, !tbaa !270, !alias.scope !19713
  %i.cb = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %.sroa.01.0.copyload, ptr %i.cb, align 8, !tbaa !270, !alias.scope !19713
  %i.cc = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i64 %.sroa.22.0.copyload, ptr %i.cc, align 8, !tbaa !270, !alias.scope !19713
  store ptr %16, ptr %15, align 8, !alias.scope !19714
  %i.cd = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr @.str.43, ptr %i.cd, align 8, !alias.scope !19714
  %i.ce = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 2, ptr %i.ce, align 8, !tbaa !352, !alias.scope !19714
  %i.cf = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 3, ptr %i.cf, align 1, !tbaa !353, !alias.scope !19714
  %i.cg = inttoptr i64 %i.bx to ptr
  store ptr %15, ptr %14, align 8, !alias.scope !19715
  %i.ch = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.cg, ptr %i.ch, align 8, !alias.scope !19715
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 2, ptr %i.ci, align 8, !tbaa !352, !alias.scope !19715
  %i.cj = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 15, ptr %i.cj, align 1, !tbaa !353, !alias.scope !19715
  store ptr %14, ptr %13, align 8, !alias.scope !19716
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr @.str.6, ptr %i.ck, align 8, !alias.scope !19716
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i8 2, ptr %i.cl, align 8, !tbaa !352, !alias.scope !19716
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 3, ptr %i.cm, align 1, !tbaa !353, !alias.scope !19716
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(34) %13) #31
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !269 ; 2 uses
  %i.cp = load i64, ptr %i.aw, align 8, !tbaa !269
  %i.cq = sub i64 4611686018427387903, %i.cp
  %i.cr = icmp ult i64 %i.cq, %i.co
  br i1 %i.cr, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit155

bb.j:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit154
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit155: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit154
  %i.cs = load ptr, ptr %12, align 8, !tbaa !349
  %i.ct = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.cs, i64 noundef %i.co) #31 ; 0 uses
  %i.cu = load ptr, ptr %12, align 8, !tbaa !349  ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit155
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !270
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !272 ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.l, label %_ZN4llvmplERKNS_5TwineES2_.exit203

_ZN4llvmplERKNS_5TwineES2_.exit203:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #31
  %.sroa.0.0.copyload = load ptr, ptr %i.dc, align 8, !tbaa !355
  %i.dd = getelementptr inbounds nuw i8, ptr %21, i64 32
  store i8 3, ptr %i.dd, align 8, !tbaa !352, !alias.scope !19717
  %i.de = getelementptr inbounds nuw i8, ptr %21, i64 33
  store i8 5, ptr %i.de, align 1, !tbaa !353, !alias.scope !19717
  store ptr @.str.44, ptr %21, align 8, !tbaa !270, !alias.scope !19717
  %i.df = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %.sroa.0.0.copyload, ptr %i.df, align 8, !tbaa !270, !alias.scope !19717
  %i.dg = getelementptr inbounds nuw i8, ptr %21, i64 24
  store i64 %i.da, ptr %i.dg, align 8, !tbaa !270, !alias.scope !19717
  store ptr %21, ptr %20, align 8, !alias.scope !19718
  %i.dh = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr @.str.43, ptr %i.dh, align 8, !alias.scope !19718
  %i.di = getelementptr inbounds nuw i8, ptr %20, i64 32
  store i8 2, ptr %i.di, align 8, !tbaa !352, !alias.scope !19718
  %i.dj = getelementptr inbounds nuw i8, ptr %20, i64 33
  store i8 3, ptr %i.dj, align 1, !tbaa !353, !alias.scope !19718
  %i.dk = load i64, ptr %i.ap, align 8, !tbaa !810
  %i.dl = inttoptr i64 %i.dk to ptr
  store ptr %20, ptr %19, align 8, !alias.scope !19719
  %i.dm = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %i.dl, ptr %i.dm, align 8, !alias.scope !19719
  %i.dn = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i8 2, ptr %i.dn, align 8, !tbaa !352, !alias.scope !19719
  %i.do = getelementptr inbounds nuw i8, ptr %19, i64 33
  store i8 15, ptr %i.do, align 1, !tbaa !353, !alias.scope !19719
  store ptr %19, ptr %18, align 8, !alias.scope !19720
  %i.dp = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr @.str.6, ptr %i.dp, align 8, !alias.scope !19720
  %i.dq = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i8 2, ptr %i.dq, align 8, !tbaa !352, !alias.scope !19720
  %i.dr = getelementptr inbounds nuw i8, ptr %18, i64 33
  store i8 3, ptr %i.dr, align 1, !tbaa !353, !alias.scope !19720
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(34) %18) #31
  %i.ds = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !269 ; 2 uses
  %i.du = load i64, ptr %i.aw, align 8, !tbaa !269
  %i.dv = sub i64 4611686018427387903, %i.du
  %i.dw = icmp ult i64 %i.dv, %i.dt
  br i1 %i.dw, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit204

bb.k:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit203
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit204: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit203
  %i.dx = load ptr, ptr %17, align 8, !tbaa !349
  %i.dy = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.dx, i64 noundef %i.dt) #31 ; 0 uses
  %i.dz = load ptr, ptr %17, align 8, !tbaa !349  ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit204
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !270
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit204, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !267
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  %i.eg = getelementptr inbounds nuw i8, ptr %22, i64 32
  store i8 4, ptr %i.eg, align 8, !tbaa !352
  %i.eh = getelementptr inbounds nuw i8, ptr %22, i64 33
  store i8 1, ptr %i.eh, align 1, !tbaa !353
  store ptr %10, ptr %22, align 8, !tbaa !270
  call void @_ZNK4llvm9ObjDumper19reportUniqueWarningERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(72) %i.ef, ptr noundef nonnull align 8 dereferenceable(34) %22) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  %i.ei = load ptr, ptr %10, align 8, !tbaa !349  ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.av
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208: ; preds = %bb.l
  %i.ek = load i64, ptr %i.av, align 8, !tbaa !270
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZN4llvmplERKNS_5TwineES2_.exit109, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210
  %.sroa.5.0 = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210 ], [ 0, %_ZN4llvmplERKNS_5TwineES2_.exit109 ], [ %i.au, %bb.d ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK4llvm10DwarfCFIEH14PrinterContextINS_6object7ELFTypeILNS_10endiannessE1ELb1EEEE22printUnwindInformationEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.llvm::Expected.1904", align 8 ; 9 uses
  %2 = alloca %"class.llvm::Error", align 8       ; 2 uses
  %3 = alloca %"class.llvm::Error", align 8       ; 2 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %5 = alloca %"class.llvm::Expected.1877", align 8 ; 9 uses
  %6 = alloca %"class.llvm::Error", align 8       ; 2 uses
  %7 = alloca %"class.llvm::Expected.148", align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %"class.llvm::Error", align 8       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1566, !nonnull !248, !align !338
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE1ELb1EEEE15program_headersEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.1904") align 8 %1, ptr noundef nonnull align 8 dereferenceable(96) %i.d)
end_hunk_6
begin_hunk_7_@_ZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEE29printDynamicRelocationsHelperEvENKUlRNS_13DynRegionInfoEE_clES8_:bb.a
  store ptr null, ptr %3, align 8, !tbaa !346, !noalias !19926
  store ptr %i.v, ptr %6, align 8, !tbaa !348, !alias.scope !19926
  call void @_ZN4llvm8toStringB5cxx11ENS_5ErrorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nofree noundef nonnull align 8 dereferenceable(8) %6) #31
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 4, ptr %i.w, align 8, !tbaa !352
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.x, align 1, !tbaa !353
  store ptr %5, ptr %4, align 8, !tbaa !270
  call void @_ZNK4llvm9ObjDumper19reportUniqueWarningERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(72) %.0.val, ptr noundef nonnull align 8 dereferenceable(34) %4) #31
  %i.y = load ptr, ptr %5, align 8, !tbaa !349    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !270
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ad = load ptr, ptr %6, align 8, !tbaa !348   ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !250
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) #31, !inline_history !0
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr %3, align 8, !tbaa !1563  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1563 ; 2 uses
  %.not12 = icmp eq ptr %i.ai, %i.ak
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 32
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1564 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1564 ; 2 uses
  %.not1014 = icmp eq ptr %i.ap, %i.ar
  br i1 %.not1014, label %.loopexit, label %.lr.ph17

.lr.ph17:                                         ; preds = %._crit_edge
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 24
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.05.013 = phi ptr [ %i.ai, %.lr.ph ], [ %i.ax, %bb.e ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.05.013, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.aw, align 1 ; 2 uses
  store i64 %.0.copyload.i.i.i.i.i.i, ptr %7, align 8
  %.0.copyload.i.i.i.i = load i64, ptr %.sroa.05.013, align 1
  store i64 %.0.copyload.i.i.i.i, ptr %i.al, align 8, !tbaa !1513
  store i64 %.0.copyload.i.i.i.i.i.i, ptr %i.am, align 8, !tbaa !1523
  store i8 0, ptr %i.an, align 8, !tbaa !643
  call fastcc void @_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEE17printDynamicRelocERKNS_10RelocationIS5_EE(ptr noundef nonnull align 8 dereferenceable(1152) %.0.val, ptr noundef nonnull align 8 dereferenceable(40) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.05.013, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ax, %i.ak
  br i1 %.not, label %._crit_edge, label %bb.e

bb.f:                                             ; preds = %.lr.ph17, %bb.f
  %.sroa.01.015 = phi ptr [ %i.ap, %.lr.ph17 ], [ %i.ba, %bb.f ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.01.015, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ay, align 1 ; 2 uses
  store i64 %.0.copyload.i.i.i.i.i.i.i, ptr %8, align 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.01.015, align 1
  store i64 %.0.copyload.i.i.i.i.i, ptr %i.as, align 8, !tbaa !1513
  store i64 %.0.copyload.i.i.i.i.i.i.i, ptr %i.at, align 8, !tbaa !1523
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.01.015, i64 16
  %.0.copyload.i.i.i.i3.i = load i64, ptr %i.az, align 1
  store i8 1, ptr %i.au, align 8, !tbaa !643
  store i64 %.0.copyload.i.i.i.i3.i, ptr %i.av, align 8, !tbaa !340
  call fastcc void @_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEE17printDynamicRelocERKNS_10RelocationIS5_EE(ptr noundef nonnull align 8 dereferenceable(1152) %.0.val, ptr noundef nonnull align 8 dereferenceable(40) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.01.015, i64 24 ; 2 uses
  %.not10 = icmp eq ptr %i.ba, %i.ar
  br i1 %.not10, label %.loopexit, label %bb.f

.loopexit:                                        ; preds = %bb.f, %._crit_edge, %_ZN4llvm5ErrorD2Ev.exit
  %i.bb = load i8, ptr %i.r, align 8
  %i.bc = trunc i8 %i.bb to i1
  br i1 %i.bc, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1447 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE1ELb1EEELb1EEESaIS6_EED2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1448
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bj) #32
  br label %_ZNSt6vectorIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE1ELb1EEELb1EEESaIS6_EED2Ev.exit.i.i

_ZNSt6vectorIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE1ELb1EEELb1EEESaIS6_EED2Ev.exit.i.i: ; preds = %bb.h, %bb.g
  %i.bk = load ptr, ptr %3, align 8, !tbaa !1453  ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i1.i.i, label %_ZN4llvm8ExpectedISt4pairISt6vectorINS_6object12Elf_Rel_ImplINS3_7ELFTypeILNS_10endiannessE1ELb1EEELb0EEESaIS8_EES2_INS4_IS7_Lb1EEESaISB_EEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE1ELb1EEELb1EEESaIS6_EED2Ev.exit.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1454
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = sub i64 %i.bn, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bp) #32
  br label %_ZN4llvm8ExpectedISt4pairISt6vectorINS_6object12Elf_Rel_ImplINS3_7ELFTypeILNS_10endiannessE1ELb1EEELb0EEESaIS8_EES2_INS4_IS7_Lb1EEESaISB_EEEED2Ev.exit

bb.j:                                             ; preds = %.loopexit
  %i.bq = load ptr, ptr %3, align 8, !tbaa !346   ; 3 uses
  %.not.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i, label %_ZN4llvm8ExpectedISt4pairISt6vectorINS_6object12Elf_Rel_ImplINS3_7ELFTypeILNS_10endiannessE1ELb1EEELb0EEESaIS8_EES2_INS4_IS7_Lb1EEESaISB_EEEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.j
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !250
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bq) #31, !inline_history !184
  br label %_ZN4llvm8ExpectedISt4pairISt6vectorINS_6object12Elf_Rel_ImplINS3_7ELFTypeILNS_10endiannessE1ELb1EEELb0EEESaIS8_EES2_INS4_IS7_Lb1EEESaISB_EEEED2Ev.exit

_ZN4llvm8ExpectedISt4pairISt6vectorINS_6object12Elf_Rel_ImplINS3_7ELFTypeILNS_10endiannessE1ELb1EEELb0EEESaIS8_EES2_INS4_IS7_Lb1EEESaISB_EEEED2Ev.exit: ; preds = %_ZNSt6vectorIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE1ELb1EEELb1EEESaIS6_EED2Ev.exit.i.i, %bb.i, %bb.j, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvm8ExpectedISt4pairISt6vectorINS_6object12Elf_Rel_ImplINS3_7ELFTypeILNS_10endiannessE1ELb1EEELb0EEESaIS8_EES2_INS4_IS7_Lb1EEESaISB_EEEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i64 } @_ZNK12_GLOBAL__N_113DynRegionInfo13getAsArrayRefIN4llvm6object12Elf_Rel_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb1EEELb1EEEEENS2_8ArrayRefIT_EEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 4 uses
  %2 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 4 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !356    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !266
  call void @_ZNK4llvm6object6Binary18getMemoryBufferRefEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryBufferRef") align 8 %1, ptr noundef nonnull align 8 dereferenceable(48) %i.c) #31
  %i.d = load ptr, ptr %1, align 8, !tbaa !271
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !266
  call void @_ZNK4llvm6object6Binary18getMemoryBufferRefEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryBufferRef") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %i.h) #31
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !272  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !763
  %.fr = freeze i64 %i.l                          ; 5 uses
  %i.m = sub i64 %i.j, %i.g
  %i.n = icmp ugt i64 %.fr, %i.m
  br i1 %i.n, label %_ZN4llvmplERKNS_5TwineES2_.exit109, label %bb.c

_ZN4llvmplERKNS_5TwineES2_.exit109:               ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !267
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.q = inttoptr i64 %i.g to ptr
  store ptr @.str.37, ptr %9, align 8, !alias.scope !19987
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !19987
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 3, ptr %i.s, align 8, !tbaa !352, !alias.scope !19987
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 15, ptr %i.t, align 1, !tbaa !353, !alias.scope !19987
  store ptr %9, ptr %8, align 8, !alias.scope !19988
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @.str.38, ptr %i.u, align 8, !alias.scope !19988
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 2, ptr %i.v, align 8, !tbaa !352, !alias.scope !19988
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 3, ptr %i.w, align 1, !tbaa !353, !alias.scope !19988
  %i.x = inttoptr i64 %.fr to ptr
  store ptr %8, ptr %7, align 8, !alias.scope !19989
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.x, ptr %i.y, align 8, !alias.scope !19989
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 2, ptr %i.z, align 8, !tbaa !352, !alias.scope !19989
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 15, ptr %i.aa, align 1, !tbaa !353, !alias.scope !19989
  store ptr %7, ptr %6, align 8, !alias.scope !19990
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.39, ptr %i.ab, align 8, !alias.scope !19990
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 2, ptr %i.ac, align 8, !tbaa !352, !alias.scope !19990
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 3, ptr %i.ad, align 1, !tbaa !353, !alias.scope !19990
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !340
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.03.0.copyload = load ptr, ptr %i.ae, align 8, !tbaa !355
  store ptr %6, ptr %5, align 8, !alias.scope !19991
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.sroa.03.0.copyload, ptr %i.af, align 8, !alias.scope !19991
  %.sroa.2.0..sroa_idx.i.i.i78 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %.sroa.24.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i.i78, align 8, !tbaa !270, !alias.scope !19991
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 2, ptr %i.ag, align 8, !tbaa !352, !alias.scope !19991
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 5, ptr %i.ah, align 1, !tbaa !353, !alias.scope !19991
  store ptr %5, ptr %4, align 8, !alias.scope !19992
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.40, ptr %i.ai, align 8, !alias.scope !19992
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.aj, align 8, !tbaa !352, !alias.scope !19992
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 3, ptr %i.ak, align 1, !tbaa !353, !alias.scope !19992
  %i.al = inttoptr i64 %i.j to ptr
  store ptr %4, ptr %3, align 8, !alias.scope !19993
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !19993
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 2, ptr %i.an, align 8, !tbaa !352, !alias.scope !19993
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 15, ptr %i.ao, align 1, !tbaa !353, !alias.scope !19993
  call void @_ZNK4llvm9ObjDumper19reportUniqueWarningERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(34) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !810
  %i.ar = icmp eq i64 %i.aq, 24
  %i.as = urem i64 %.fr, 24
  %i.at = icmp eq i64 %i.as, 0
  %or.cond = and i1 %i.at, %i.ar
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.au = sdiv exact i64 %.fr, 24
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.av, ptr %10, align 8, !tbaa !268
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i64 0, ptr %i.aw, align 8, !tbaa !269
  store i8 0, ptr %i.av, align 8, !tbaa !270
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !269 ; 4 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_ZN4llvmplERKNS_5TwineES2_.exit154, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !19994)
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !349, !noalias !19994
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.bc, ptr %11, align 8, !tbaa !268, !alias.scope !19995
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i64 0, ptr %i.bd, align 8, !tbaa !269, !alias.scope !19995
  store i8 0, ptr %i.bc, align 8, !tbaa !270, !alias.scope !19995
  %i.be = add i64 %i.ay, 5
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.be) #31
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !269, !alias.scope !19995
  %i.bg = sub i64 4611686018427387903, %i.bf
  %i.bh = icmp ult i64 %i.bg, %i.ay
  br i1 %i.bh, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.f
  %i.bi = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.bb, i64 noundef %i.ay) #31 ; 0 uses
  %i.bj = load i64, ptr %i.bd, align 8, !tbaa !269, !alias.scope !19995
  %i.bk = add i64 %i.bj, -4611686018427387899
  %i.bl = icmp ult i64 %i.bk, 5
  br i1 %i.bl, label %bb.h, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.41, i64 noundef 5) #31 ; 0 uses
  %i.bn = load i64, ptr %i.bd, align 8, !tbaa !269 ; 2 uses
  %i.bo = load i64, ptr %i.aw, align 8, !tbaa !269
  %i.bp = sub i64 4611686018427387903, %i.bo
  %i.bq = icmp ult i64 %i.bp, %i.bn
  br i1 %i.bq, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.i:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.br = load ptr, ptr %11, align 8, !tbaa !349
  %i.bs = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.br, i64 noundef %i.bn) #31 ; 0 uses
  %i.bt = load ptr, ptr %11, align 8, !tbaa !349  ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.bc
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.bv = load i64, ptr %i.bc, align 8, !tbaa !270
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  %.pre = load i64, ptr %i.k, align 8, !tbaa !763
  br label %_ZN4llvmplERKNS_5TwineES2_.exit154

_ZN4llvmplERKNS_5TwineES2_.exit154:               ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bx = phi i64 [ %.fr, %bb.e ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.01.0.copyload = load ptr, ptr %i.by, align 8, !tbaa !355
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !340
  %i.bz = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i8 3, ptr %i.bz, align 8, !tbaa !352, !alias.scope !19996
  %i.ca = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 5, ptr %i.ca, align 1, !tbaa !353, !alias.scope !19996
  store ptr @.str.42, ptr %16, align 8, !tbaa !270, !alias.scope !19996
  %i.cb = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %.sroa.01.0.copyload, ptr %i.cb, align 8, !tbaa !270, !alias.scope !19996
  %i.cc = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i64 %.sroa.22.0.copyload, ptr %i.cc, align 8, !tbaa !270, !alias.scope !19996
  store ptr %16, ptr %15, align 8, !alias.scope !19997
  %i.cd = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr @.str.43, ptr %i.cd, align 8, !alias.scope !19997
  %i.ce = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 2, ptr %i.ce, align 8, !tbaa !352, !alias.scope !19997
  %i.cf = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 3, ptr %i.cf, align 1, !tbaa !353, !alias.scope !19997
  %i.cg = inttoptr i64 %i.bx to ptr
  store ptr %15, ptr %14, align 8, !alias.scope !19998
  %i.ch = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.cg, ptr %i.ch, align 8, !alias.scope !19998
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 2, ptr %i.ci, align 8, !tbaa !352, !alias.scope !19998
  %i.cj = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 15, ptr %i.cj, align 1, !tbaa !353, !alias.scope !19998
  store ptr %14, ptr %13, align 8, !alias.scope !19999
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr @.str.6, ptr %i.ck, align 8, !alias.scope !19999
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i8 2, ptr %i.cl, align 8, !tbaa !352, !alias.scope !19999
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 3, ptr %i.cm, align 1, !tbaa !353, !alias.scope !19999
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(34) %13) #31
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !269 ; 2 uses
  %i.cp = load i64, ptr %i.aw, align 8, !tbaa !269
  %i.cq = sub i64 4611686018427387903, %i.cp
  %i.cr = icmp ult i64 %i.cq, %i.co
  br i1 %i.cr, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit155

bb.j:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit154
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit155: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit154
  %i.cs = load ptr, ptr %12, align 8, !tbaa !349
  %i.ct = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.cs, i64 noundef %i.co) #31 ; 0 uses
  %i.cu = load ptr, ptr %12, align 8, !tbaa !349  ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit155
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !270
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !272 ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.l, label %_ZN4llvmplERKNS_5TwineES2_.exit203

_ZN4llvmplERKNS_5TwineES2_.exit203:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #31
  %.sroa.0.0.copyload = load ptr, ptr %i.dc, align 8, !tbaa !355
  %i.dd = getelementptr inbounds nuw i8, ptr %21, i64 32
  store i8 3, ptr %i.dd, align 8, !tbaa !352, !alias.scope !20000
  %i.de = getelementptr inbounds nuw i8, ptr %21, i64 33
  store i8 5, ptr %i.de, align 1, !tbaa !353, !alias.scope !20000
  store ptr @.str.44, ptr %21, align 8, !tbaa !270, !alias.scope !20000
  %i.df = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %.sroa.0.0.copyload, ptr %i.df, align 8, !tbaa !270, !alias.scope !20000
  %i.dg = getelementptr inbounds nuw i8, ptr %21, i64 24
  store i64 %i.da, ptr %i.dg, align 8, !tbaa !270, !alias.scope !20000
  store ptr %21, ptr %20, align 8, !alias.scope !20001
  %i.dh = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr @.str.43, ptr %i.dh, align 8, !alias.scope !20001
  %i.di = getelementptr inbounds nuw i8, ptr %20, i64 32
  store i8 2, ptr %i.di, align 8, !tbaa !352, !alias.scope !20001
  %i.dj = getelementptr inbounds nuw i8, ptr %20, i64 33
  store i8 3, ptr %i.dj, align 1, !tbaa !353, !alias.scope !20001
  %i.dk = load i64, ptr %i.ap, align 8, !tbaa !810
  %i.dl = inttoptr i64 %i.dk to ptr
  store ptr %20, ptr %19, align 8, !alias.scope !20002
  %i.dm = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %i.dl, ptr %i.dm, align 8, !alias.scope !20002
  %i.dn = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i8 2, ptr %i.dn, align 8, !tbaa !352, !alias.scope !20002
  %i.do = getelementptr inbounds nuw i8, ptr %19, i64 33
  store i8 15, ptr %i.do, align 1, !tbaa !353, !alias.scope !20002
  store ptr %19, ptr %18, align 8, !alias.scope !20003
  %i.dp = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr @.str.6, ptr %i.dp, align 8, !alias.scope !20003
  %i.dq = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i8 2, ptr %i.dq, align 8, !tbaa !352, !alias.scope !20003
  %i.dr = getelementptr inbounds nuw i8, ptr %18, i64 33
  store i8 3, ptr %i.dr, align 1, !tbaa !353, !alias.scope !20003
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(34) %18) #31
  %i.ds = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !269 ; 2 uses
  %i.du = load i64, ptr %i.aw, align 8, !tbaa !269
  %i.dv = sub i64 4611686018427387903, %i.du
  %i.dw = icmp ult i64 %i.dv, %i.dt
  br i1 %i.dw, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit204

bb.k:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit203
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit204: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit203
  %i.dx = load ptr, ptr %17, align 8, !tbaa !349
  %i.dy = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.dx, i64 noundef %i.dt) #31 ; 0 uses
  %i.dz = load ptr, ptr %17, align 8, !tbaa !349  ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit204
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !270
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit204, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !267
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  %i.eg = getelementptr inbounds nuw i8, ptr %22, i64 32
  store i8 4, ptr %i.eg, align 8, !tbaa !352
  %i.eh = getelementptr inbounds nuw i8, ptr %22, i64 33
  store i8 1, ptr %i.eh, align 1, !tbaa !353
  store ptr %10, ptr %22, align 8, !tbaa !270
  call void @_ZNK4llvm9ObjDumper19reportUniqueWarningERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(72) %i.ef, ptr noundef nonnull align 8 dereferenceable(34) %22) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  %i.ei = load ptr, ptr %10, align 8, !tbaa !349  ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.av
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208: ; preds = %bb.l
  %i.ek = load i64, ptr %i.av, align 8, !tbaa !270
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZN4llvmplERKNS_5TwineES2_.exit109, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210
  %.sroa.5.0 = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210 ], [ 0, %_ZN4llvmplERKNS_5TwineES2_.exit109 ], [ %i.au, %bb.d ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEE17printDynamicRelocERKNS_10RelocationIS5_EE(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 7 uses
end_hunk_7
begin_hunk_8_@_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE0ELb1EEEE25getSectionContentsAsArrayINS0_12Elf_Sym_ImplIS4_EEEENS_8ExpectedINS_8ArrayRefIT_EEEERKNS0_13Elf_Shdr_ImplIS4_EE:bb.a
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %24 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %25 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %26 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %27 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %28 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %.0.copyload.i.i.i = load i64, ptr %i.a, align 1
  %.not = icmp eq i64 %.0.copyload.i.i.i, 1729382256910270464
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE0ELb1EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(64) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !25621)
  %i.b = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.172, i64 noundef 8) #31, !noalias !25621 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.c, ptr %7, align 8, !tbaa !268, !alias.scope !25621
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !349  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !269  ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  store ptr %i.d, ptr %7, align 8, !tbaa !349, !alias.scope !25621
  %i.k = load i64, ptr %i.e, align 8, !tbaa !270
  store i64 %i.k, ptr %i.c, align 8, !tbaa !270, !alias.scope !25621
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !269
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.l = phi i64 [ %i.h, %bb.c ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !269, !alias.scope !25621
  store ptr %i.e, ptr %i.b, align 8, !tbaa !349
  store i64 0, ptr %i.m, align 8, !tbaa !269
  store i8 0, ptr %i.e, align 8, !tbaa !270
  call void @llvm.experimental.noalias.scope.decl(metadata !25622)
  %i.o = add i64 %i.l, -4611686018427387870
  %i.p = icmp ult i64 %i.o, 34
  br i1 %i.p, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33, !noalias !25622
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.q = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.173, i64 noundef 34) #31, !noalias !25622 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.r, ptr %6, align 8, !tbaa !268, !alias.scope !25622
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !349  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !269  ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.s, ptr %6, align 8, !tbaa !349, !alias.scope !25622
  %i.z = load i64, ptr %i.t, align 8, !tbaa !270
  store i64 %i.z, ptr %i.r, align 8, !tbaa !270, !alias.scope !25622
  %.phi.trans.insert.i25 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i26 = load i64, ptr %.phi.trans.insert.i25, align 8, !tbaa !269
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.e
  %i.aa = phi i64 [ %i.w, %bb.e ], [ %.pre.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !269, !alias.scope !25622
  store ptr %i.t, ptr %i.q, align 8, !tbaa !349
  store i64 0, ptr %i.ab, align 8, !tbaa !269
  store i8 0, ptr %i.t, align 8, !tbaa !270
  store ptr %6, ptr %5, align 8, !alias.scope !25623
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr inttoptr (i64 24 to ptr), ptr %i.ad, align 8, !alias.scope !25623
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 4, ptr %i.ae, align 8, !tbaa !352, !alias.scope !25623
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 11, ptr %i.af, align 1, !tbaa !353, !alias.scope !25623
  store ptr %5, ptr %4, align 8, !alias.scope !25624
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.174, ptr %i.ag, align 8, !alias.scope !25624
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.ah, align 8, !tbaa !352, !alias.scope !25624
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 3, ptr %i.ai, align 1, !tbaa !353, !alias.scope !25624
  %.0.copyload.i.i.i42 = load i64, ptr %i.a, align 1
  %i.aj = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i42)
  %i.ak = inttoptr i64 %i.aj to ptr
  store ptr %4, ptr %3, align 8, !alias.scope !25625
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ak, ptr %i.al, align 8, !alias.scope !25625
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 2, ptr %i.am, align 8, !tbaa !352, !alias.scope !25625
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 11, ptr %i.an, align 1, !tbaa !353, !alias.scope !25625
  %i.ao = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30, !noalias !25626 ; 2 uses
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #31, !noalias !25626
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.ao, ptr noundef nonnull align 8 dereferenceable(34) %3, i32 3, ptr nonnull %i.ap) #31, !noalias !25626
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8
  %i.as = or i8 %i.ar, 1
  store i8 %i.as, ptr %i.aq, align 8
  store ptr %i.ao, ptr %0, align 8, !tbaa !346, !alias.scope !25627
  %i.at = load ptr, ptr %6, align 8, !tbaa !349   ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.r
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.av = load i64, ptr %i.r, align 8, !tbaa !270
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  %i.ax = load ptr, ptr %7, align 8, !tbaa !349   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.c
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.az = load i64, ptr %i.c, align 8, !tbaa !270
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  %i.bb = load ptr, ptr %8, align 8, !tbaa !349   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !270
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.v

bb.f:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.0.copyload.i.i.i65 = load i64, ptr %i.bg, align 1
  %i.bh = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i65) ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.0.copyload.i.i.i66 = load i64, ptr %i.bi, align 1
  %i.bj = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i66) ; 7 uses
  %i.bk = urem i64 %i.bj, 24
  %i.bl = udiv i64 %i.bj, 24
  %.not23 = icmp eq i64 %i.bk, 0
  br i1 %.not23, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE0ELb1EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(64) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !25628)
  %i.bm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.172, i64 noundef 8) #31, !noalias !25628 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr %i.bn, ptr %14, align 8, !tbaa !268, !alias.scope !25628
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !349 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 5 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !269 ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 16
  call void @llvm.assume(i1 %i.bt)
  %i.bu = add nuw nsw i64 %i.bs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bn, ptr noundef nonnull align 8 dereferenceable(1) %i.bp, i64 %i.bu, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.g
  store ptr %i.bo, ptr %14, align 8, !tbaa !349, !alias.scope !25628
  %i.bv = load i64, ptr %i.bp, align 8, !tbaa !270
  store i64 %i.bv, ptr %i.bn, align 8, !tbaa !270, !alias.scope !25628
  %.phi.trans.insert.i68 = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.pre.i69 = load i64, ptr %.phi.trans.insert.i68, align 8, !tbaa !269
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  %i.bw = phi i64 [ %i.bs, %bb.h ], [ %.pre.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.bw, ptr %i.by, align 8, !tbaa !269, !alias.scope !25628
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !349
  store i64 0, ptr %i.bx, align 8, !tbaa !269
  store i8 0, ptr %i.bp, align 8, !tbaa !270
  call void @llvm.experimental.noalias.scope.decl(metadata !25629)
  %i.bz = add i64 %i.bw, -4611686018427387879
  %i.ca = icmp ult i64 %i.bz, 25
  br i1 %i.ca, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71

bb.i:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33, !noalias !25629
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70
  %i.cb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.175, i64 noundef 25) #31, !noalias !25629 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr %i.cc, ptr %13, align 8, !tbaa !268, !alias.scope !25629
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !349 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 5 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !269 ; 3 uses
  %i.ci = icmp ult i64 %i.ch, 16
  call void @llvm.assume(i1 %i.ci)
  %i.cj = add nuw nsw i64 %i.ch, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cc, ptr noundef nonnull align 8 dereferenceable(1) %i.ce, i64 %i.cj, i1 false)
  br label %_ZN4llvm5ErrorD2Ev.exit137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71
  store ptr %i.cd, ptr %13, align 8, !tbaa !349, !alias.scope !25629
  %i.ck = load i64, ptr %i.ce, align 8, !tbaa !270
  store i64 %i.ck, ptr %i.cc, align 8, !tbaa !270, !alias.scope !25629
  %.phi.trans.insert.i73 = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.pre.i74 = load i64, ptr %.phi.trans.insert.i73, align 8, !tbaa !269
  br label %_ZN4llvm5ErrorD2Ev.exit137

_ZN4llvm5ErrorD2Ev.exit137:                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %bb.j
  %i.cl = phi i64 [ %i.ch, %bb.j ], [ %.pre.i74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.cl, ptr %i.cn, align 8, !tbaa !269, !alias.scope !25629
  store ptr %i.ce, ptr %i.cb, align 8, !tbaa !349
  store i64 0, ptr %i.cm, align 8, !tbaa !269
  store i8 0, ptr %i.ce, align 8, !tbaa !270
  %.sroa.04.0.copyload.i.i82.cast = inttoptr i64 %i.bj to ptr
  store ptr %13, ptr %12, align 8, !alias.scope !25630
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %.sroa.04.0.copyload.i.i82.cast, ptr %i.co, align 8, !alias.scope !25630
  %i.cp = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 4, ptr %i.cp, align 8, !tbaa !352, !alias.scope !25630
  %i.cq = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 11, ptr %i.cq, align 1, !tbaa !353, !alias.scope !25630
  store ptr %12, ptr %11, align 8, !alias.scope !25631
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr @.str.176, ptr %i.cr, align 8, !alias.scope !25631
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 2, ptr %i.cs, align 8, !tbaa !352, !alias.scope !25631
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 3, ptr %i.ct, align 1, !tbaa !353, !alias.scope !25631
  %.0.copyload.i.i.i106 = load i64, ptr %i.a, align 1
  %i.cu = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i106)
  %i.cv = inttoptr i64 %i.cu to ptr
  store ptr %11, ptr %10, align 8, !alias.scope !25632
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.cv, ptr %i.cw, align 8, !alias.scope !25632
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 2, ptr %i.cx, align 8, !tbaa !352, !alias.scope !25632
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 11, ptr %i.cy, align 1, !tbaa !353, !alias.scope !25632
  store ptr %10, ptr %9, align 8, !alias.scope !25633
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @.str.6, ptr %i.cz, align 8, !alias.scope !25633
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 2, ptr %i.da, align 8, !tbaa !352, !alias.scope !25633
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 3, ptr %i.db, align 1, !tbaa !353, !alias.scope !25633
  %i.dc = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30, !noalias !25634 ; 2 uses
  %i.dd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #31, !noalias !25634
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.dc, ptr noundef nonnull align 8 dereferenceable(34) %9, i32 3, ptr nonnull %i.dd) #31, !noalias !25634
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.df = load i8, ptr %i.de, align 8
  %i.dg = or i8 %i.df, 1
  store i8 %i.dg, ptr %i.de, align 8
  store ptr %i.dc, ptr %0, align 8, !tbaa !346, !alias.scope !25635
  %i.dh = load ptr, ptr %13, align 8, !tbaa !349  ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.cc
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZN4llvm5ErrorD2Ev.exit137
  %i.dj = load i64, ptr %i.cc, align 8, !tbaa !270
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %_ZN4llvm5ErrorD2Ev.exit137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  %i.dl = load ptr, ptr %14, align 8, !tbaa !349  ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.bn
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %i.dn = load i64, ptr %i.bn, align 8, !tbaa !270
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  %i.dp = load ptr, ptr %15, align 8, !tbaa !349  ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !270
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.v

bb.k:                                             ; preds = %bb.f
  %i.du = xor i64 %i.bh, -1
  %i.dv = icmp ugt i64 %i.bj, %i.du
  br i1 %i.dv, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE0ELb1EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(64) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !25636)
  %i.dw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %22, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.172, i64 noundef 8) #31, !noalias !25636 ; 6 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  store ptr %i.dx, ptr %21, align 8, !tbaa !268, !alias.scope !25636
  %i.dy = load ptr, ptr %i.dw, align 8, !tbaa !349 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 5 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

bb.m:                                             ; preds = %bb.l
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !269 ; 3 uses
  %i.ed = icmp ult i64 %i.ec, 16
  call void @llvm.assume(i1 %i.ed)
end_hunk_8
begin_hunk_9_@_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE0ELb1EEEE25getSectionContentsAsArrayINS0_12Elf_Rel_ImplIS4_Lb1EEEEENS_8ExpectedINS_8ArrayRefIT_EEEERKNS0_13Elf_Shdr_ImplIS4_EE:bb.a
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %24 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %25 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %26 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %27 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %28 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %.0.copyload.i.i.i = load i64, ptr %i.a, align 1
  %.not = icmp eq i64 %.0.copyload.i.i.i, 1729382256910270464
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE0ELb1EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(64) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !26295)
  %i.b = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.172, i64 noundef 8) #31, !noalias !26295 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.c, ptr %7, align 8, !tbaa !268, !alias.scope !26295
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !349  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !269  ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  store ptr %i.d, ptr %7, align 8, !tbaa !349, !alias.scope !26295
  %i.k = load i64, ptr %i.e, align 8, !tbaa !270
  store i64 %i.k, ptr %i.c, align 8, !tbaa !270, !alias.scope !26295
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !269
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.l = phi i64 [ %i.h, %bb.c ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !269, !alias.scope !26295
  store ptr %i.e, ptr %i.b, align 8, !tbaa !349
  store i64 0, ptr %i.m, align 8, !tbaa !269
  store i8 0, ptr %i.e, align 8, !tbaa !270
  call void @llvm.experimental.noalias.scope.decl(metadata !26296)
  %i.o = add i64 %i.l, -4611686018427387870
  %i.p = icmp ult i64 %i.o, 34
  br i1 %i.p, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33, !noalias !26296
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.q = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.173, i64 noundef 34) #31, !noalias !26296 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.r, ptr %6, align 8, !tbaa !268, !alias.scope !26296
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !349  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !269  ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.s, ptr %6, align 8, !tbaa !349, !alias.scope !26296
  %i.z = load i64, ptr %i.t, align 8, !tbaa !270
  store i64 %i.z, ptr %i.r, align 8, !tbaa !270, !alias.scope !26296
  %.phi.trans.insert.i25 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i26 = load i64, ptr %.phi.trans.insert.i25, align 8, !tbaa !269
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.e
  %i.aa = phi i64 [ %i.w, %bb.e ], [ %.pre.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !269, !alias.scope !26296
  store ptr %i.t, ptr %i.q, align 8, !tbaa !349
  store i64 0, ptr %i.ab, align 8, !tbaa !269
  store i8 0, ptr %i.t, align 8, !tbaa !270
  store ptr %6, ptr %5, align 8, !alias.scope !26297
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr inttoptr (i64 24 to ptr), ptr %i.ad, align 8, !alias.scope !26297
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 4, ptr %i.ae, align 8, !tbaa !352, !alias.scope !26297
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 11, ptr %i.af, align 1, !tbaa !353, !alias.scope !26297
  store ptr %5, ptr %4, align 8, !alias.scope !26298
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.174, ptr %i.ag, align 8, !alias.scope !26298
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.ah, align 8, !tbaa !352, !alias.scope !26298
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 3, ptr %i.ai, align 1, !tbaa !353, !alias.scope !26298
  %.0.copyload.i.i.i42 = load i64, ptr %i.a, align 1
  %i.aj = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i42)
  %i.ak = inttoptr i64 %i.aj to ptr
  store ptr %4, ptr %3, align 8, !alias.scope !26299
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ak, ptr %i.al, align 8, !alias.scope !26299
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 2, ptr %i.am, align 8, !tbaa !352, !alias.scope !26299
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 11, ptr %i.an, align 1, !tbaa !353, !alias.scope !26299
  %i.ao = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30, !noalias !26300 ; 2 uses
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #31, !noalias !26300
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.ao, ptr noundef nonnull align 8 dereferenceable(34) %3, i32 3, ptr nonnull %i.ap) #31, !noalias !26300
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8
  %i.as = or i8 %i.ar, 1
  store i8 %i.as, ptr %i.aq, align 8
  store ptr %i.ao, ptr %0, align 8, !tbaa !346, !alias.scope !26301
  %i.at = load ptr, ptr %6, align 8, !tbaa !349   ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.r
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.av = load i64, ptr %i.r, align 8, !tbaa !270
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  %i.ax = load ptr, ptr %7, align 8, !tbaa !349   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.c
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.az = load i64, ptr %i.c, align 8, !tbaa !270
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  %i.bb = load ptr, ptr %8, align 8, !tbaa !349   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !270
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.v

bb.f:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.0.copyload.i.i.i65 = load i64, ptr %i.bg, align 1
  %i.bh = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i65) ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.0.copyload.i.i.i66 = load i64, ptr %i.bi, align 1
  %i.bj = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i66) ; 7 uses
  %i.bk = urem i64 %i.bj, 24
  %i.bl = udiv i64 %i.bj, 24
  %.not23 = icmp eq i64 %i.bk, 0
  br i1 %.not23, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE0ELb1EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(64) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !26302)
  %i.bm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.172, i64 noundef 8) #31, !noalias !26302 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr %i.bn, ptr %14, align 8, !tbaa !268, !alias.scope !26302
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !349 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 5 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !269 ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 16
  call void @llvm.assume(i1 %i.bt)
  %i.bu = add nuw nsw i64 %i.bs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bn, ptr noundef nonnull align 8 dereferenceable(1) %i.bp, i64 %i.bu, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.g
  store ptr %i.bo, ptr %14, align 8, !tbaa !349, !alias.scope !26302
  %i.bv = load i64, ptr %i.bp, align 8, !tbaa !270
  store i64 %i.bv, ptr %i.bn, align 8, !tbaa !270, !alias.scope !26302
  %.phi.trans.insert.i68 = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.pre.i69 = load i64, ptr %.phi.trans.insert.i68, align 8, !tbaa !269
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  %i.bw = phi i64 [ %i.bs, %bb.h ], [ %.pre.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.bw, ptr %i.by, align 8, !tbaa !269, !alias.scope !26302
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !349
  store i64 0, ptr %i.bx, align 8, !tbaa !269
  store i8 0, ptr %i.bp, align 8, !tbaa !270
  call void @llvm.experimental.noalias.scope.decl(metadata !26303)
  %i.bz = add i64 %i.bw, -4611686018427387879
  %i.ca = icmp ult i64 %i.bz, 25
  br i1 %i.ca, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71

bb.i:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33, !noalias !26303
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70
  %i.cb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.175, i64 noundef 25) #31, !noalias !26303 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr %i.cc, ptr %13, align 8, !tbaa !268, !alias.scope !26303
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !349 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 5 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !269 ; 3 uses
  %i.ci = icmp ult i64 %i.ch, 16
  call void @llvm.assume(i1 %i.ci)
  %i.cj = add nuw nsw i64 %i.ch, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cc, ptr noundef nonnull align 8 dereferenceable(1) %i.ce, i64 %i.cj, i1 false)
  br label %_ZN4llvm5ErrorD2Ev.exit137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71
  store ptr %i.cd, ptr %13, align 8, !tbaa !349, !alias.scope !26303
  %i.ck = load i64, ptr %i.ce, align 8, !tbaa !270
  store i64 %i.ck, ptr %i.cc, align 8, !tbaa !270, !alias.scope !26303
  %.phi.trans.insert.i73 = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.pre.i74 = load i64, ptr %.phi.trans.insert.i73, align 8, !tbaa !269
  br label %_ZN4llvm5ErrorD2Ev.exit137

_ZN4llvm5ErrorD2Ev.exit137:                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %bb.j
  %i.cl = phi i64 [ %i.ch, %bb.j ], [ %.pre.i74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.cl, ptr %i.cn, align 8, !tbaa !269, !alias.scope !26303
  store ptr %i.ce, ptr %i.cb, align 8, !tbaa !349
  store i64 0, ptr %i.cm, align 8, !tbaa !269
  store i8 0, ptr %i.ce, align 8, !tbaa !270
  %.sroa.04.0.copyload.i.i82.cast = inttoptr i64 %i.bj to ptr
  store ptr %13, ptr %12, align 8, !alias.scope !26304
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %.sroa.04.0.copyload.i.i82.cast, ptr %i.co, align 8, !alias.scope !26304
  %i.cp = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 4, ptr %i.cp, align 8, !tbaa !352, !alias.scope !26304
  %i.cq = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 11, ptr %i.cq, align 1, !tbaa !353, !alias.scope !26304
  store ptr %12, ptr %11, align 8, !alias.scope !26305
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr @.str.176, ptr %i.cr, align 8, !alias.scope !26305
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 2, ptr %i.cs, align 8, !tbaa !352, !alias.scope !26305
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 3, ptr %i.ct, align 1, !tbaa !353, !alias.scope !26305
  %.0.copyload.i.i.i106 = load i64, ptr %i.a, align 1
  %i.cu = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i106)
  %i.cv = inttoptr i64 %i.cu to ptr
  store ptr %11, ptr %10, align 8, !alias.scope !26306
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.cv, ptr %i.cw, align 8, !alias.scope !26306
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 2, ptr %i.cx, align 8, !tbaa !352, !alias.scope !26306
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 11, ptr %i.cy, align 1, !tbaa !353, !alias.scope !26306
  store ptr %10, ptr %9, align 8, !alias.scope !26307
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @.str.6, ptr %i.cz, align 8, !alias.scope !26307
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 2, ptr %i.da, align 8, !tbaa !352, !alias.scope !26307
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 3, ptr %i.db, align 1, !tbaa !353, !alias.scope !26307
  %i.dc = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30, !noalias !26308 ; 2 uses
  %i.dd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #31, !noalias !26308
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.dc, ptr noundef nonnull align 8 dereferenceable(34) %9, i32 3, ptr nonnull %i.dd) #31, !noalias !26308
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.df = load i8, ptr %i.de, align 8
  %i.dg = or i8 %i.df, 1
  store i8 %i.dg, ptr %i.de, align 8
  store ptr %i.dc, ptr %0, align 8, !tbaa !346, !alias.scope !26309
  %i.dh = load ptr, ptr %13, align 8, !tbaa !349  ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.cc
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZN4llvm5ErrorD2Ev.exit137
  %i.dj = load i64, ptr %i.cc, align 8, !tbaa !270
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %_ZN4llvm5ErrorD2Ev.exit137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  %i.dl = load ptr, ptr %14, align 8, !tbaa !349  ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.bn
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %i.dn = load i64, ptr %i.bn, align 8, !tbaa !270
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  %i.dp = load ptr, ptr %15, align 8, !tbaa !349  ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !270
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.v

bb.k:                                             ; preds = %bb.f
  %i.du = xor i64 %i.bh, -1
  %i.dv = icmp ugt i64 %i.bj, %i.du
  br i1 %i.dv, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE0ELb1EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(64) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !26310)
  %i.dw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %22, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.172, i64 noundef 8) #31, !noalias !26310 ; 6 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  store ptr %i.dx, ptr %21, align 8, !tbaa !268, !alias.scope !26310
  %i.dy = load ptr, ptr %i.dw, align 8, !tbaa !349 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 5 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

bb.m:                                             ; preds = %bb.l
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !269 ; 3 uses
  %i.ed = icmp ult i64 %i.ec, 16
  call void @llvm.assume(i1 %i.ed)
end_hunk_9
begin_hunk_10_@_ZNK12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE18printSymbolsHelperEbb:bb.a
  %i.ar = getelementptr i8, ptr %.2.i.i.i.i.i.i, i64 5
  %.2.val.i.i.i.i.i.i = load i8, ptr %i.ar, align 1, !tbaa !1712
  %i.as = icmp ugt i8 %.2.val.i.i.i.i.i.i, 3
  br i1 %i.as, label %_ZN4llvm6any_ofIRNS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEEEEZNK12_GLOBAL__N_19ELFDumperIS6_E18printSymbolsHelperEbbEUlRKS7_E_EEbOT_T0_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i.i.i
  br label %_ZN4llvm6any_ofIRNS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEEEEZNK12_GLOBAL__N_19ELFDumperIS6_E18printSymbolsHelperEbbEUlRKS7_E_EEbOT_T0_.exit

.loopexit.split.loop.exit34.i.i.i.i.i.i:          ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i, i64 24
  br label %_ZN4llvm6any_ofIRNS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEEEEZNK12_GLOBAL__N_19ELFDumperIS6_E18printSymbolsHelperEbbEUlRKS7_E_EEbOT_T0_.exit

.loopexit.split.loop.exit36.i.i.i.i.i.i:          ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i, i64 48
  br label %_ZN4llvm6any_ofIRNS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEEEEZNK12_GLOBAL__N_19ELFDumperIS6_E18printSymbolsHelperEbbEUlRKS7_E_EEbOT_T0_.exit

.loopexit.split.loop.exit38.i.i.i.i.i.i:          ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i, i64 72
  br label %_ZN4llvm6any_ofIRNS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEEEEZNK12_GLOBAL__N_19ELFDumperIS6_E18printSymbolsHelperEbbEUlRKS7_E_EEbOT_T0_.exit

_ZN4llvm6any_ofIRNS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEEEEZNK12_GLOBAL__N_19ELFDumperIS6_E18printSymbolsHelperEbbEUlRKS7_E_EEbOT_T0_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.k, %bb.m, %bb.o, %bb.p, %.loopexit.split.loop.exit34.i.i.i.i.i.i, %.loopexit.split.loop.exit36.i.i.i.i.i.i, %.loopexit.split.loop.exit38.i.i.i.i.i.i
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.m ], [ %i.v, %bb.p ], [ %.2.i.i.i.i.i.i, %bb.o ], [ %.029.lcssa.i.i.i.i.i.i, %bb.k ], [ %i.au, %.loopexit.split.loop.exit36.i.i.i.i.i.i ], [ %i.at, %.loopexit.split.loop.exit34.i.i.i.i.i.i ], [ %i.av, %.loopexit.split.loop.exit38.i.i.i.i.i.i ], [ %.02943.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.aw = icmp ne ptr %i.v, %.028.i.i.i.i.i.i     ; 2 uses
  br i1 %1, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN4llvm6any_ofIRNS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEEEEZNK12_GLOBAL__N_19ELFDumperIS6_E18printSymbolsHelperEbbEUlRKS7_E_EEbOT_T0_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1660
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val = load ptr, ptr %i.az, align 8, !tbaa !1617 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !271
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !272
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bd
  br label %.lr.ph

bb.r:                                             ; preds = %_ZN4llvm6any_ofIRNS_8ArrayRefINS_6object12Elf_Sym_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEEEEZNK12_GLOBAL__N_19ELFDumperIS6_E18printSymbolsHelperEbbEUlRKS7_E_EEbOT_T0_.exit
  %.not.i = icmp eq ptr %.val46, null
  br i1 %.not.i, label %.lr.ph, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1728, !noalias !26489 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1729, !noalias !26489 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1020
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !1730, !noalias !26489 ; 4 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %.loopexit.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = add i32 %i.bk, -1                       ; 2 uses
  %i.bn = ptrtoint ptr %.val46 to i64
  %i.bo = mul i64 %i.bn, -4658895280553007687     ; 2 uses
  %i.bp = lshr i64 %i.bo, 31
  %i.bq = xor i64 %i.bp, %i.bo
  %i.br = trunc i64 %i.bq to i32
  %i.bs = and i32 %i.bm, %i.br                    ; 3 uses
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = lshr i64 %i.bt, 5
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !396, !noalias !26490
  %i.bx = and i32 %i.bs, 31
  %i.by = lshr i32 %i.bw, %i.bx
  %i.bz = trunc i32 %i.by to i1
  br i1 %i.bz, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !507

.lr.ph.i.i.i.i:                                   ; preds = %bb.t, %bb.u
  %i.ca = phi i64 [ %i.cg, %bb.u ], [ %i.bt, %bb.t ]
  %.017.i.i.i.i = phi i32 [ %i.cf, %bb.u ], [ %i.bs, %bb.t ]
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.ca ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1612, !noalias !26490
  %i.cd = icmp eq ptr %i.d, %i.cc
  br i1 %i.cd, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4findES9_.exit.loopexit.i, label %bb.u, !prof !425

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ce = add nuw i32 %.017.i.i.i.i, 1
  %i.cf = and i32 %i.ce, %i.bm                    ; 3 uses
  %i.cg = zext i32 %i.cf to i64                   ; 2 uses
  %i.ch = lshr i64 %i.cg, 5
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !396, !noalias !26490
  %i.ck = and i32 %i.cf, 31
  %i.cl = lshr i32 %i.cj, %i.ck
  %i.cm = trunc i32 %i.cl to i1
  br i1 %i.cm, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !508

.loopexit.i.i.i:                                  ; preds = %bb.u, %bb.t, %bb.s
  %i.cn = zext i32 %i.bk to i64                   ; 2 uses
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.cn
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4findES9_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4findES9_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i = zext i32 %i.bk to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4findES9_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4findES9_.exit.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4findES9_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4findES9_.exit.loopexit.i ], [ %i.cn, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.cb, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4findES9_.exit.loopexit.i ], [ %i.co, %.loopexit.i.i.i ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %.pre-phi.i
  %.not12.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.cp
  br i1 %.not12.i, label %.lr.ph, label %bb.v

bb.v:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4findES9_.exit.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %.sroa.08.0.copyload.i = load ptr, ptr %i.cq, align 8, !tbaa !1240
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 16
  %.sroa.49.0.copyload.i = load i64, ptr %.sroa.49.0..sroa_idx.i, align 8, !tbaa !340
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.q, %bb.r, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4findES9_.exit.i, %bb.v
  %.sroa.826.0 = phi ptr [ %i.be, %bb.q ], [ null, %bb.r ], [ null, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4findES9_.exit.i ], [ null, %bb.v ]
  %.sroa.6.0 = phi i8 [ 0, %bb.q ], [ 1, %bb.r ], [ 1, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4findES9_.exit.i ], [ 1, %bb.v ]
  %.sroa.5.0 = phi i64 [ undef, %bb.q ], [ 0, %bb.r ], [ 0, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4findES9_.exit.i ], [ %.sroa.49.0.copyload.i, %bb.v ]
  %.sroa.0.0 = phi ptr [ %i.ay, %bb.q ], [ null, %bb.r ], [ null, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE0ELb1EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_0ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E4findES9_.exit.i ], [ %.sroa.08.0.copyload.i, %bb.v ]
  %i.cr = load ptr, ptr %0, align 8, !tbaa !250
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 560
  %i.ct = load ptr, ptr %i.cs, align 8
  tail call void %i.ct(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef %i.d, i64 noundef %.0, i1 noundef zeroext %i.aw, i1 noundef zeroext %2) #31
  %i.cu = ptrtoint ptr %.sroa.0.039 to i64
  store ptr %.sroa.0.0, ptr %4, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.826.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.sroa.826.0, ptr %.sroa.826.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 %.sroa.5.040, ptr %.sroa.5.0..sroa_idx34, align 8
  %.sroa.837.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 17
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %bb.w
  %.02053 = phi ptr [ %.sroa.0.039, %.lr.ph ], [ %i.dc, %bb.w ] ; 3 uses
  %i.cv = ptrtoint ptr %.02053 to i64
  %i.cw = sub i64 %i.cv, %i.cu
  %i.cx = sdiv exact i64 %i.cw, 24
  %i.cy = trunc i64 %i.cx to i32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.033, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.837.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %i.a, i64 7, i1 false)
  %i.cz = load ptr, ptr %0, align 8, !tbaa !250
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 568
  %i.db = load ptr, ptr %i.da, align 8
  tail call void %i.db(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef nonnull align 1 dereferenceable(24) %.02053, i32 noundef %i.cy, ptr noundef nonnull byval(%"struct.llvm::object::DataRegion.1459") align 8 %4, ptr noundef nonnull byval(%"class.std::optional.122") align 8 %5, i1 noundef zeroext %1, i1 noundef zeroext %i.aw, i1 noundef zeroext %2) #31
  %i.dc = getelementptr inbounds nuw i8, ptr %.02053, i64 24 ; 2 uses
  %.not21 = icmp eq ptr %i.dc, %i.v
  br i1 %.not21, label %.thread, label %bb.w

.thread:                                          ; preds = %bb.w, %_ZNSt8optionalIN4llvm9StringRefEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit, %bb.c, %_ZNK12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE15dynamic_symbolsEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.033)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i64 } @_ZNK12_GLOBAL__N_113DynRegionInfo13getAsArrayRefIN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb1EEEEEEENS2_8ArrayRefIT_EEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 4 uses
  %2 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 4 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !356    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !266
  call void @_ZNK4llvm6object6Binary18getMemoryBufferRefEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryBufferRef") align 8 %1, ptr noundef nonnull align 8 dereferenceable(48) %i.c) #31
  %i.d = load ptr, ptr %1, align 8, !tbaa !271
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !266
  call void @_ZNK4llvm6object6Binary18getMemoryBufferRefEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryBufferRef") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %i.h) #31
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !272  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !763
  %.fr = freeze i64 %i.l                          ; 5 uses
  %i.m = sub i64 %i.j, %i.g
  %i.n = icmp ugt i64 %.fr, %i.m
  br i1 %i.n, label %_ZN4llvmplERKNS_5TwineES2_.exit109, label %bb.c

_ZN4llvmplERKNS_5TwineES2_.exit109:               ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !267
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.q = inttoptr i64 %i.g to ptr
  store ptr @.str.37, ptr %9, align 8, !alias.scope !26551
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !26551
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 3, ptr %i.s, align 8, !tbaa !352, !alias.scope !26551
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 15, ptr %i.t, align 1, !tbaa !353, !alias.scope !26551
  store ptr %9, ptr %8, align 8, !alias.scope !26552
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @.str.38, ptr %i.u, align 8, !alias.scope !26552
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 2, ptr %i.v, align 8, !tbaa !352, !alias.scope !26552
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 3, ptr %i.w, align 1, !tbaa !353, !alias.scope !26552
  %i.x = inttoptr i64 %.fr to ptr
  store ptr %8, ptr %7, align 8, !alias.scope !26553
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.x, ptr %i.y, align 8, !alias.scope !26553
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 2, ptr %i.z, align 8, !tbaa !352, !alias.scope !26553
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 15, ptr %i.aa, align 1, !tbaa !353, !alias.scope !26553
  store ptr %7, ptr %6, align 8, !alias.scope !26554
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.39, ptr %i.ab, align 8, !alias.scope !26554
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 2, ptr %i.ac, align 8, !tbaa !352, !alias.scope !26554
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 3, ptr %i.ad, align 1, !tbaa !353, !alias.scope !26554
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !340
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.03.0.copyload = load ptr, ptr %i.ae, align 8, !tbaa !355
  store ptr %6, ptr %5, align 8, !alias.scope !26555
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.sroa.03.0.copyload, ptr %i.af, align 8, !alias.scope !26555
  %.sroa.2.0..sroa_idx.i.i.i78 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %.sroa.24.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i.i78, align 8, !tbaa !270, !alias.scope !26555
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 2, ptr %i.ag, align 8, !tbaa !352, !alias.scope !26555
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 5, ptr %i.ah, align 1, !tbaa !353, !alias.scope !26555
  store ptr %5, ptr %4, align 8, !alias.scope !26556
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.40, ptr %i.ai, align 8, !alias.scope !26556
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.aj, align 8, !tbaa !352, !alias.scope !26556
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 3, ptr %i.ak, align 1, !tbaa !353, !alias.scope !26556
  %i.al = inttoptr i64 %i.j to ptr
  store ptr %4, ptr %3, align 8, !alias.scope !26557
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !26557
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 2, ptr %i.an, align 8, !tbaa !352, !alias.scope !26557
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 15, ptr %i.ao, align 1, !tbaa !353, !alias.scope !26557
  call void @_ZNK4llvm9ObjDumper19reportUniqueWarningERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(34) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !810
  %i.ar = icmp eq i64 %i.aq, 24
  %i.as = urem i64 %.fr, 24
  %i.at = icmp eq i64 %i.as, 0
  %or.cond = and i1 %i.at, %i.ar
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.au = sdiv exact i64 %.fr, 24
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.av, ptr %10, align 8, !tbaa !268
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i64 0, ptr %i.aw, align 8, !tbaa !269
  store i8 0, ptr %i.av, align 8, !tbaa !270
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !269 ; 4 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_ZN4llvmplERKNS_5TwineES2_.exit154, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !26558)
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !349, !noalias !26558
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.bc, ptr %11, align 8, !tbaa !268, !alias.scope !26559
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i64 0, ptr %i.bd, align 8, !tbaa !269, !alias.scope !26559
  store i8 0, ptr %i.bc, align 8, !tbaa !270, !alias.scope !26559
  %i.be = add i64 %i.ay, 5
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.be) #31
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !269, !alias.scope !26559
  %i.bg = sub i64 4611686018427387903, %i.bf
  %i.bh = icmp ult i64 %i.bg, %i.ay
  br i1 %i.bh, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.f
  %i.bi = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.bb, i64 noundef %i.ay) #31 ; 0 uses
  %i.bj = load i64, ptr %i.bd, align 8, !tbaa !269, !alias.scope !26559
  %i.bk = add i64 %i.bj, -4611686018427387899
  %i.bl = icmp ult i64 %i.bk, 5
  br i1 %i.bl, label %bb.h, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.41, i64 noundef 5) #31 ; 0 uses
  %i.bn = load i64, ptr %i.bd, align 8, !tbaa !269 ; 2 uses
  %i.bo = load i64, ptr %i.aw, align 8, !tbaa !269
  %i.bp = sub i64 4611686018427387903, %i.bo
  %i.bq = icmp ult i64 %i.bp, %i.bn
  br i1 %i.bq, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.i:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.br = load ptr, ptr %11, align 8, !tbaa !349
  %i.bs = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.br, i64 noundef %i.bn) #31 ; 0 uses
  %i.bt = load ptr, ptr %11, align 8, !tbaa !349  ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.bc
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.bv = load i64, ptr %i.bc, align 8, !tbaa !270
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  %.pre = load i64, ptr %i.k, align 8, !tbaa !763
  br label %_ZN4llvmplERKNS_5TwineES2_.exit154

_ZN4llvmplERKNS_5TwineES2_.exit154:               ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bx = phi i64 [ %.fr, %bb.e ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.01.0.copyload = load ptr, ptr %i.by, align 8, !tbaa !355
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !340
  %i.bz = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i8 3, ptr %i.bz, align 8, !tbaa !352, !alias.scope !26560
  %i.ca = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 5, ptr %i.ca, align 1, !tbaa !353, !alias.scope !26560
  store ptr @.str.42, ptr %16, align 8, !tbaa !270, !alias.scope !26560
  %i.cb = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %.sroa.01.0.copyload, ptr %i.cb, align 8, !tbaa !270, !alias.scope !26560
  %i.cc = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i64 %.sroa.22.0.copyload, ptr %i.cc, align 8, !tbaa !270, !alias.scope !26560
  store ptr %16, ptr %15, align 8, !alias.scope !26561
  %i.cd = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr @.str.43, ptr %i.cd, align 8, !alias.scope !26561
  %i.ce = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 2, ptr %i.ce, align 8, !tbaa !352, !alias.scope !26561
  %i.cf = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 3, ptr %i.cf, align 1, !tbaa !353, !alias.scope !26561
  %i.cg = inttoptr i64 %i.bx to ptr
  store ptr %15, ptr %14, align 8, !alias.scope !26562
  %i.ch = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.cg, ptr %i.ch, align 8, !alias.scope !26562
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 2, ptr %i.ci, align 8, !tbaa !352, !alias.scope !26562
  %i.cj = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 15, ptr %i.cj, align 1, !tbaa !353, !alias.scope !26562
  store ptr %14, ptr %13, align 8, !alias.scope !26563
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr @.str.6, ptr %i.ck, align 8, !alias.scope !26563
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i8 2, ptr %i.cl, align 8, !tbaa !352, !alias.scope !26563
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 3, ptr %i.cm, align 1, !tbaa !353, !alias.scope !26563
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(34) %13) #31
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !269 ; 2 uses
  %i.cp = load i64, ptr %i.aw, align 8, !tbaa !269
  %i.cq = sub i64 4611686018427387903, %i.cp
  %i.cr = icmp ult i64 %i.cq, %i.co
  br i1 %i.cr, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit155

bb.j:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit154
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit155: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit154
  %i.cs = load ptr, ptr %12, align 8, !tbaa !349
  %i.ct = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.cs, i64 noundef %i.co) #31 ; 0 uses
  %i.cu = load ptr, ptr %12, align 8, !tbaa !349  ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit155
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !270
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !272 ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.l, label %_ZN4llvmplERKNS_5TwineES2_.exit203

_ZN4llvmplERKNS_5TwineES2_.exit203:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #31
  %.sroa.0.0.copyload = load ptr, ptr %i.dc, align 8, !tbaa !355
  %i.dd = getelementptr inbounds nuw i8, ptr %21, i64 32
  store i8 3, ptr %i.dd, align 8, !tbaa !352, !alias.scope !26564
  %i.de = getelementptr inbounds nuw i8, ptr %21, i64 33
  store i8 5, ptr %i.de, align 1, !tbaa !353, !alias.scope !26564
  store ptr @.str.44, ptr %21, align 8, !tbaa !270, !alias.scope !26564
  %i.df = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %.sroa.0.0.copyload, ptr %i.df, align 8, !tbaa !270, !alias.scope !26564
  %i.dg = getelementptr inbounds nuw i8, ptr %21, i64 24
  store i64 %i.da, ptr %i.dg, align 8, !tbaa !270, !alias.scope !26564
  store ptr %21, ptr %20, align 8, !alias.scope !26565
  %i.dh = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr @.str.43, ptr %i.dh, align 8, !alias.scope !26565
  %i.di = getelementptr inbounds nuw i8, ptr %20, i64 32
  store i8 2, ptr %i.di, align 8, !tbaa !352, !alias.scope !26565
  %i.dj = getelementptr inbounds nuw i8, ptr %20, i64 33
  store i8 3, ptr %i.dj, align 1, !tbaa !353, !alias.scope !26565
  %i.dk = load i64, ptr %i.ap, align 8, !tbaa !810
  %i.dl = inttoptr i64 %i.dk to ptr
  store ptr %20, ptr %19, align 8, !alias.scope !26566
  %i.dm = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %i.dl, ptr %i.dm, align 8, !alias.scope !26566
  %i.dn = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i8 2, ptr %i.dn, align 8, !tbaa !352, !alias.scope !26566
  %i.do = getelementptr inbounds nuw i8, ptr %19, i64 33
  store i8 15, ptr %i.do, align 1, !tbaa !353, !alias.scope !26566
  store ptr %19, ptr %18, align 8, !alias.scope !26567
  %i.dp = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr @.str.6, ptr %i.dp, align 8, !alias.scope !26567
  %i.dq = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i8 2, ptr %i.dq, align 8, !tbaa !352, !alias.scope !26567
  %i.dr = getelementptr inbounds nuw i8, ptr %18, i64 33
  store i8 3, ptr %i.dr, align 1, !tbaa !353, !alias.scope !26567
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(34) %18) #31
  %i.ds = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !269 ; 2 uses
  %i.du = load i64, ptr %i.aw, align 8, !tbaa !269
  %i.dv = sub i64 4611686018427387903, %i.du
  %i.dw = icmp ult i64 %i.dv, %i.dt
  br i1 %i.dw, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit204

bb.k:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit203
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit204: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit203
  %i.dx = load ptr, ptr %17, align 8, !tbaa !349
  %i.dy = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.dx, i64 noundef %i.dt) #31 ; 0 uses
  %i.dz = load ptr, ptr %17, align 8, !tbaa !349  ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit204
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !270
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit204, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !267
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  %i.eg = getelementptr inbounds nuw i8, ptr %22, i64 32
  store i8 4, ptr %i.eg, align 8, !tbaa !352
  %i.eh = getelementptr inbounds nuw i8, ptr %22, i64 33
  store i8 1, ptr %i.eh, align 1, !tbaa !353
  store ptr %10, ptr %22, align 8, !tbaa !270
  call void @_ZNK4llvm9ObjDumper19reportUniqueWarningERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(72) %i.ef, ptr noundef nonnull align 8 dereferenceable(34) %22) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  %i.ei = load ptr, ptr %10, align 8, !tbaa !349  ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.av
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208: ; preds = %bb.l
  %i.ek = load i64, ptr %i.av, align 8, !tbaa !270
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZN4llvmplERKNS_5TwineES2_.exit109, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210
  %.sroa.5.0 = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210 ], [ 0, %_ZN4llvmplERKNS_5TwineES2_.exit109 ], [ %i.au, %bb.d ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK4llvm10DwarfCFIEH14PrinterContextINS_6object7ELFTypeILNS_10endiannessE0ELb1EEEE22printUnwindInformationEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.llvm::Expected.2276", align 8 ; 9 uses
  %2 = alloca %"class.llvm::Error", align 8       ; 2 uses
  %3 = alloca %"class.llvm::Error", align 8       ; 2 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %5 = alloca %"class.llvm::Expected.2249", align 8 ; 9 uses
  %6 = alloca %"class.llvm::Error", align 8       ; 2 uses
  %7 = alloca %"class.llvm::Expected.148", align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %"class.llvm::Error", align 8       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1748, !nonnull !248, !align !338
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE0ELb1EEEE15program_headersEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.2276") align 8 %1, ptr noundef nonnull align 8 dereferenceable(96) %i.d)
end_hunk_10
begin_hunk_11_@_ZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE29printDynamicRelocationsHelperEvENKUlRNS_13DynRegionInfoEE_clES8_:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.x, align 1, !tbaa !353
  store ptr %5, ptr %4, align 8, !tbaa !270
  call void @_ZNK4llvm9ObjDumper19reportUniqueWarningERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(72) %.0.val, ptr noundef nonnull align 8 dereferenceable(34) %4) #31
  %i.y = load ptr, ptr %5, align 8, !tbaa !349    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !270
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ad = load ptr, ptr %6, align 8, !tbaa !348   ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !250
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) #31, !inline_history !0
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr %3, align 8, !tbaa !1745  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1745 ; 2 uses
  %.not12 = icmp eq ptr %i.ai, %i.ak
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 32
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1746 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1746 ; 2 uses
  %.not1014 = icmp eq ptr %i.ap, %i.ar
  br i1 %.not1014, label %.loopexit, label %.lr.ph17

.lr.ph17:                                         ; preds = %._crit_edge
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 24
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.05.013 = phi ptr [ %i.ai, %.lr.ph ], [ %i.az, %bb.e ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.05.013, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.aw, align 1
  %i.ax = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i.i.i.i) ; 2 uses
  store i64 %i.ax, ptr %7, align 8
  %.0.copyload.i.i.i.i = load i64, ptr %.sroa.05.013, align 1
  %i.ay = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i.i)
  store i64 %i.ay, ptr %i.al, align 8, !tbaa !1695
  store i64 %i.ax, ptr %i.am, align 8, !tbaa !1705
  store i8 0, ptr %i.an, align 8, !tbaa !643
  call fastcc void @_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE17printDynamicRelocERKNS_10RelocationIS5_EE(ptr noundef nonnull align 8 dereferenceable(1152) %.0.val, ptr noundef nonnull align 8 dereferenceable(40) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.05.013, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.az, %i.ak
  br i1 %.not, label %._crit_edge, label %bb.e

bb.f:                                             ; preds = %.lr.ph17, %bb.f
  %.sroa.01.015 = phi ptr [ %i.ap, %.lr.ph17 ], [ %i.bf, %bb.f ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.01.015, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ba, align 1
  %i.bb = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i.i.i.i.i) ; 2 uses
  store i64 %i.bb, ptr %8, align 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.01.015, align 1
  %i.bc = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i.i.i)
  store i64 %i.bc, ptr %i.as, align 8, !tbaa !1695
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !1705
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.01.015, i64 16
  %.0.copyload.i.i.i.i3.i = load i64, ptr %i.bd, align 1
  store i8 1, ptr %i.au, align 8, !tbaa !643
  %i.be = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i.i3.i)
  store i64 %i.be, ptr %i.av, align 8, !tbaa !340
  call fastcc void @_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE17printDynamicRelocERKNS_10RelocationIS5_EE(ptr noundef nonnull align 8 dereferenceable(1152) %.0.val, ptr noundef nonnull align 8 dereferenceable(40) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.01.015, i64 24 ; 2 uses
  %.not10 = icmp eq ptr %i.bf, %i.ar
  br i1 %.not10, label %.loopexit, label %bb.f

.loopexit:                                        ; preds = %bb.f, %._crit_edge, %_ZN4llvm5ErrorD2Ev.exit
  %i.bg = load i8, ptr %i.r, align 8
  %i.bh = trunc i8 %i.bg to i1
  br i1 %i.bh, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1629 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE0ELb1EEELb1EEESaIS6_EED2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1630
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bo) #32
  br label %_ZNSt6vectorIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE0ELb1EEELb1EEESaIS6_EED2Ev.exit.i.i

_ZNSt6vectorIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE0ELb1EEELb1EEESaIS6_EED2Ev.exit.i.i: ; preds = %bb.h, %bb.g
  %i.bp = load ptr, ptr %3, align 8, !tbaa !1635  ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i1.i.i, label %_ZN4llvm8ExpectedISt4pairISt6vectorINS_6object12Elf_Rel_ImplINS3_7ELFTypeILNS_10endiannessE0ELb1EEELb0EEESaIS8_EES2_INS4_IS7_Lb1EEESaISB_EEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE0ELb1EEELb1EEESaIS6_EED2Ev.exit.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1636
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #32
  br label %_ZN4llvm8ExpectedISt4pairISt6vectorINS_6object12Elf_Rel_ImplINS3_7ELFTypeILNS_10endiannessE0ELb1EEELb0EEESaIS8_EES2_INS4_IS7_Lb1EEESaISB_EEEED2Ev.exit

bb.j:                                             ; preds = %.loopexit
  %i.bv = load ptr, ptr %3, align 8, !tbaa !346   ; 3 uses
  %.not.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i, label %_ZN4llvm8ExpectedISt4pairISt6vectorINS_6object12Elf_Rel_ImplINS3_7ELFTypeILNS_10endiannessE0ELb1EEELb0EEESaIS8_EES2_INS4_IS7_Lb1EEESaISB_EEEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.j
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !250
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bv) #31, !inline_history !214
  br label %_ZN4llvm8ExpectedISt4pairISt6vectorINS_6object12Elf_Rel_ImplINS3_7ELFTypeILNS_10endiannessE0ELb1EEELb0EEESaIS8_EES2_INS4_IS7_Lb1EEESaISB_EEEED2Ev.exit

_ZN4llvm8ExpectedISt4pairISt6vectorINS_6object12Elf_Rel_ImplINS3_7ELFTypeILNS_10endiannessE0ELb1EEELb0EEESaIS8_EES2_INS4_IS7_Lb1EEESaISB_EEEED2Ev.exit: ; preds = %_ZNSt6vectorIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE0ELb1EEELb1EEESaIS6_EED2Ev.exit.i.i, %bb.i, %bb.j, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvm8ExpectedISt4pairISt6vectorINS_6object12Elf_Rel_ImplINS3_7ELFTypeILNS_10endiannessE0ELb1EEELb0EEESaIS8_EES2_INS4_IS7_Lb1EEESaISB_EEEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i64 } @_ZNK12_GLOBAL__N_113DynRegionInfo13getAsArrayRefIN4llvm6object12Elf_Rel_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb1EEELb1EEEEENS2_8ArrayRefIT_EEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 4 uses
  %2 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 4 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !356    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !266
  call void @_ZNK4llvm6object6Binary18getMemoryBufferRefEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryBufferRef") align 8 %1, ptr noundef nonnull align 8 dereferenceable(48) %i.c) #31
  %i.d = load ptr, ptr %1, align 8, !tbaa !271
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !266
  call void @_ZNK4llvm6object6Binary18getMemoryBufferRefEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryBufferRef") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %i.h) #31
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !272  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !763
  %.fr = freeze i64 %i.l                          ; 5 uses
  %i.m = sub i64 %i.j, %i.g
  %i.n = icmp ugt i64 %.fr, %i.m
  br i1 %i.n, label %_ZN4llvmplERKNS_5TwineES2_.exit109, label %bb.c

_ZN4llvmplERKNS_5TwineES2_.exit109:               ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !267
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.q = inttoptr i64 %i.g to ptr
  store ptr @.str.37, ptr %9, align 8, !alias.scope !26834
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !26834
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 3, ptr %i.s, align 8, !tbaa !352, !alias.scope !26834
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 15, ptr %i.t, align 1, !tbaa !353, !alias.scope !26834
  store ptr %9, ptr %8, align 8, !alias.scope !26835
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @.str.38, ptr %i.u, align 8, !alias.scope !26835
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 2, ptr %i.v, align 8, !tbaa !352, !alias.scope !26835
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 3, ptr %i.w, align 1, !tbaa !353, !alias.scope !26835
  %i.x = inttoptr i64 %.fr to ptr
  store ptr %8, ptr %7, align 8, !alias.scope !26836
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.x, ptr %i.y, align 8, !alias.scope !26836
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 2, ptr %i.z, align 8, !tbaa !352, !alias.scope !26836
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 15, ptr %i.aa, align 1, !tbaa !353, !alias.scope !26836
  store ptr %7, ptr %6, align 8, !alias.scope !26837
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.39, ptr %i.ab, align 8, !alias.scope !26837
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 2, ptr %i.ac, align 8, !tbaa !352, !alias.scope !26837
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 3, ptr %i.ad, align 1, !tbaa !353, !alias.scope !26837
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !340
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.03.0.copyload = load ptr, ptr %i.ae, align 8, !tbaa !355
  store ptr %6, ptr %5, align 8, !alias.scope !26838
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.sroa.03.0.copyload, ptr %i.af, align 8, !alias.scope !26838
  %.sroa.2.0..sroa_idx.i.i.i78 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %.sroa.24.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i.i78, align 8, !tbaa !270, !alias.scope !26838
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 2, ptr %i.ag, align 8, !tbaa !352, !alias.scope !26838
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 5, ptr %i.ah, align 1, !tbaa !353, !alias.scope !26838
  store ptr %5, ptr %4, align 8, !alias.scope !26839
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.40, ptr %i.ai, align 8, !alias.scope !26839
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.aj, align 8, !tbaa !352, !alias.scope !26839
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 3, ptr %i.ak, align 1, !tbaa !353, !alias.scope !26839
  %i.al = inttoptr i64 %i.j to ptr
  store ptr %4, ptr %3, align 8, !alias.scope !26840
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !26840
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 2, ptr %i.an, align 8, !tbaa !352, !alias.scope !26840
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 15, ptr %i.ao, align 1, !tbaa !353, !alias.scope !26840
  call void @_ZNK4llvm9ObjDumper19reportUniqueWarningERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(34) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !810
  %i.ar = icmp eq i64 %i.aq, 24
  %i.as = urem i64 %.fr, 24
  %i.at = icmp eq i64 %i.as, 0
  %or.cond = and i1 %i.at, %i.ar
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.au = sdiv exact i64 %.fr, 24
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.av, ptr %10, align 8, !tbaa !268
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i64 0, ptr %i.aw, align 8, !tbaa !269
  store i8 0, ptr %i.av, align 8, !tbaa !270
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !269 ; 4 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_ZN4llvmplERKNS_5TwineES2_.exit154, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !26841)
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !349, !noalias !26841
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.bc, ptr %11, align 8, !tbaa !268, !alias.scope !26842
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i64 0, ptr %i.bd, align 8, !tbaa !269, !alias.scope !26842
  store i8 0, ptr %i.bc, align 8, !tbaa !270, !alias.scope !26842
  %i.be = add i64 %i.ay, 5
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.be) #31
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !269, !alias.scope !26842
  %i.bg = sub i64 4611686018427387903, %i.bf
  %i.bh = icmp ult i64 %i.bg, %i.ay
  br i1 %i.bh, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.f
  %i.bi = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.bb, i64 noundef %i.ay) #31 ; 0 uses
  %i.bj = load i64, ptr %i.bd, align 8, !tbaa !269, !alias.scope !26842
  %i.bk = add i64 %i.bj, -4611686018427387899
  %i.bl = icmp ult i64 %i.bk, 5
  br i1 %i.bl, label %bb.h, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.41, i64 noundef 5) #31 ; 0 uses
  %i.bn = load i64, ptr %i.bd, align 8, !tbaa !269 ; 2 uses
  %i.bo = load i64, ptr %i.aw, align 8, !tbaa !269
  %i.bp = sub i64 4611686018427387903, %i.bo
  %i.bq = icmp ult i64 %i.bp, %i.bn
  br i1 %i.bq, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.i:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.br = load ptr, ptr %11, align 8, !tbaa !349
  %i.bs = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.br, i64 noundef %i.bn) #31 ; 0 uses
  %i.bt = load ptr, ptr %11, align 8, !tbaa !349  ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.bc
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.bv = load i64, ptr %i.bc, align 8, !tbaa !270
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  %.pre = load i64, ptr %i.k, align 8, !tbaa !763
  br label %_ZN4llvmplERKNS_5TwineES2_.exit154

_ZN4llvmplERKNS_5TwineES2_.exit154:               ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bx = phi i64 [ %.fr, %bb.e ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.01.0.copyload = load ptr, ptr %i.by, align 8, !tbaa !355
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !340
  %i.bz = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i8 3, ptr %i.bz, align 8, !tbaa !352, !alias.scope !26843
  %i.ca = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 5, ptr %i.ca, align 1, !tbaa !353, !alias.scope !26843
  store ptr @.str.42, ptr %16, align 8, !tbaa !270, !alias.scope !26843
  %i.cb = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %.sroa.01.0.copyload, ptr %i.cb, align 8, !tbaa !270, !alias.scope !26843
  %i.cc = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i64 %.sroa.22.0.copyload, ptr %i.cc, align 8, !tbaa !270, !alias.scope !26843
  store ptr %16, ptr %15, align 8, !alias.scope !26844
  %i.cd = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr @.str.43, ptr %i.cd, align 8, !alias.scope !26844
  %i.ce = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 2, ptr %i.ce, align 8, !tbaa !352, !alias.scope !26844
  %i.cf = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 3, ptr %i.cf, align 1, !tbaa !353, !alias.scope !26844
  %i.cg = inttoptr i64 %i.bx to ptr
  store ptr %15, ptr %14, align 8, !alias.scope !26845
  %i.ch = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.cg, ptr %i.ch, align 8, !alias.scope !26845
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 2, ptr %i.ci, align 8, !tbaa !352, !alias.scope !26845
  %i.cj = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 15, ptr %i.cj, align 1, !tbaa !353, !alias.scope !26845
  store ptr %14, ptr %13, align 8, !alias.scope !26846
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr @.str.6, ptr %i.ck, align 8, !alias.scope !26846
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i8 2, ptr %i.cl, align 8, !tbaa !352, !alias.scope !26846
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 3, ptr %i.cm, align 1, !tbaa !353, !alias.scope !26846
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(34) %13) #31
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !269 ; 2 uses
  %i.cp = load i64, ptr %i.aw, align 8, !tbaa !269
  %i.cq = sub i64 4611686018427387903, %i.cp
  %i.cr = icmp ult i64 %i.cq, %i.co
  br i1 %i.cr, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit155

bb.j:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit154
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit155: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit154
  %i.cs = load ptr, ptr %12, align 8, !tbaa !349
  %i.ct = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.cs, i64 noundef %i.co) #31 ; 0 uses
  %i.cu = load ptr, ptr %12, align 8, !tbaa !349  ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit155
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !270
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !272 ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.l, label %_ZN4llvmplERKNS_5TwineES2_.exit203

_ZN4llvmplERKNS_5TwineES2_.exit203:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #31
  %.sroa.0.0.copyload = load ptr, ptr %i.dc, align 8, !tbaa !355
  %i.dd = getelementptr inbounds nuw i8, ptr %21, i64 32
  store i8 3, ptr %i.dd, align 8, !tbaa !352, !alias.scope !26847
  %i.de = getelementptr inbounds nuw i8, ptr %21, i64 33
  store i8 5, ptr %i.de, align 1, !tbaa !353, !alias.scope !26847
  store ptr @.str.44, ptr %21, align 8, !tbaa !270, !alias.scope !26847
  %i.df = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %.sroa.0.0.copyload, ptr %i.df, align 8, !tbaa !270, !alias.scope !26847
  %i.dg = getelementptr inbounds nuw i8, ptr %21, i64 24
  store i64 %i.da, ptr %i.dg, align 8, !tbaa !270, !alias.scope !26847
  store ptr %21, ptr %20, align 8, !alias.scope !26848
  %i.dh = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr @.str.43, ptr %i.dh, align 8, !alias.scope !26848
  %i.di = getelementptr inbounds nuw i8, ptr %20, i64 32
  store i8 2, ptr %i.di, align 8, !tbaa !352, !alias.scope !26848
  %i.dj = getelementptr inbounds nuw i8, ptr %20, i64 33
  store i8 3, ptr %i.dj, align 1, !tbaa !353, !alias.scope !26848
  %i.dk = load i64, ptr %i.ap, align 8, !tbaa !810
  %i.dl = inttoptr i64 %i.dk to ptr
  store ptr %20, ptr %19, align 8, !alias.scope !26849
  %i.dm = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %i.dl, ptr %i.dm, align 8, !alias.scope !26849
  %i.dn = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i8 2, ptr %i.dn, align 8, !tbaa !352, !alias.scope !26849
  %i.do = getelementptr inbounds nuw i8, ptr %19, i64 33
  store i8 15, ptr %i.do, align 1, !tbaa !353, !alias.scope !26849
  store ptr %19, ptr %18, align 8, !alias.scope !26850
  %i.dp = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr @.str.6, ptr %i.dp, align 8, !alias.scope !26850
  %i.dq = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i8 2, ptr %i.dq, align 8, !tbaa !352, !alias.scope !26850
  %i.dr = getelementptr inbounds nuw i8, ptr %18, i64 33
  store i8 3, ptr %i.dr, align 1, !tbaa !353, !alias.scope !26850
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(34) %18) #31
  %i.ds = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !269 ; 2 uses
  %i.du = load i64, ptr %i.aw, align 8, !tbaa !269
  %i.dv = sub i64 4611686018427387903, %i.du
  %i.dw = icmp ult i64 %i.dv, %i.dt
  br i1 %i.dw, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit204

bb.k:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit203
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #33
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit204: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit203
  %i.dx = load ptr, ptr %17, align 8, !tbaa !349
  %i.dy = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.dx, i64 noundef %i.dt) #31 ; 0 uses
  %i.dz = load ptr, ptr %17, align 8, !tbaa !349  ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit204
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !270
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit204, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !267
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  %i.eg = getelementptr inbounds nuw i8, ptr %22, i64 32
  store i8 4, ptr %i.eg, align 8, !tbaa !352
  %i.eh = getelementptr inbounds nuw i8, ptr %22, i64 33
  store i8 1, ptr %i.eh, align 1, !tbaa !353
  store ptr %10, ptr %22, align 8, !tbaa !270
  call void @_ZNK4llvm9ObjDumper19reportUniqueWarningERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(72) %i.ef, ptr noundef nonnull align 8 dereferenceable(34) %22) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  %i.ei = load ptr, ptr %10, align 8, !tbaa !349  ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.av
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208: ; preds = %bb.l
  %i.ek = load i64, ptr %i.av, align 8, !tbaa !270
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZN4llvmplERKNS_5TwineES2_.exit109, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210
  %.sroa.5.0 = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210 ], [ 0, %_ZN4llvmplERKNS_5TwineES2_.exit109 ], [ %i.au, %bb.d ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE17printDynamicRelocERKNS_10RelocationIS5_EE(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 7 uses
end_hunk_11
