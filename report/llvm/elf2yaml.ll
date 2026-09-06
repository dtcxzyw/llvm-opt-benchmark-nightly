Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/elf2yaml?download=true
inline.NumInlined: 22385
inline.NumDeleted: 8532
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 21
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE1ELb0EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(40) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !2830)
  %i.b = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.9, i64 noundef 8) #22, !noalias !2830 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.c, ptr %7, align 8, !tbaa !82, !alias.scope !2830
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !88   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !85   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  store ptr %i.d, ptr %7, align 8, !tbaa !88, !alias.scope !2830
  %i.k = load i64, ptr %i.e, align 8, !tbaa !86
  store i64 %i.k, ptr %i.c, align 8, !tbaa !86, !alias.scope !2830
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !85
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.l = phi i64 [ %i.h, %bb.c ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !85, !alias.scope !2830
  store ptr %i.e, ptr %i.b, align 8, !tbaa !88
  store i64 0, ptr %i.m, align 8, !tbaa !85
  store i8 0, ptr %i.e, align 8, !tbaa !86
  call void @llvm.experimental.noalias.scope.decl(metadata !2831)
  %i.o = add i64 %i.l, -4611686018427387870
  %i.p = icmp ult i64 %i.o, 34
  br i1 %i.p, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #26, !noalias !2831
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.q = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.10, i64 noundef 34) #22, !noalias !2831 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.r, ptr %6, align 8, !tbaa !82, !alias.scope !2831
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !88   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !85   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.s, ptr %6, align 8, !tbaa !88, !alias.scope !2831
  %i.z = load i64, ptr %i.t, align 8, !tbaa !86
  store i64 %i.z, ptr %i.r, align 8, !tbaa !86, !alias.scope !2831
  %.phi.trans.insert.i25 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i26 = load i64, ptr %.phi.trans.insert.i25, align 8, !tbaa !85
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.e
  %i.aa = phi i64 [ %i.w, %bb.e ], [ %.pre.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !85, !alias.scope !2831
  store ptr %i.t, ptr %i.q, align 8, !tbaa !88
  store i64 0, ptr %i.ab, align 8, !tbaa !85
  store i8 0, ptr %i.t, align 8, !tbaa !86
  store ptr %6, ptr %5, align 8, !alias.scope !2832
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr inttoptr (i64 12 to ptr), ptr %i.ad, align 8, !alias.scope !2832
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 4, ptr %i.ae, align 8, !tbaa !162, !alias.scope !2832
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 11, ptr %i.af, align 1, !tbaa !163, !alias.scope !2832
  store ptr %5, ptr %4, align 8, !alias.scope !2833
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.11, ptr %i.ag, align 8, !alias.scope !2833
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.ah, align 8, !tbaa !162, !alias.scope !2833
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 3, ptr %i.ai, align 1, !tbaa !163, !alias.scope !2833
  %.0.copyload.i.i.i42 = load i32, ptr %i.a, align 1
  %.sroa.0446.0.insert.ext = zext i32 %.0.copyload.i.i.i42 to i64
  %i.aj = inttoptr i64 %.sroa.0446.0.insert.ext to ptr
  store ptr %4, ptr %3, align 8, !alias.scope !2834
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.aj, ptr %i.ak, align 8, !alias.scope !2834
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 2, ptr %i.al, align 8, !tbaa !162, !alias.scope !2834
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 9, ptr %i.am, align 1, !tbaa !163, !alias.scope !2834
  %i.an = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24, !noalias !2835 ; 2 uses
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #22, !noalias !2835
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.an, ptr noundef nonnull align 8 dereferenceable(34) %3, i32 3, ptr nonnull %i.ao) #22, !noalias !2835
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8
  %i.ar = or i8 %i.aq, 1
  store i8 %i.ar, ptr %i.ap, align 8
  store ptr %i.an, ptr %0, align 8, !tbaa !147, !alias.scope !2836
  %i.as = load ptr, ptr %6, align 8, !tbaa !88    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.r
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.au = load i64, ptr %i.r, align 8, !tbaa !86
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  %i.aw = load ptr, ptr %7, align 8, !tbaa !88    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.c
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ay = load i64, ptr %i.c, align 8, !tbaa !86
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  %i.ba = load ptr, ptr %8, align 8, !tbaa !88    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !86
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE1ELb0EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(40) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !2837)
  %i.bk = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.9, i64 noundef 8) #22, !noalias !2837 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr %i.bl, ptr %14, align 8, !tbaa !82, !alias.scope !2837
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !88 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 5 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

bb.h:                                             ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !85 ; 3 uses
  %i.br = icmp ult i64 %i.bq, 16
  call void @llvm.assume(i1 %i.br)
  %i.bs = add nuw nsw i64 %i.bq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bl, ptr noundef nonnull align 8 dereferenceable(1) %i.bn, i64 %i.bs, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.g
  store ptr %i.bm, ptr %14, align 8, !tbaa !88, !alias.scope !2837
  %i.bt = load i64, ptr %i.bn, align 8, !tbaa !86
  store i64 %i.bt, ptr %i.bl, align 8, !tbaa !86, !alias.scope !2837
  %.phi.trans.insert.i68 = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.pre.i69 = load i64, ptr %.phi.trans.insert.i68, align 8, !tbaa !85
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  %i.bu = phi i64 [ %i.bq, %bb.h ], [ %.pre.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.bu, ptr %i.bw, align 8, !tbaa !85, !alias.scope !2837
  store ptr %i.bn, ptr %i.bk, align 8, !tbaa !88
  store i64 0, ptr %i.bv, align 8, !tbaa !85
  store i8 0, ptr %i.bn, align 8, !tbaa !86
  call void @llvm.experimental.noalias.scope.decl(metadata !2838)
  %i.bx = add i64 %i.bu, -4611686018427387879
  %i.by = icmp ult i64 %i.bx, 25
  br i1 %i.by, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71

bb.i:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #26, !noalias !2838
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70
  %i.bz = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.12, i64 noundef 25) #22, !noalias !2838 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr %i.ca, ptr %13, align 8, !tbaa !82, !alias.scope !2838
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !88 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 5 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !85 ; 3 uses
  %i.cg = icmp ult i64 %i.cf, 16
  call void @llvm.assume(i1 %i.cg)
  %i.ch = add nuw nsw i64 %i.cf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ca, ptr noundef nonnull align 8 dereferenceable(1) %i.cc, i64 %i.ch, i1 false)
  br label %_ZN4llvm5ErrorD2Ev.exit137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71
  store ptr %i.cb, ptr %13, align 8, !tbaa !88, !alias.scope !2838
  %i.ci = load i64, ptr %i.cc, align 8, !tbaa !86
  store i64 %i.ci, ptr %i.ca, align 8, !tbaa !86, !alias.scope !2838
  %.phi.trans.insert.i73 = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.pre.i74 = load i64, ptr %.phi.trans.insert.i73, align 8, !tbaa !85
  br label %_ZN4llvm5ErrorD2Ev.exit137

_ZN4llvm5ErrorD2Ev.exit137:                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %bb.j
  %i.cj = phi i64 [ %i.cf, %bb.j ], [ %.pre.i74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.cj, ptr %i.cl, align 8, !tbaa !85, !alias.scope !2838
  store ptr %i.cc, ptr %i.bz, align 8, !tbaa !88
  store i64 0, ptr %i.ck, align 8, !tbaa !85
  store i8 0, ptr %i.cc, align 8, !tbaa !86
  %i.cm = inttoptr i64 %i.bh to ptr
  store ptr %13, ptr %12, align 8, !alias.scope !2839
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.cm, ptr %i.cn, align 8, !alias.scope !2839
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 4, ptr %i.co, align 8, !tbaa !162, !alias.scope !2839
  %i.cp = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 9, ptr %i.cp, align 1, !tbaa !163, !alias.scope !2839
  store ptr %12, ptr %11, align 8, !alias.scope !2840
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr @.str.13, ptr %i.cq, align 8, !alias.scope !2840
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 2, ptr %i.cr, align 8, !tbaa !162, !alias.scope !2840
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 3, ptr %i.cs, align 1, !tbaa !163, !alias.scope !2840
  %.0.copyload.i.i.i106 = load i32, ptr %i.a, align 1
  %.sroa.0422.0.insert.ext = zext i32 %.0.copyload.i.i.i106 to i64
  %i.ct = inttoptr i64 %.sroa.0422.0.insert.ext to ptr
  store ptr %11, ptr %10, align 8, !alias.scope !2841
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.ct, ptr %i.cu, align 8, !alias.scope !2841
  %i.cv = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 2, ptr %i.cv, align 8, !tbaa !162, !alias.scope !2841
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 9, ptr %i.cw, align 1, !tbaa !163, !alias.scope !2841
  store ptr %10, ptr %9, align 8, !alias.scope !2842
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @.str.14, ptr %i.cx, align 8, !alias.scope !2842
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 2, ptr %i.cy, align 8, !tbaa !162, !alias.scope !2842
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 3, ptr %i.cz, align 1, !tbaa !163, !alias.scope !2842
  %i.da = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24, !noalias !2843 ; 2 uses
  %i.db = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #22, !noalias !2843
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.da, ptr noundef nonnull align 8 dereferenceable(34) %9, i32 3, ptr nonnull %i.db) #22, !noalias !2843
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 8
  %i.de = or i8 %i.dd, 1
  store i8 %i.de, ptr %i.dc, align 8
  store ptr %i.da, ptr %0, align 8, !tbaa !147, !alias.scope !2844
  %i.df = load ptr, ptr %13, align 8, !tbaa !88   ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.ca
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZN4llvm5ErrorD2Ev.exit137
  %i.dh = load i64, ptr %i.ca, align 8, !tbaa !86
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %_ZN4llvm5ErrorD2Ev.exit137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  %i.dj = load ptr, ptr %14, align 8, !tbaa !88   ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.bl
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %i.dl = load i64, ptr %i.bl, align 8, !tbaa !86
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  %i.dn = load ptr, ptr %15, align 8, !tbaa !88   ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !86
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.v

bb.k:                                             ; preds = %bb.f
  %i.ds = xor i32 %.0.copyload.i.i.i65, -1
  %i.dt = icmp ugt i32 %.0.copyload.i.i.i66, %i.ds
  br i1 %i.dt, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE1ELb0EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(40) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !2845)
  %i.du = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %22, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.9, i64 noundef 8) #22, !noalias !2845 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  store ptr %i.dv, ptr %21, align 8, !tbaa !82, !alias.scope !2845
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !88 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 5 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

bb.m:                                             ; preds = %bb.l
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !85 ; 3 uses
  %i.eb = icmp ult i64 %i.ea, 16
  call void @llvm.assume(i1 %i.eb)
end_hunk_0
begin_hunk_1_@_ZNSt17_Function_handlerIFN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEEPKNS0_6object13Elf_Shdr_ImplINS6_7ELFTypeILNS0_10endiannessE1ELb0EEEEEEZZN12_GLOBAL__N_19ELFDumperISA_E12dumpSectionsEvENKUljE_clEjEUlSD_E15_E9_M_invokeERKSt9_Any_dataOSD_:bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !3427
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.024.233.i.i.i.i) #22, !noalias !3427, !inline_history !3422
  br label %_ZSt10__invoke_rIN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEERZZN12_GLOBAL__N_19ELFDumperINS0_6object7ELFTypeILNS0_10endiannessE1ELb0EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS8_13Elf_Shdr_ImplISB_EEE15_JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit

_ZSt10__invoke_rIN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEERZZN12_GLOBAL__N_19ELFDumperINS0_6object7ELFTypeILNS0_10endiannessE1ELb0EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS8_13Elf_Shdr_ImplISB_EEE15_JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit: ; preds = %bb.q, %_ZNKSt14default_deleteIN4llvm7ELFYAML25DependentLibrariesSectionEEclEPS2_.exit.i.i.i.i.i
  %.sroa.10.2.i = phi i8 [ %.sroa.10.0.i, %bb.q ], [ %.sroa.10.1.i, %_ZNKSt14default_deleteIN4llvm7ELFYAML25DependentLibrariesSectionEEclEPS2_.exit.i.i.i.i.i ]
  %.sroa.0.2.i = phi ptr [ %.sroa.0.0.i, %bb.q ], [ %.sroa.0.1.i, %_ZNKSt14default_deleteIN4llvm7ELFYAML25DependentLibrariesSectionEEclEPS2_.exit.i.i.i.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cj = and i8 %.sroa.10.2.i, 1
  %i.ck = load i8, ptr %i.ci, align 8, !alias.scope !3425
  %i.cl = and i8 %i.ck, -2
  %i.cm = or disjoint i8 %i.cl, %i.cj
  store i8 %i.cm, ptr %i.ci, align 8, !alias.scope !3425
  store ptr %.sroa.0.2.i, ptr %0, align 8, !tbaa !87, !alias.scope !3425
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEEPKNS0_6object13Elf_Shdr_ImplINS6_7ELFTypeILNS0_10endiannessE1ELb0EEEEEEZZN12_GLOBAL__N_19ELFDumperISA_E12dumpSectionsEvENKUljE_clEjEUlSD_E15_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #16 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE1ELb0EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE15_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !87
  br label %_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE1ELb0EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE15_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !458
  br label %_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE1ELb0EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE15_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8
  store i64 %.val, ptr %0, align 8, !tbaa !169
  br label %_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE1ELb0EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE15_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE1ELb0EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE15_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7ELFYAML25DependentLibrariesSectionD2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm7ELFYAML25DependentLibrariesSectionE, i64 16), ptr %0, align 8, !tbaa !167
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !580, !range !152, !noundef !136
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !580
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseISt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS3_EELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !585  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseISt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS3_EELb0ELb0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !586
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #23
  br label %_ZNSt14_Optional_baseISt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS3_EELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS3_EELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN4llvm7ELFYAML5ChunkD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %0) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7ELFYAML25DependentLibrariesSectionD0Ev(ptr noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm7ELFYAML25DependentLibrariesSectionE, i64 16), ptr %0, align 8, !tbaa !167
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !580, !range !152, !noundef !136
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !580
  br i1 %i.c, label %bb.b, label %_ZN4llvm7ELFYAML25DependentLibrariesSectionD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !585  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm7ELFYAML25DependentLibrariesSectionD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !586
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #23, !inline_history !3430
  br label %_ZN4llvm7ELFYAML25DependentLibrariesSectionD2Ev.exit

_ZN4llvm7ELFYAML25DependentLibrariesSectionD2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN4llvm7ELFYAML5ChunkD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(312) %0) #22, !inline_history !3430
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 312) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm7ELFYAML25DependentLibrariesSection10getEntriesEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.579") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.b = load i8, ptr %i.a, align 8, !tbaa !580, !range !152, !noundef !136
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !461
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !462
  store ptr @.str.48, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 9, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 %i.b, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.f, align 8, !tbaa !463
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt17_Function_handlerIFN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEEPKNS0_6object13Elf_Shdr_ImplINS6_7ELFTypeILNS0_10endiannessE1ELb0EEEEEEZZN12_GLOBAL__N_19ELFDumperISA_E12dumpSectionsEvENKUljE_clEjEUlSD_E16_E9_M_invokeERKSt9_Any_dataOSD_(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.521") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %4 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %5 = alloca %class.anon.475, align 1            ; 3 uses
  %6 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %7 = alloca %"class.llvm::Expected.576", align 8 ; 9 uses
  %8 = alloca %"class.llvm::DataExtractor", align 8 ; 6 uses
  %9 = alloca %"class.llvm::DataExtractor::Cursor", align 8 ; 5 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !3450  ; 2 uses
  %.val2 = load ptr, ptr %2, align 8, !tbaa !148  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3451)
  %i.a = tail call noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #24, !noalias !3452 ; 38 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 19, ptr %i.b, align 8, !tbaa !181, !noalias !3452
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !noalias !3452
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !182, !noalias !3452
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %i.e, align 8, !tbaa !183, !noalias !3452
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 0, ptr %i.f, align 8, !tbaa !185, !noalias !3452
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i8 0, ptr %i.g, align 8, !tbaa !182, !noalias !3452
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i8 0, ptr %i.h, align 8, !tbaa !187, !noalias !3452
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i8 0, ptr %i.i, align 8, !tbaa !182, !noalias !3452
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 5 uses
  store i8 0, ptr %i.j, align 8, !tbaa !189, !noalias !3452
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i8 0, ptr %i.k, align 8, !tbaa !182, !noalias !3452
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store i8 0, ptr %i.l, align 8, !tbaa !182, !noalias !3452
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i8 0, ptr %i.m, align 8, !tbaa !182, !noalias !3452
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store i8 0, ptr %i.n, align 8, !tbaa !182, !noalias !3452
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store i8 0, ptr %i.o, align 8, !tbaa !182, !noalias !3452
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store i8 0, ptr %i.p, align 8, !tbaa !182, !noalias !3452
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 276
  store i8 0, ptr %i.q, align 4, !tbaa !191, !noalias !3452
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm7ELFYAML23CallGraphProfileSectionE, i64 16), ptr %i.a, align 8, !tbaa !167, !noalias !3452
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 304 ; 3 uses
  store i8 0, ptr %i.r, align 8, !tbaa !597, !noalias !3452
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22, !noalias !3453
  call fastcc void @_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE17dumpCommonSectionEPKNS2_13Elf_Shdr_ImplIS5_EERNS1_7ELFYAML7SectionE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(256) %.val, ptr noundef %.val2, ptr noundef nonnull align 8 dereferenceable(280) %i.a), !noalias !3453
  %i.s = load ptr, ptr %6, align 8, !tbaa !165, !noalias !3453 ; 2 uses
  %.not88.i.i.i.i = icmp eq ptr %i.s, null
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !3453
  br i1 %.not88.i.i.i.i, label %_ZN4llvm5ErrorD2Ev.exit24.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML23CallGraphProfileSectionEEclEPS2_.exit.i.i.i.i.i

_ZN4llvm5ErrorD2Ev.exit24.i.i.i.i:                ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !3453
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 216 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !135, !noalias !3453, !nonnull !136, !align !137
  call void @_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE1ELb0EEEE18getSectionContentsERKNS0_13Elf_Shdr_ImplIS4_EE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.576") align 8 %7, ptr noundef nonnull align 8 dereferenceable(96) %i.u, ptr noundef nonnull align 1 dereferenceable(40) %.val2) #22, !noalias !3453
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8, !noalias !3453
  %i.x = trunc i8 %i.w to i1
  br i1 %i.x, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i, label %bb.b

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit24.i.i.i.i
  %i.y = load i64, ptr %7, align 8, !tbaa !147, !noalias !3454
  %i.z = inttoptr i64 %i.y to ptr
  store ptr null, ptr %7, align 8, !tbaa !147, !noalias !3454
  br label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i

bb.b:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit24.i.i.i.i
  %.sroa.064.0.copyload.i.i.i.i = load ptr, ptr %7, align 8, !tbaa !174, !noalias !3453 ; 3 uses
  %.sroa.665.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.665.0.copyload.i.i.i.i = load i64, ptr %.sroa.665.0..sroa_idx.i.i.i.i, align 8, !tbaa !143, !noalias !3453 ; 7 uses
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !135, !noalias !3453, !nonnull !136, !align !137
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !138, !noalias !3453
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 18
  %.0.copyload.i.i.i.i.i.i.i = load i16, ptr %i.ac, align 1, !noalias !3453
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %.sroa.011.0.copyload.i.i.i.i = load i32, ptr %i.ad, align 4, !tbaa !142, !noalias !3453 ; 2 uses
  %.sroa.09.0.copyload.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !174, !noalias !3453 ; 2 uses
  %.sroa.210.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.210.0.copyload.i.i.i.i = load i64, ptr %.sroa.210.0..sroa_idx.i.i.i.i, align 8, !tbaa !143, !noalias !3453
  %i.ae = icmp eq i16 %.0.copyload.i.i.i.i.i.i.i, 8
  %i.af = icmp eq i32 %.sroa.011.0.copyload.i.i.i.i, 1879048234
  %or.cond.i.i.i.i.i = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond.i.i.i.i.i, label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE1ELb0EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i, label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %bb.b
  switch i32 %.sroa.011.0.copyload.i.i.i.i, label %bb.g [
    i32 2, label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE1ELb0EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i
    i32 11, label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE1ELb0EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i
    i32 17, label %bb.c
    i32 9, label %bb.d
    i32 4, label %bb.e
    i32 19, label %bb.c
    i32 6, label %bb.d
    i32 5, label %bb.c
    i32 18, label %bb.c
    i32 1879048191, label %bb.f
    i32 1879002121, label %bb.d
  ]

bb.c:                                             ; preds = %.critedge.i.i.i.i.i, %.critedge.i.i.i.i.i, %.critedge.i.i.i.i.i, %.critedge.i.i.i.i.i
  br label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE1ELb0EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i

bb.d:                                             ; preds = %.critedge.i.i.i.i.i, %.critedge.i.i.i.i.i, %.critedge.i.i.i.i.i
  br label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE1ELb0EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i

bb.e:                                             ; preds = %.critedge.i.i.i.i.i
  br label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE1ELb0EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i

bb.f:                                             ; preds = %.critedge.i.i.i.i.i
  br label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE1ELb0EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i

bb.g:                                             ; preds = %.critedge.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.210.0.copyload.i.i.i.i, 10
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i, label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE1ELb0EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i:      ; preds = %bb.g
  %i.ag = load i64, ptr %.sroa.09.0.copyload.i.i.i.i, align 1
  %i.ah = xor i64 %i.ag, 8313477191008871470
  %i.ai = getelementptr i8, ptr %.sroa.09.0.copyload.i.i.i.i, i64 8
  %i.aj = load i16, ptr %i.ai, align 1
  %i.ak = zext i16 %i.aj to i64
  %i.al = xor i64 %i.ak, 29300
  %i.am = or i64 %i.ah, %i.al
  %i.an = icmp ne i64 %i.am, 0
  %i.ao = zext i1 %i.an to i32
  %bcmp.i.fr.i.i.i.i.i = freeze i32 %i.ao
  %i.ap = icmp eq i32 %bcmp.i.fr.i.i.i.i.i, 0
  %i.aq = zext i1 %i.ap to i64
  br label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE1ELb0EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i

_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE1ELb0EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %.critedge.i.i.i.i.i, %.critedge.i.i.i.i.i, %bb.b
  %.0.i.i.i.i.i = phi i64 [ 2, %bb.f ], [ 16, %.critedge.i.i.i.i.i ], [ 16, %.critedge.i.i.i.i.i ], [ 24, %bb.b ], [ 4, %bb.c ], [ 8, %bb.d ], [ 12, %bb.e ], [ 0, %bb.g ], [ %i.aq, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i ] ; 3 uses
  %i.ar = icmp eq i64 %.sroa.665.0.copyload.i.i.i.i, 0
  br i1 %i.ar, label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE1ELb0EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i
  %i.as = urem i64 %.sroa.665.0.copyload.i.i.i.i, %.0.i.i.i.i.i
  %i.at = udiv i64 %.sroa.665.0.copyload.i.i.i.i, %.0.i.i.i.i.i ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.av = load i8, ptr %i.j, align 8, !tbaa !189, !range !152, !noalias !3453, !noundef !136
  %i.aw = trunc nuw i8 %i.av to i1
  store ptr %.sroa.064.0.copyload.i.i.i.i, ptr %i.au, align 8, !tbaa !174, !noalias !3453
  %.sroa.557.0..sroa_idx58.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 %.sroa.665.0.copyload.i.i.i.i, ptr %.sroa.557.0..sroa_idx58.i.i.i.i, align 8, !tbaa !143, !noalias !3453
  %.sroa.660.0..sroa_idx61.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 0, ptr %.sroa.660.0..sroa_idx61.i.i.i.i, align 8, !tbaa !199, !noalias !3453
  br i1 %i.aw, label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.j, align 8, !tbaa !189, !noalias !3453
  br label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i

bb.k:                                             ; preds = %bb.h
  %i.ax = icmp ugt i64 %i.at, 1152921504606846975
  br i1 %i.ax, label %bb.l, label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #26, !noalias !3453
  unreachable

_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i.i: ; preds = %bb.k
  %.not.i.i.i.i.i.i.i.i = icmp ugt i64 %.0.i.i.i.i.i, %.sroa.665.0.copyload.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EEC2EmRKS3_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i.i
  %i.ay = shl nuw nsw i64 %i.at, 3
  %i.az = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #24, !noalias !3453 ; 5 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.at ; 2 uses
  store i64 0, ptr %i.az, align 8, !noalias !3453
  %i.bb = getelementptr i8, ptr %i.az, i64 8      ; 3 uses
  %i.bc = add nsw i64 %i.at, -1                   ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EEC2EmRKS3_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %bb.m
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bc, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.bb, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !143, !noalias !3453
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EEC2EmRKS3_.exit.i.i.i.i

_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EEC2EmRKS3_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m, %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i.i
  %.sroa.046.1.i.i.i.i = phi ptr [ %i.az, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.az, %bb.m ], [ null, %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i.i ] ; 5 uses
  %.sroa.15.1.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ba, %bb.m ], [ null, %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i.i ] ; 3 uses
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bb, %bb.m ], [ null, %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22, !noalias !3453
  %i.bf = load ptr, ptr %i.t, align 8, !tbaa !135, !noalias !3453, !nonnull !136, !align !137
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !138, !noalias !3453
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 5
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !86, !noalias !3453
  %i.bj = icmp eq i8 %i.bi, 1
  %i.bk = zext i1 %i.bj to i8
  store ptr %.sroa.064.0.copyload.i.i.i.i, ptr %8, align 8, !tbaa !138, !noalias !3453
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.sroa.665.0.copyload.i.i.i.i, ptr %i.bl, align 8, !tbaa !194, !noalias !3453
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 %i.bk, ptr %i.bm, align 8, !tbaa !196, !noalias !3453
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22, !noalias !3453
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %.not8990.i.i.i.i = icmp eq ptr %.sroa.046.1.i.i.i.i, %.0.i.i.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false), !noalias !3453
  br i1 %.not8990.i.i.i.i, label %.critedge22.i.i.i.i, label %.critedge20.i.i.i.i

bb.n:                                             ; preds = %.critedge20.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.041.091.i.i.i.i, i64 8 ; 2 uses
  %.not89.i.i.i.i = icmp eq ptr %i.bo, %.0.i.i.i.i.i.i.i.i.i
  br i1 %.not89.i.i.i.i, label %.critedge22.i.i.i.i, label %.critedge20.i.i.i.i

.critedge20.i.i.i.i:                              ; preds = %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EEC2EmRKS3_.exit.i.i.i.i, %bb.n
  %.sroa.041.091.i.i.i.i = phi ptr [ %i.bo, %bb.n ], [ %.sroa.046.1.i.i.i.i, %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EEC2EmRKS3_.exit.i.i.i.i ] ; 2 uses
  %i.bp = call noundef i64 @_ZNK4llvm13DataExtractor6getU64EPmPNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(17) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %i.bn) #22, !noalias !3453
  store i64 %i.bp, ptr %.sroa.041.091.i.i.i.i, align 8, !tbaa !599, !noalias !3453
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !165, !noalias !3453 ; 2 uses
  %.not.i.i26.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i26.i.i.i.i, label %bb.n, label %bb.o

bb.o:                                             ; preds = %.critedge20.i.i.i.i
  store ptr null, ptr %i.bn, align 8, !tbaa !165, !noalias !3455
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !3453
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !3453
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !3453
  store ptr %i.bq, ptr %4, align 8, !tbaa !165, !noalias !3453
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %3, ptr nofree noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5), !noalias !3453
  %i.br = load ptr, ptr %4, align 8, !tbaa !165, !noalias !3453 ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !167, !noalias !3453
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !3453
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.br) #22, !noalias !3453, !inline_history !3445
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !3453
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !3453
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !3453
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.bx = load i8, ptr %i.j, align 8, !tbaa !189, !range !152, !noalias !3453, !noundef !136
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit29.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 1, ptr %i.j, align 8, !tbaa !189, !noalias !3453
  br label %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit29.i.i.i.i

_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit29.i.i.i.i: ; preds = %bb.r, %bb.q
  store ptr %.sroa.064.0.copyload.i.i.i.i, ptr %i.bw, align 8, !tbaa !174, !noalias !3453
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 %.sroa.665.0.copyload.i.i.i.i, ptr %i.bz, align 8, !tbaa !143, !noalias !3453
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 0, ptr %i.ca, align 8, !tbaa !199, !noalias !3453
  %i.cb = ptrtoint ptr %.sroa.15.1.i.i.i.i to i64
  br label %_ZNSt8optionalISt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS3_EEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i.i

.critedge22.i.i.i.i:                              ; preds = %bb.n, %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EEC2EmRKS3_.exit.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 280 ; 3 uses
  %i.cd = load i8, ptr %i.r, align 8, !tbaa !597, !range !152, !noalias !3453, !noundef !136
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 288 ; 2 uses
  br i1 %i.ce, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.critedge22.i.i.i.i
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !602, !noalias !3453 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 296 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !603, !noalias !3453
  store ptr %.sroa.046.1.i.i.i.i, ptr %i.cc, align 8, !tbaa !602, !noalias !3453
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.cf, align 8, !tbaa !604, !noalias !3453
  store ptr %.sroa.15.1.i.i.i.i, ptr %i.ch, align 8, !tbaa !603, !noalias !3453
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8optionalISt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS3_EEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23, !noalias !3453
  br label %_ZNSt8optionalISt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS3_EEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i.i

bb.u:                                             ; preds = %.critedge22.i.i.i.i
  store ptr %.sroa.046.1.i.i.i.i, ptr %i.cc, align 8, !tbaa !602, !noalias !3453
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.cf, align 8, !tbaa !604, !noalias !3453
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store ptr %.sroa.15.1.i.i.i.i, ptr %i.cm, align 8, !tbaa !603, !noalias !3453
  store i8 1, ptr %i.r, align 8, !tbaa !597, !noalias !3453
  br label %_ZNSt8optionalISt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS3_EEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i.i

_ZNSt8optionalISt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS3_EEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i.i: ; preds = %bb.u, %bb.t, %bb.s, %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit29.i.i.i.i
  %.sroa.046.0.i.i.i.i = phi ptr [ %.sroa.046.1.i.i.i.i, %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit29.i.i.i.i ], [ null, %bb.u ], [ null, %bb.t ], [ null, %bb.s ] ; 3 uses
  %.sroa.15.0.i.i.i.i = phi i64 [ %i.cb, %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit29.i.i.i.i ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ]
  %i.cn = load ptr, ptr %i.bn, align 8, !tbaa !165, !noalias !3453 ; 3 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %_ZN4llvm13DataExtractor6CursorD2Ev.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt8optionalISt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS3_EEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i.i
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !167, !noalias !3453
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !3453
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %i.cn) #22, !noalias !3453, !inline_history !3446
  br label %_ZN4llvm13DataExtractor6CursorD2Ev.exit.i.i.i.i

_ZN4llvm13DataExtractor6CursorD2Ev.exit.i.i.i.i:  ; preds = %bb.v, %_ZNSt8optionalISt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS3_EEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22, !noalias !3453
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !3453
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.046.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm13DataExtractor6CursorD2Ev.exit.i.i.i.i
  %i.cs = ptrtoint ptr %.sroa.046.0.i.i.i.i to i64
  %i.ct = sub i64 %.sroa.15.0.i.i.i.i, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.046.0.i.i.i.i, i64 noundef %i.ct) #23, !noalias !3453
  br label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i

_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i: ; preds = %bb.w, %_ZN4llvm13DataExtractor6CursorD2Ev.exit.i.i.i.i, %bb.j, %bb.i, %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE1ELb0EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i
  %.sroa.10.1.i = phi i8 [ -1, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i ], [ 0, %bb.w ], [ 0, %_ZN4llvm13DataExtractor6CursorD2Ev.exit.i.i.i.i ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE1ELb0EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.z, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i ], [ %i.a, %bb.w ], [ %i.a, %_ZN4llvm13DataExtractor6CursorD2Ev.exit.i.i.i.i ], [ %i.a, %bb.j ], [ %i.a, %bb.i ], [ %i.a, %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE1ELb0EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i ] ; 2 uses
  %.sroa.074.3.i.i.i.i = phi ptr [ %i.a, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i ], [ null, %bb.w ], [ null, %_ZN4llvm13DataExtractor6CursorD2Ev.exit.i.i.i.i ], [ null, %bb.j ], [ null, %bb.i ], [ null, %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE1ELb0EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i ] ; 2 uses
  %i.cu = load i8, ptr %i.v, align 8, !noalias !3453
  %i.cv = trunc i8 %i.cu to i1
  br i1 %i.cv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i
  %i.cw = load ptr, ptr %7, align 8, !tbaa !147, !noalias !3453 ; 3 uses
  %.not.i.i32.i.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i32.i.i.i.i, label %bb.y, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.x
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !167, !noalias !3453
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !noalias !3453
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.cw) #22, !noalias !3453, !inline_history !3447
  br label %bb.y

bb.y:                                             ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i, %bb.x, %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !3453
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.074.3.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZSt10__invoke_rIN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEERZZN12_GLOBAL__N_19ELFDumperINS0_6object7ELFTypeILNS0_10endiannessE1ELb0EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS8_13Elf_Shdr_ImplISB_EEE16_JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit, label %_ZNKSt14default_deleteIN4llvm7ELFYAML23CallGraphProfileSectionEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm7ELFYAML23CallGraphProfileSectionEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.y, %bb.a
  %.sroa.10.2.i = phi i8 [ %.sroa.10.1.i, %bb.y ], [ -1, %bb.a ]
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.i, %bb.y ], [ %i.s, %bb.a ]
  %.sroa.074.487.i.i.i.i = phi ptr [ %.sroa.074.3.i.i.i.i, %bb.y ], [ %i.a, %bb.a ] ; 2 uses
  %i.da = load ptr, ptr %.sroa.074.487.i.i.i.i, align 8, !tbaa !167, !noalias !3453
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !3453
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.074.487.i.i.i.i) #22, !noalias !3453, !inline_history !3448
  br label %_ZSt10__invoke_rIN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEERZZN12_GLOBAL__N_19ELFDumperINS0_6object7ELFTypeILNS0_10endiannessE1ELb0EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS8_13Elf_Shdr_ImplISB_EEE16_JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit

_ZSt10__invoke_rIN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEERZZN12_GLOBAL__N_19ELFDumperINS0_6object7ELFTypeILNS0_10endiannessE1ELb0EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS8_13Elf_Shdr_ImplISB_EEE16_JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit: ; preds = %bb.y, %_ZNKSt14default_deleteIN4llvm7ELFYAML23CallGraphProfileSectionEEclEPS2_.exit.i.i.i.i.i
  %.sroa.10.3.i = phi i8 [ %.sroa.10.1.i, %bb.y ], [ %.sroa.10.2.i, %_ZNKSt14default_deleteIN4llvm7ELFYAML23CallGraphProfileSectionEEclEPS2_.exit.i.i.i.i.i ]
  %.sroa.0.2.i = phi ptr [ %.sroa.0.0.i, %bb.y ], [ %.sroa.0.1.i, %_ZNKSt14default_deleteIN4llvm7ELFYAML23CallGraphProfileSectionEEclEPS2_.exit.i.i.i.i.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.de = and i8 %.sroa.10.3.i, 1
  %i.df = load i8, ptr %i.dd, align 8, !alias.scope !3451
  %i.dg = and i8 %i.df, -2
  %i.dh = or disjoint i8 %i.dg, %i.de
  store i8 %i.dh, ptr %i.dd, align 8, !alias.scope !3451
  store ptr %.sroa.0.2.i, ptr %0, align 8, !tbaa !87, !alias.scope !3451
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEEPKNS0_6object13Elf_Shdr_ImplINS6_7ELFTypeILNS0_10endiannessE1ELb0EEEEEEZZN12_GLOBAL__N_19ELFDumperISA_E12dumpSectionsEvENKUljE_clEjEUlSD_E16_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #16 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE1ELb0EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE16_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !87
  br label %_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE1ELb0EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE16_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !458
  br label %_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE1ELb0EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE16_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8
  store i64 %.val, ptr %0, align 8, !tbaa !169
  br label %_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE1ELb0EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE16_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE1ELb0EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE16_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7ELFYAML23CallGraphProfileSectionD2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm7ELFYAML23CallGraphProfileSectionE, i64 16), ptr %0, align 8, !tbaa !167
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !597, !range !152, !noundef !136
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !597
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseISt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS3_EELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !602  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseISt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS3_EELb0ELb0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !603
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #23
  br label %_ZNSt14_Optional_baseISt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS3_EELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS3_EELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN4llvm7ELFYAML5ChunkD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %0) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7ELFYAML23CallGraphProfileSectionD0Ev(ptr noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm7ELFYAML23CallGraphProfileSectionE, i64 16), ptr %0, align 8, !tbaa !167
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !597, !range !152, !noundef !136
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !597
  br i1 %i.c, label %bb.b, label %_ZN4llvm7ELFYAML23CallGraphProfileSectionD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !602  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm7ELFYAML23CallGraphProfileSectionD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !603
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #23, !inline_history !3456
  br label %_ZN4llvm7ELFYAML23CallGraphProfileSectionD2Ev.exit

_ZN4llvm7ELFYAML23CallGraphProfileSectionD2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN4llvm7ELFYAML5ChunkD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(312) %0) #22, !inline_history !3456
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 312) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm7ELFYAML23CallGraphProfileSection10getEntriesEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.579") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.b = load i8, ptr %i.a, align 8, !tbaa !597, !range !152, !noundef !136
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !461
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !462
  store ptr @.str.26, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 7, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 %i.b, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.f, align 8, !tbaa !463
  ret void
}

declare noundef i64 @_ZNK4llvm13DataExtractor6getU64EPmPNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt17_Function_handlerIFN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEEPKNS0_6object13Elf_Shdr_ImplINS6_7ELFTypeILNS0_10endiannessE1ELb0EEEEEEZZN12_GLOBAL__N_19ELFDumperISA_E12dumpSectionsEvENKUljE_clEjEUlSD_E17_E9_M_invokeERKSt9_Any_dataOSD_(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.521") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %4 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %5 = alloca %class.anon.475, align 1            ; 3 uses
  %i.a = alloca i16, align 2                      ; 6 uses
  %6 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %7 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %8 = alloca %"class.llvm::Expected.576", align 8 ; 9 uses
  %9 = alloca %"class.llvm::DataExtractor", align 8 ; 27 uses
  %10 = alloca %"class.std::vector.1120", align 16 ; 12 uses
  %11 = alloca %"class.std::vector.1135", align 8 ; 9 uses
  %12 = alloca %"class.llvm::DataExtractor::Cursor", align 8 ; 27 uses
  %13 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %17 = alloca %"class.std::vector.1147", align 16 ; 10 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE0ELb0EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(40) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !4866)
  %i.b = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.9, i64 noundef 8) #22, !noalias !4866 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.c, ptr %7, align 8, !tbaa !82, !alias.scope !4866
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !88   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !85   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  store ptr %i.d, ptr %7, align 8, !tbaa !88, !alias.scope !4866
  %i.k = load i64, ptr %i.e, align 8, !tbaa !86
  store i64 %i.k, ptr %i.c, align 8, !tbaa !86, !alias.scope !4866
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !85
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.l = phi i64 [ %i.h, %bb.c ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !85, !alias.scope !4866
  store ptr %i.e, ptr %i.b, align 8, !tbaa !88
  store i64 0, ptr %i.m, align 8, !tbaa !85
  store i8 0, ptr %i.e, align 8, !tbaa !86
  call void @llvm.experimental.noalias.scope.decl(metadata !4867)
  %i.o = add i64 %i.l, -4611686018427387870
  %i.p = icmp ult i64 %i.o, 34
  br i1 %i.p, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #26, !noalias !4867
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.q = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.10, i64 noundef 34) #22, !noalias !4867 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.r, ptr %6, align 8, !tbaa !82, !alias.scope !4867
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !88   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !85   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.s, ptr %6, align 8, !tbaa !88, !alias.scope !4867
  %i.z = load i64, ptr %i.t, align 8, !tbaa !86
  store i64 %i.z, ptr %i.r, align 8, !tbaa !86, !alias.scope !4867
  %.phi.trans.insert.i25 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i26 = load i64, ptr %.phi.trans.insert.i25, align 8, !tbaa !85
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.e
  %i.aa = phi i64 [ %i.w, %bb.e ], [ %.pre.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !85, !alias.scope !4867
  store ptr %i.t, ptr %i.q, align 8, !tbaa !88
  store i64 0, ptr %i.ab, align 8, !tbaa !85
  store i8 0, ptr %i.t, align 8, !tbaa !86
  store ptr %6, ptr %5, align 8, !alias.scope !4868
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr inttoptr (i64 12 to ptr), ptr %i.ad, align 8, !alias.scope !4868
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 4, ptr %i.ae, align 8, !tbaa !162, !alias.scope !4868
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 11, ptr %i.af, align 1, !tbaa !163, !alias.scope !4868
  store ptr %5, ptr %4, align 8, !alias.scope !4869
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.11, ptr %i.ag, align 8, !alias.scope !4869
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.ah, align 8, !tbaa !162, !alias.scope !4869
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 3, ptr %i.ai, align 1, !tbaa !163, !alias.scope !4869
  %.0.copyload.i.i.i42 = load i32, ptr %i.a, align 1
  %i.aj = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i42)
  %.sroa.0446.0.insert.ext = zext i32 %i.aj to i64
  %i.ak = inttoptr i64 %.sroa.0446.0.insert.ext to ptr
  store ptr %4, ptr %3, align 8, !alias.scope !4870
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ak, ptr %i.al, align 8, !alias.scope !4870
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 2, ptr %i.am, align 8, !tbaa !162, !alias.scope !4870
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 9, ptr %i.an, align 1, !tbaa !163, !alias.scope !4870
  %i.ao = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24, !noalias !4871 ; 2 uses
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #22, !noalias !4871
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.ao, ptr noundef nonnull align 8 dereferenceable(34) %3, i32 3, ptr nonnull %i.ap) #22, !noalias !4871
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8
  %i.as = or i8 %i.ar, 1
  store i8 %i.as, ptr %i.aq, align 8
  store ptr %i.ao, ptr %0, align 8, !tbaa !147, !alias.scope !4872
  %i.at = load ptr, ptr %6, align 8, !tbaa !88    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.r
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.av = load i64, ptr %i.r, align 8, !tbaa !86
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  %i.ax = load ptr, ptr %7, align 8, !tbaa !88    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.c
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.az = load i64, ptr %i.c, align 8, !tbaa !86
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  %i.bb = load ptr, ptr %8, align 8, !tbaa !88    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !86
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE0ELb0EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(40) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !4873)
  %i.bn = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.9, i64 noundef 8) #22, !noalias !4873 ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr %i.bo, ptr %14, align 8, !tbaa !82, !alias.scope !4873
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !88 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 5 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

bb.h:                                             ; preds = %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !85 ; 3 uses
  %i.bu = icmp ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bu)
  %i.bv = add nuw nsw i64 %i.bt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bo, ptr noundef nonnull align 8 dereferenceable(1) %i.bq, i64 %i.bv, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.g
  store ptr %i.bp, ptr %14, align 8, !tbaa !88, !alias.scope !4873
  %i.bw = load i64, ptr %i.bq, align 8, !tbaa !86
  store i64 %i.bw, ptr %i.bo, align 8, !tbaa !86, !alias.scope !4873
  %.phi.trans.insert.i68 = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.pre.i69 = load i64, ptr %.phi.trans.insert.i68, align 8, !tbaa !85
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  %i.bx = phi i64 [ %i.bt, %bb.h ], [ %.pre.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.bx, ptr %i.bz, align 8, !tbaa !85, !alias.scope !4873
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !88
  store i64 0, ptr %i.by, align 8, !tbaa !85
  store i8 0, ptr %i.bq, align 8, !tbaa !86
  call void @llvm.experimental.noalias.scope.decl(metadata !4874)
  %i.ca = add i64 %i.bx, -4611686018427387879
  %i.cb = icmp ult i64 %i.ca, 25
  br i1 %i.cb, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71

bb.i:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #26, !noalias !4874
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70
  %i.cc = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.12, i64 noundef 25) #22, !noalias !4874 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr %i.cd, ptr %13, align 8, !tbaa !82, !alias.scope !4874
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !88 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 5 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !85 ; 3 uses
  %i.cj = icmp ult i64 %i.ci, 16
  call void @llvm.assume(i1 %i.cj)
  %i.ck = add nuw nsw i64 %i.ci, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cd, ptr noundef nonnull align 8 dereferenceable(1) %i.cf, i64 %i.ck, i1 false)
  br label %_ZN4llvm5ErrorD2Ev.exit137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71
  store ptr %i.ce, ptr %13, align 8, !tbaa !88, !alias.scope !4874
  %i.cl = load i64, ptr %i.cf, align 8, !tbaa !86
  store i64 %i.cl, ptr %i.cd, align 8, !tbaa !86, !alias.scope !4874
  %.phi.trans.insert.i73 = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.pre.i74 = load i64, ptr %.phi.trans.insert.i73, align 8, !tbaa !85
  br label %_ZN4llvm5ErrorD2Ev.exit137

_ZN4llvm5ErrorD2Ev.exit137:                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %bb.j
  %i.cm = phi i64 [ %i.ci, %bb.j ], [ %.pre.i74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.cm, ptr %i.co, align 8, !tbaa !85, !alias.scope !4874
  store ptr %i.cf, ptr %i.cc, align 8, !tbaa !88
  store i64 0, ptr %i.cn, align 8, !tbaa !85
  store i8 0, ptr %i.cf, align 8, !tbaa !86
  %i.cp = inttoptr i64 %i.bk to ptr
  store ptr %13, ptr %12, align 8, !alias.scope !4875
  %i.cq = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.cp, ptr %i.cq, align 8, !alias.scope !4875
  %i.cr = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 4, ptr %i.cr, align 8, !tbaa !162, !alias.scope !4875
  %i.cs = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 9, ptr %i.cs, align 1, !tbaa !163, !alias.scope !4875
  store ptr %12, ptr %11, align 8, !alias.scope !4876
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr @.str.13, ptr %i.ct, align 8, !alias.scope !4876
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 2, ptr %i.cu, align 8, !tbaa !162, !alias.scope !4876
  %i.cv = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 3, ptr %i.cv, align 1, !tbaa !163, !alias.scope !4876
  %.0.copyload.i.i.i106 = load i32, ptr %i.a, align 1
  %i.cw = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i106)
  %.sroa.0422.0.insert.ext = zext i32 %i.cw to i64
  %i.cx = inttoptr i64 %.sroa.0422.0.insert.ext to ptr
  store ptr %11, ptr %10, align 8, !alias.scope !4877
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.cx, ptr %i.cy, align 8, !alias.scope !4877
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 2, ptr %i.cz, align 8, !tbaa !162, !alias.scope !4877
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 9, ptr %i.da, align 1, !tbaa !163, !alias.scope !4877
  store ptr %10, ptr %9, align 8, !alias.scope !4878
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @.str.14, ptr %i.db, align 8, !alias.scope !4878
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 2, ptr %i.dc, align 8, !tbaa !162, !alias.scope !4878
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 3, ptr %i.dd, align 1, !tbaa !163, !alias.scope !4878
  %i.de = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24, !noalias !4879 ; 2 uses
  %i.df = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #22, !noalias !4879
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.de, ptr noundef nonnull align 8 dereferenceable(34) %9, i32 3, ptr nonnull %i.df) #22, !noalias !4879
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 8
  %i.di = or i8 %i.dh, 1
  store i8 %i.di, ptr %i.dg, align 8
  store ptr %i.de, ptr %0, align 8, !tbaa !147, !alias.scope !4880
  %i.dj = load ptr, ptr %13, align 8, !tbaa !88   ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.cd
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZN4llvm5ErrorD2Ev.exit137
  %i.dl = load i64, ptr %i.cd, align 8, !tbaa !86
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %_ZN4llvm5ErrorD2Ev.exit137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  %i.dn = load ptr, ptr %14, align 8, !tbaa !88   ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.bo
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %i.dp = load i64, ptr %i.bo, align 8, !tbaa !86
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  %i.dr = load ptr, ptr %15, align 8, !tbaa !88   ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !86
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.v

bb.k:                                             ; preds = %bb.f
  %i.dw = xor i32 %i.bh, -1
  %i.dx = icmp ugt i32 %i.bj, %i.dw
  br i1 %i.dx, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE0ELb0EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(40) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !4881)
  %i.dy = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %22, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.9, i64 noundef 8) #22, !noalias !4881 ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  store ptr %i.dz, ptr %21, align 8, !tbaa !82, !alias.scope !4881
  %i.ea = load ptr, ptr %i.dy, align 8, !tbaa !88 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 5 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

bb.m:                                             ; preds = %bb.l
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !85 ; 3 uses
  %i.ef = icmp ult i64 %i.ee, 16
end_hunk_2
begin_hunk_3_@_ZNSt17_Function_handlerIFN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEEPKNS0_6object13Elf_Shdr_ImplINS6_7ELFTypeILNS0_10endiannessE0ELb0EEEEEEZZN12_GLOBAL__N_19ELFDumperISA_E12dumpSectionsEvENKUljE_clEjEUlSD_E15_E9_M_invokeERKSt9_Any_dataOSD_:bb.a
  %i.bh = call i64 @llvm.umin.i64(i64 %i.bf, i64 576460752303423487)
  %i.bi = select i1 %i.bg, i64 576460752303423487, i64 %i.bh ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.bi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.bj = shl nuw nsw i64 %i.bi, 4
  %i.bk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #24, !noalias !5430 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bc ; 2 uses
  store ptr %.035.i.i.i.i, ptr %i.bl, align 8, !tbaa !174, !noalias !5430
  %.sroa.2.0..sroa_idx.i16.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i16.i.i.i.i.i.i, align 8, !tbaa !143, !noalias !5430
  %.not10.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.av, %i.aw
  br i1 %.not10.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNKSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.bk, %_ZNKSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.av, %_ZNKSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !339, !alias.scope !5432, !noalias !5430
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.aw
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !21

_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNKSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bk, %_ZNKSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i24.i.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i24.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE17_M_realloc_insertIJRNS0_9StringRefEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23.i.i.i.i.i.i
  %i.bp = load ptr, ptr %i.au, align 8, !tbaa !586, !noalias !5430
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.br) #23, !noalias !5430
  br label %_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE17_M_realloc_insertIJRNS0_9StringRefEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE17_M_realloc_insertIJRNS0_9StringRefEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.n, %_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23.i.i.i.i.i.i
  store ptr %i.bk, ptr %i.aj, align 8, !tbaa !585, !noalias !5430
  store ptr %i.bo, ptr %i.at, align 8, !tbaa !587, !noalias !5430
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.bi ; 2 uses
  store ptr %i.bs, ptr %i.au, align 8, !tbaa !586, !noalias !5430
  br label %_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE12emplace_backIJRNS0_9StringRefEEEERS2_DpOT_.exit.i.i.i.i

_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE12emplace_backIJRNS0_9StringRefEEEERS2_DpOT_.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE17_M_realloc_insertIJRNS0_9StringRefEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i, %bb.k
  %i.bt = phi ptr [ %i.av, %bb.k ], [ %i.bk, %_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE17_M_realloc_insertIJRNS0_9StringRefEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i ]
  %i.bu = phi ptr [ %i.aw, %bb.k ], [ %i.bs, %_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE17_M_realloc_insertIJRNS0_9StringRefEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i ]
  %i.bv = phi ptr [ %i.az, %bb.k ], [ %i.bo, %_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE17_M_realloc_insertIJRNS0_9StringRefEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i ]
  %i.bw = getelementptr i8, ptr %.035.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i
  %i.bx = getelementptr i8, ptr %i.bw, i64 1      ; 2 uses
  %i.by = icmp ult ptr %i.bx, %i.as
  br i1 %i.by, label %bb.i, label %._crit_edge.i.i.i.i, !llvm.loop !5423

bb.o:                                             ; preds = %._crit_edge.i.i.i.i, %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIRNS0_8ArrayRefIhEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS2_ESA_IS2_NSt5decayISD_E4typeEEEEESt16is_constructibleIS2_JSD_EESt13is_assignableIRS2_SD_EEERS3_E4typeEOSD_.exit.i.i.i.i, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i
  %.sroa.10.0.i = phi i8 [ -1, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i ], [ 0, %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIRNS0_8ArrayRefIhEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS2_ESA_IS2_NSt5decayISD_E4typeEEEEESt16is_constructibleIS2_JSD_EESt13is_assignableIRS2_SD_EEERS3_E4typeEOSD_.exit.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.z, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i ], [ %i.a, %._crit_edge.i.i.i.i ], [ %i.a, %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIRNS0_8ArrayRefIhEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS2_ESA_IS2_NSt5decayISD_E4typeEEEEESt16is_constructibleIS2_JSD_EESt13is_assignableIRS2_SD_EEERS3_E4typeEOSD_.exit.i.i.i.i ] ; 2 uses
  %i.bz = phi i8 [ %i.w, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.w, %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIRNS0_8ArrayRefIhEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS2_ESA_IS2_NSt5decayISD_E4typeEEEEESt16is_constructibleIS2_JSD_EESt13is_assignableIRS2_SD_EEERS3_E4typeEOSD_.exit.i.i.i.i ]
  %.sroa.024.1.i.i.i.i = phi ptr [ %i.a, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i ], [ null, %._crit_edge.i.i.i.i ], [ null, %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIRNS0_8ArrayRefIhEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS2_ESA_IS2_NSt5decayISD_E4typeEEEEESt16is_constructibleIS2_JSD_EESt13is_assignableIRS2_SD_EEERS3_E4typeEOSD_.exit.i.i.i.i ] ; 2 uses
  %i.ca = trunc i8 %i.bz to i1
  br i1 %i.ca, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cb = load ptr, ptr %4, align 8, !tbaa !147, !noalias !5430 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i.i, label %bb.q, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.p
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !167, !noalias !5430
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !5430
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %i.cb) #22, !noalias !5430, !inline_history !5424
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i, %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !5430
  %.not.i12.i.i.i.i = icmp eq ptr %.sroa.024.1.i.i.i.i, null
  br i1 %.not.i12.i.i.i.i, label %_ZSt10__invoke_rIN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEERZZN12_GLOBAL__N_19ELFDumperINS0_6object7ELFTypeILNS0_10endiannessE0ELb0EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS8_13Elf_Shdr_ImplISB_EEE15_JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit, label %_ZNKSt14default_deleteIN4llvm7ELFYAML25DependentLibrariesSectionEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm7ELFYAML25DependentLibrariesSectionEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.q, %bb.a
  %.sroa.10.1.i = phi i8 [ %.sroa.10.0.i, %bb.q ], [ -1, %bb.a ]
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.i, %bb.q ], [ %i.s, %bb.a ]
  %.sroa.024.233.i.i.i.i = phi ptr [ %.sroa.024.1.i.i.i.i, %bb.q ], [ %i.a, %bb.a ] ; 2 uses
  %i.cf = load ptr, ptr %.sroa.024.233.i.i.i.i, align 8, !tbaa !167, !noalias !5430
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !5430
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.024.233.i.i.i.i) #22, !noalias !5430, !inline_history !5425
  br label %_ZSt10__invoke_rIN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEERZZN12_GLOBAL__N_19ELFDumperINS0_6object7ELFTypeILNS0_10endiannessE0ELb0EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS8_13Elf_Shdr_ImplISB_EEE15_JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit

_ZSt10__invoke_rIN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEERZZN12_GLOBAL__N_19ELFDumperINS0_6object7ELFTypeILNS0_10endiannessE0ELb0EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS8_13Elf_Shdr_ImplISB_EEE15_JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit: ; preds = %bb.q, %_ZNKSt14default_deleteIN4llvm7ELFYAML25DependentLibrariesSectionEEclEPS2_.exit.i.i.i.i.i
  %.sroa.10.2.i = phi i8 [ %.sroa.10.0.i, %bb.q ], [ %.sroa.10.1.i, %_ZNKSt14default_deleteIN4llvm7ELFYAML25DependentLibrariesSectionEEclEPS2_.exit.i.i.i.i.i ]
  %.sroa.0.2.i = phi ptr [ %.sroa.0.0.i, %bb.q ], [ %.sroa.0.1.i, %_ZNKSt14default_deleteIN4llvm7ELFYAML25DependentLibrariesSectionEEclEPS2_.exit.i.i.i.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cj = and i8 %.sroa.10.2.i, 1
  %i.ck = load i8, ptr %i.ci, align 8, !alias.scope !5428
  %i.cl = and i8 %i.ck, -2
  %i.cm = or disjoint i8 %i.cl, %i.cj
  store i8 %i.cm, ptr %i.ci, align 8, !alias.scope !5428
  store ptr %.sroa.0.2.i, ptr %0, align 8, !tbaa !87, !alias.scope !5428
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEEPKNS0_6object13Elf_Shdr_ImplINS6_7ELFTypeILNS0_10endiannessE0ELb0EEEEEEZZN12_GLOBAL__N_19ELFDumperISA_E12dumpSectionsEvENKUljE_clEjEUlSD_E15_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #16 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE0ELb0EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE15_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !87
  br label %_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE0ELb0EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE15_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !458
  br label %_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE0ELb0EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE15_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8
  store i64 %.val, ptr %0, align 8, !tbaa !365
  br label %_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE0ELb0EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE15_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE0ELb0EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE15_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt17_Function_handlerIFN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEEPKNS0_6object13Elf_Shdr_ImplINS6_7ELFTypeILNS0_10endiannessE0ELb0EEEEEEZZN12_GLOBAL__N_19ELFDumperISA_E12dumpSectionsEvENKUljE_clEjEUlSD_E16_E9_M_invokeERKSt9_Any_dataOSD_(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.521") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %4 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %5 = alloca %class.anon.475, align 1            ; 3 uses
  %6 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %7 = alloca %"class.llvm::Expected.576", align 8 ; 9 uses
  %8 = alloca %"class.llvm::DataExtractor", align 8 ; 6 uses
  %9 = alloca %"class.llvm::DataExtractor::Cursor", align 8 ; 5 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !5452  ; 2 uses
  %.val2 = load ptr, ptr %2, align 8, !tbaa !358  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5453)
  %i.a = tail call noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #24, !noalias !5454 ; 38 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 19, ptr %i.b, align 8, !tbaa !181, !noalias !5454
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !noalias !5454
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !182, !noalias !5454
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %i.e, align 8, !tbaa !183, !noalias !5454
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 0, ptr %i.f, align 8, !tbaa !185, !noalias !5454
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i8 0, ptr %i.g, align 8, !tbaa !182, !noalias !5454
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i8 0, ptr %i.h, align 8, !tbaa !187, !noalias !5454
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i8 0, ptr %i.i, align 8, !tbaa !182, !noalias !5454
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 5 uses
  store i8 0, ptr %i.j, align 8, !tbaa !189, !noalias !5454
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i8 0, ptr %i.k, align 8, !tbaa !182, !noalias !5454
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store i8 0, ptr %i.l, align 8, !tbaa !182, !noalias !5454
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i8 0, ptr %i.m, align 8, !tbaa !182, !noalias !5454
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store i8 0, ptr %i.n, align 8, !tbaa !182, !noalias !5454
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store i8 0, ptr %i.o, align 8, !tbaa !182, !noalias !5454
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store i8 0, ptr %i.p, align 8, !tbaa !182, !noalias !5454
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 276
  store i8 0, ptr %i.q, align 4, !tbaa !191, !noalias !5454
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm7ELFYAML23CallGraphProfileSectionE, i64 16), ptr %i.a, align 8, !tbaa !167, !noalias !5454
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 304 ; 3 uses
  store i8 0, ptr %i.r, align 8, !tbaa !597, !noalias !5454
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22, !noalias !5455
  call fastcc void @_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb0EEEE17dumpCommonSectionEPKNS2_13Elf_Shdr_ImplIS5_EERNS1_7ELFYAML7SectionE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(256) %.val, ptr noundef %.val2, ptr noundef nonnull align 8 dereferenceable(280) %i.a), !noalias !5455
  %i.s = load ptr, ptr %6, align 8, !tbaa !165, !noalias !5455 ; 2 uses
  %.not88.i.i.i.i = icmp eq ptr %i.s, null
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !5455
  br i1 %.not88.i.i.i.i, label %_ZN4llvm5ErrorD2Ev.exit24.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML23CallGraphProfileSectionEEclEPS2_.exit.i.i.i.i.i

_ZN4llvm5ErrorD2Ev.exit24.i.i.i.i:                ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !5455
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 216 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !357, !noalias !5455, !nonnull !136, !align !137
  call void @_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE0ELb0EEEE18getSectionContentsERKNS0_13Elf_Shdr_ImplIS4_EE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.576") align 8 %7, ptr noundef nonnull align 8 dereferenceable(96) %i.u, ptr noundef nonnull align 1 dereferenceable(40) %.val2) #22, !noalias !5455
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8, !noalias !5455
  %i.x = trunc i8 %i.w to i1
  br i1 %i.x, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i, label %bb.b

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit24.i.i.i.i
  %i.y = load i64, ptr %7, align 8, !tbaa !147, !noalias !5456
  %i.z = inttoptr i64 %i.y to ptr
  store ptr null, ptr %7, align 8, !tbaa !147, !noalias !5456
  br label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i

bb.b:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit24.i.i.i.i
  %.sroa.064.0.copyload.i.i.i.i = load ptr, ptr %7, align 8, !tbaa !174, !noalias !5455 ; 3 uses
  %.sroa.665.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.665.0.copyload.i.i.i.i = load i64, ptr %.sroa.665.0..sroa_idx.i.i.i.i, align 8, !tbaa !143, !noalias !5455 ; 7 uses
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !357, !noalias !5455, !nonnull !136, !align !137
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !138, !noalias !5455
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 18
  %.0.copyload.i.i.i.i.i.i.i = load i16, ptr %i.ac, align 1, !noalias !5455
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %.sroa.011.0.copyload.i.i.i.i = load i32, ptr %i.ad, align 4, !tbaa !142, !noalias !5455 ; 2 uses
  %.sroa.09.0.copyload.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !174, !noalias !5455 ; 2 uses
  %.sroa.210.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.210.0.copyload.i.i.i.i = load i64, ptr %.sroa.210.0..sroa_idx.i.i.i.i, align 8, !tbaa !143, !noalias !5455
  %i.ae = icmp eq i16 %.0.copyload.i.i.i.i.i.i.i, 2048
  %i.af = icmp eq i32 %.sroa.011.0.copyload.i.i.i.i, 1879048234
  %or.cond.i.i.i.i.i = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond.i.i.i.i.i, label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE0ELb0EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i, label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %bb.b
  switch i32 %.sroa.011.0.copyload.i.i.i.i, label %bb.g [
    i32 2, label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE0ELb0EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i
    i32 11, label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE0ELb0EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i
    i32 17, label %bb.c
    i32 9, label %bb.d
    i32 4, label %bb.e
    i32 19, label %bb.c
    i32 6, label %bb.d
    i32 5, label %bb.c
    i32 18, label %bb.c
    i32 1879048191, label %bb.f
    i32 1879002121, label %bb.d
  ]

bb.c:                                             ; preds = %.critedge.i.i.i.i.i, %.critedge.i.i.i.i.i, %.critedge.i.i.i.i.i, %.critedge.i.i.i.i.i
  br label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE0ELb0EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i

bb.d:                                             ; preds = %.critedge.i.i.i.i.i, %.critedge.i.i.i.i.i, %.critedge.i.i.i.i.i
  br label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE0ELb0EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i

bb.e:                                             ; preds = %.critedge.i.i.i.i.i
  br label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE0ELb0EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i

bb.f:                                             ; preds = %.critedge.i.i.i.i.i
  br label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE0ELb0EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i

bb.g:                                             ; preds = %.critedge.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.210.0.copyload.i.i.i.i, 10
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i, label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE0ELb0EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i:      ; preds = %bb.g
  %i.ag = load i64, ptr %.sroa.09.0.copyload.i.i.i.i, align 1
  %i.ah = xor i64 %i.ag, 8313477191008871470
  %i.ai = getelementptr i8, ptr %.sroa.09.0.copyload.i.i.i.i, i64 8
  %i.aj = load i16, ptr %i.ai, align 1
  %i.ak = zext i16 %i.aj to i64
  %i.al = xor i64 %i.ak, 29300
  %i.am = or i64 %i.ah, %i.al
  %i.an = icmp ne i64 %i.am, 0
  %i.ao = zext i1 %i.an to i32
  %bcmp.i.fr.i.i.i.i.i = freeze i32 %i.ao
  %i.ap = icmp eq i32 %bcmp.i.fr.i.i.i.i.i, 0
  %i.aq = zext i1 %i.ap to i64
  br label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE0ELb0EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i

_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE0ELb0EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %.critedge.i.i.i.i.i, %.critedge.i.i.i.i.i, %bb.b
  %.0.i.i.i.i.i = phi i64 [ 2, %bb.f ], [ 16, %.critedge.i.i.i.i.i ], [ 16, %.critedge.i.i.i.i.i ], [ 24, %bb.b ], [ 4, %bb.c ], [ 8, %bb.d ], [ 12, %bb.e ], [ 0, %bb.g ], [ %i.aq, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i ] ; 3 uses
  %i.ar = icmp eq i64 %.sroa.665.0.copyload.i.i.i.i, 0
  br i1 %i.ar, label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE0ELb0EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i
  %i.as = urem i64 %.sroa.665.0.copyload.i.i.i.i, %.0.i.i.i.i.i
  %i.at = udiv i64 %.sroa.665.0.copyload.i.i.i.i, %.0.i.i.i.i.i ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.av = load i8, ptr %i.j, align 8, !tbaa !189, !range !152, !noalias !5455, !noundef !136
  %i.aw = trunc nuw i8 %i.av to i1
  store ptr %.sroa.064.0.copyload.i.i.i.i, ptr %i.au, align 8, !tbaa !174, !noalias !5455
  %.sroa.557.0..sroa_idx58.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 %.sroa.665.0.copyload.i.i.i.i, ptr %.sroa.557.0..sroa_idx58.i.i.i.i, align 8, !tbaa !143, !noalias !5455
  %.sroa.660.0..sroa_idx61.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 0, ptr %.sroa.660.0..sroa_idx61.i.i.i.i, align 8, !tbaa !199, !noalias !5455
  br i1 %i.aw, label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.j, align 8, !tbaa !189, !noalias !5455
  br label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i

bb.k:                                             ; preds = %bb.h
  %i.ax = icmp ugt i64 %i.at, 1152921504606846975
  br i1 %i.ax, label %bb.l, label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #26, !noalias !5455
  unreachable

_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i.i: ; preds = %bb.k
  %.not.i.i.i.i.i.i.i.i = icmp ugt i64 %.0.i.i.i.i.i, %.sroa.665.0.copyload.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EEC2EmRKS3_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i.i
  %i.ay = shl nuw nsw i64 %i.at, 3
  %i.az = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #24, !noalias !5455 ; 5 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.at ; 2 uses
  store i64 0, ptr %i.az, align 8, !noalias !5455
  %i.bb = getelementptr i8, ptr %i.az, i64 8      ; 3 uses
  %i.bc = add nsw i64 %i.at, -1                   ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EEC2EmRKS3_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %bb.m
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bc, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.bb, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !143, !noalias !5455
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EEC2EmRKS3_.exit.i.i.i.i

_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EEC2EmRKS3_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m, %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i.i
  %.sroa.046.1.i.i.i.i = phi ptr [ %i.az, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.az, %bb.m ], [ null, %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i.i ] ; 5 uses
  %.sroa.15.1.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ba, %bb.m ], [ null, %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i.i ] ; 3 uses
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bb, %bb.m ], [ null, %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22, !noalias !5455
  %i.bf = load ptr, ptr %i.t, align 8, !tbaa !357, !noalias !5455, !nonnull !136, !align !137
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !138, !noalias !5455
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 5
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !86, !noalias !5455
  %i.bj = icmp eq i8 %i.bi, 1
  %i.bk = zext i1 %i.bj to i8
  store ptr %.sroa.064.0.copyload.i.i.i.i, ptr %8, align 8, !tbaa !138, !noalias !5455
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.sroa.665.0.copyload.i.i.i.i, ptr %i.bl, align 8, !tbaa !194, !noalias !5455
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 %i.bk, ptr %i.bm, align 8, !tbaa !196, !noalias !5455
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22, !noalias !5455
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %.not8990.i.i.i.i = icmp eq ptr %.sroa.046.1.i.i.i.i, %.0.i.i.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false), !noalias !5455
  br i1 %.not8990.i.i.i.i, label %.critedge22.i.i.i.i, label %.critedge20.i.i.i.i

bb.n:                                             ; preds = %.critedge20.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.041.091.i.i.i.i, i64 8 ; 2 uses
  %.not89.i.i.i.i = icmp eq ptr %i.bo, %.0.i.i.i.i.i.i.i.i.i
  br i1 %.not89.i.i.i.i, label %.critedge22.i.i.i.i, label %.critedge20.i.i.i.i

.critedge20.i.i.i.i:                              ; preds = %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EEC2EmRKS3_.exit.i.i.i.i, %bb.n
  %.sroa.041.091.i.i.i.i = phi ptr [ %i.bo, %bb.n ], [ %.sroa.046.1.i.i.i.i, %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EEC2EmRKS3_.exit.i.i.i.i ] ; 2 uses
  %i.bp = call noundef i64 @_ZNK4llvm13DataExtractor6getU64EPmPNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(17) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %i.bn) #22, !noalias !5455
  store i64 %i.bp, ptr %.sroa.041.091.i.i.i.i, align 8, !tbaa !599, !noalias !5455
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !165, !noalias !5455 ; 2 uses
  %.not.i.i26.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i26.i.i.i.i, label %bb.n, label %bb.o

bb.o:                                             ; preds = %.critedge20.i.i.i.i
  store ptr null, ptr %i.bn, align 8, !tbaa !165, !noalias !5457
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !5455
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !5455
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !5455
  store ptr %i.bq, ptr %4, align 8, !tbaa !165, !noalias !5455
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %3, ptr nofree noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5), !noalias !5455
  %i.br = load ptr, ptr %4, align 8, !tbaa !165, !noalias !5455 ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !167, !noalias !5455
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !5455
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.br) #22, !noalias !5455, !inline_history !5447
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !5455
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !5455
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !5455
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.bx = load i8, ptr %i.j, align 8, !tbaa !189, !range !152, !noalias !5455, !noundef !136
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit29.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 1, ptr %i.j, align 8, !tbaa !189, !noalias !5455
  br label %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit29.i.i.i.i

_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit29.i.i.i.i: ; preds = %bb.r, %bb.q
  store ptr %.sroa.064.0.copyload.i.i.i.i, ptr %i.bw, align 8, !tbaa !174, !noalias !5455
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 %.sroa.665.0.copyload.i.i.i.i, ptr %i.bz, align 8, !tbaa !143, !noalias !5455
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 0, ptr %i.ca, align 8, !tbaa !199, !noalias !5455
  %i.cb = ptrtoint ptr %.sroa.15.1.i.i.i.i to i64
  br label %_ZNSt8optionalISt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS3_EEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i.i

.critedge22.i.i.i.i:                              ; preds = %bb.n, %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EEC2EmRKS3_.exit.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 280 ; 3 uses
  %i.cd = load i8, ptr %i.r, align 8, !tbaa !597, !range !152, !noalias !5455, !noundef !136
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 288 ; 2 uses
  br i1 %i.ce, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.critedge22.i.i.i.i
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !602, !noalias !5455 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 296 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !603, !noalias !5455
  store ptr %.sroa.046.1.i.i.i.i, ptr %i.cc, align 8, !tbaa !602, !noalias !5455
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.cf, align 8, !tbaa !604, !noalias !5455
  store ptr %.sroa.15.1.i.i.i.i, ptr %i.ch, align 8, !tbaa !603, !noalias !5455
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8optionalISt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS3_EEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23, !noalias !5455
  br label %_ZNSt8optionalISt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS3_EEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i.i

bb.u:                                             ; preds = %.critedge22.i.i.i.i
  store ptr %.sroa.046.1.i.i.i.i, ptr %i.cc, align 8, !tbaa !602, !noalias !5455
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.cf, align 8, !tbaa !604, !noalias !5455
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store ptr %.sroa.15.1.i.i.i.i, ptr %i.cm, align 8, !tbaa !603, !noalias !5455
  store i8 1, ptr %i.r, align 8, !tbaa !597, !noalias !5455
  br label %_ZNSt8optionalISt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS3_EEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i.i

_ZNSt8optionalISt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS3_EEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i.i: ; preds = %bb.u, %bb.t, %bb.s, %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit29.i.i.i.i
  %.sroa.046.0.i.i.i.i = phi ptr [ %.sroa.046.1.i.i.i.i, %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit29.i.i.i.i ], [ null, %bb.u ], [ null, %bb.t ], [ null, %bb.s ] ; 3 uses
  %.sroa.15.0.i.i.i.i = phi i64 [ %i.cb, %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit29.i.i.i.i ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ]
  %i.cn = load ptr, ptr %i.bn, align 8, !tbaa !165, !noalias !5455 ; 3 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %_ZN4llvm13DataExtractor6CursorD2Ev.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt8optionalISt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS3_EEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i.i
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !167, !noalias !5455
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !5455
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %i.cn) #22, !noalias !5455, !inline_history !5448
  br label %_ZN4llvm13DataExtractor6CursorD2Ev.exit.i.i.i.i

_ZN4llvm13DataExtractor6CursorD2Ev.exit.i.i.i.i:  ; preds = %bb.v, %_ZNSt8optionalISt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS3_EEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22, !noalias !5455
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !5455
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.046.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm13DataExtractor6CursorD2Ev.exit.i.i.i.i
  %i.cs = ptrtoint ptr %.sroa.046.0.i.i.i.i to i64
  %i.ct = sub i64 %.sroa.15.0.i.i.i.i, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.046.0.i.i.i.i, i64 noundef %i.ct) #23, !noalias !5455
  br label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i

_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i: ; preds = %bb.w, %_ZN4llvm13DataExtractor6CursorD2Ev.exit.i.i.i.i, %bb.j, %bb.i, %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE0ELb0EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i
  %.sroa.10.1.i = phi i8 [ -1, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i ], [ 0, %bb.w ], [ 0, %_ZN4llvm13DataExtractor6CursorD2Ev.exit.i.i.i.i ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE0ELb0EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.z, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i ], [ %i.a, %bb.w ], [ %i.a, %_ZN4llvm13DataExtractor6CursorD2Ev.exit.i.i.i.i ], [ %i.a, %bb.j ], [ %i.a, %bb.i ], [ %i.a, %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE0ELb0EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i ] ; 2 uses
  %.sroa.074.3.i.i.i.i = phi ptr [ %i.a, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i ], [ null, %bb.w ], [ null, %_ZN4llvm13DataExtractor6CursorD2Ev.exit.i.i.i.i ], [ null, %bb.j ], [ null, %bb.i ], [ null, %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE0ELb0EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i ] ; 2 uses
  %i.cu = load i8, ptr %i.v, align 8, !noalias !5455
  %i.cv = trunc i8 %i.cu to i1
  br i1 %i.cv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i
  %i.cw = load ptr, ptr %7, align 8, !tbaa !147, !noalias !5455 ; 3 uses
  %.not.i.i32.i.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i32.i.i.i.i, label %bb.y, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.x
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !167, !noalias !5455
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !noalias !5455
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.cw) #22, !noalias !5455, !inline_history !5449
  br label %bb.y

bb.y:                                             ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i, %bb.x, %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !5455
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.074.3.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZSt10__invoke_rIN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEERZZN12_GLOBAL__N_19ELFDumperINS0_6object7ELFTypeILNS0_10endiannessE0ELb0EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS8_13Elf_Shdr_ImplISB_EEE16_JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit, label %_ZNKSt14default_deleteIN4llvm7ELFYAML23CallGraphProfileSectionEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm7ELFYAML23CallGraphProfileSectionEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.y, %bb.a
  %.sroa.10.2.i = phi i8 [ %.sroa.10.1.i, %bb.y ], [ -1, %bb.a ]
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.i, %bb.y ], [ %i.s, %bb.a ]
  %.sroa.074.487.i.i.i.i = phi ptr [ %.sroa.074.3.i.i.i.i, %bb.y ], [ %i.a, %bb.a ] ; 2 uses
  %i.da = load ptr, ptr %.sroa.074.487.i.i.i.i, align 8, !tbaa !167, !noalias !5455
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !5455
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.074.487.i.i.i.i) #22, !noalias !5455, !inline_history !5450
  br label %_ZSt10__invoke_rIN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEERZZN12_GLOBAL__N_19ELFDumperINS0_6object7ELFTypeILNS0_10endiannessE0ELb0EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS8_13Elf_Shdr_ImplISB_EEE16_JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit

_ZSt10__invoke_rIN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEERZZN12_GLOBAL__N_19ELFDumperINS0_6object7ELFTypeILNS0_10endiannessE0ELb0EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS8_13Elf_Shdr_ImplISB_EEE16_JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit: ; preds = %bb.y, %_ZNKSt14default_deleteIN4llvm7ELFYAML23CallGraphProfileSectionEEclEPS2_.exit.i.i.i.i.i
  %.sroa.10.3.i = phi i8 [ %.sroa.10.1.i, %bb.y ], [ %.sroa.10.2.i, %_ZNKSt14default_deleteIN4llvm7ELFYAML23CallGraphProfileSectionEEclEPS2_.exit.i.i.i.i.i ]
  %.sroa.0.2.i = phi ptr [ %.sroa.0.0.i, %bb.y ], [ %.sroa.0.1.i, %_ZNKSt14default_deleteIN4llvm7ELFYAML23CallGraphProfileSectionEEclEPS2_.exit.i.i.i.i.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.de = and i8 %.sroa.10.3.i, 1
  %i.df = load i8, ptr %i.dd, align 8, !alias.scope !5453
  %i.dg = and i8 %i.df, -2
  %i.dh = or disjoint i8 %i.dg, %i.de
  store i8 %i.dh, ptr %i.dd, align 8, !alias.scope !5453
  store ptr %.sroa.0.2.i, ptr %0, align 8, !tbaa !87, !alias.scope !5453
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEEPKNS0_6object13Elf_Shdr_ImplINS6_7ELFTypeILNS0_10endiannessE0ELb0EEEEEEZZN12_GLOBAL__N_19ELFDumperISA_E12dumpSectionsEvENKUljE_clEjEUlSD_E16_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #16 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE0ELb0EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE16_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !87
  br label %_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE0ELb0EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE16_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !458
  br label %_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE0ELb0EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE16_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8
  store i64 %.val, ptr %0, align 8, !tbaa !365
  br label %_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE0ELb0EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE16_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE0ELb0EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE16_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt17_Function_handlerIFN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEEPKNS0_6object13Elf_Shdr_ImplINS6_7ELFTypeILNS0_10endiannessE0ELb0EEEEEEZZN12_GLOBAL__N_19ELFDumperISA_E12dumpSectionsEvENKUljE_clEjEUlSD_E17_E9_M_invokeERKSt9_Any_dataOSD_(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.521") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %4 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %5 = alloca %class.anon.475, align 1            ; 3 uses
  %i.a = alloca i16, align 2                      ; 6 uses
  %6 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %7 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %8 = alloca %"class.llvm::Expected.576", align 8 ; 9 uses
  %9 = alloca %"class.llvm::DataExtractor", align 8 ; 27 uses
  %10 = alloca %"class.std::vector.1120", align 16 ; 12 uses
  %11 = alloca %"class.std::vector.1135", align 8 ; 9 uses
  %12 = alloca %"class.llvm::DataExtractor::Cursor", align 8 ; 27 uses
  %13 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %17 = alloca %"class.std::vector.1147", align 16 ; 10 uses
  %18 = alloca %"class.std::vector.1152", align 8 ; 11 uses
  %19 = alloca %"struct.llvm::BBAddrMapYAML::BBAddrMapEntry::BBRangeEntry", align 8 ; 10 uses
  %20 = alloca %"struct.llvm::BBAddrMapYAML::BBAddrMapEntry", align 8 ; 11 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !5495  ; 2 uses
  %.val2 = load ptr, ptr %2, align 8, !tbaa !358  ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5496)
  %i.b = tail call noalias noundef nonnull dereferenceable(344) ptr @_Znwm(i64 noundef 344) #24, !noalias !5497 ; 37 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 20, ptr %i.c, align 8, !tbaa !181, !noalias !5497
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !5497
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i8 0, ptr %i.e, align 8, !tbaa !182, !noalias !5497
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i8 0, ptr %i.f, align 8, !tbaa !183, !noalias !5497
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 0, ptr %i.g, align 8, !tbaa !185, !noalias !5497
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i8 0, ptr %i.h, align 8, !tbaa !182, !noalias !5497
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i8 0, ptr %i.i, align 8, !tbaa !187, !noalias !5497
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i8 0, ptr %i.j, align 8, !tbaa !182, !noalias !5497
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 3 uses
  store i8 0, ptr %i.k, align 8, !tbaa !189, !noalias !5497
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store i8 0, ptr %i.l, align 8, !tbaa !182, !noalias !5497
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store i8 0, ptr %i.m, align 8, !tbaa !182, !noalias !5497
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  store i8 0, ptr %i.n, align 8, !tbaa !182, !noalias !5497
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store i8 0, ptr %i.o, align 8, !tbaa !182, !noalias !5497
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store i8 0, ptr %i.p, align 8, !tbaa !182, !noalias !5497
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  store i8 0, ptr %i.q, align 8, !tbaa !182, !noalias !5497
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 276
  store i8 0, ptr %i.r, align 4, !tbaa !191, !noalias !5497
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm7ELFYAML16BBAddrMapSectionE, i64 16), ptr %i.b, align 8, !tbaa !167, !noalias !5497
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 304 ; 3 uses
  store i8 0, ptr %i.s, align 8, !tbaa !606, !noalias !5497
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  store i8 0, ptr %i.t, align 8, !tbaa !608, !noalias !5497
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !5498
  call fastcc void @_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb0EEEE17dumpCommonSectionEPKNS2_13Elf_Shdr_ImplIS5_EERNS1_7ELFYAML7SectionE(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(256) %.val, ptr noundef %.val2, ptr noundef nonnull align 8 dereferenceable(280) %i.b), !noalias !5498
  %i.u = load ptr, ptr %7, align 8, !tbaa !165, !noalias !5498 ; 2 uses
  %.not345.i.i.i.i = icmp eq ptr %i.u, null
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !5498
  br i1 %.not345.i.i.i.i, label %_ZN4llvm5ErrorD2Ev.exit87.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML16BBAddrMapSectionEEclEPS2_.exit.i.i.i.i.i

_ZN4llvm5ErrorD2Ev.exit87.i.i.i.i:                ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22, !noalias !5498
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 216 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !357, !noalias !5498, !nonnull !136, !align !137
  call void @_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE0ELb0EEEE18getSectionContentsERKNS0_13Elf_Shdr_ImplIS4_EE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.576") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %i.w, ptr noundef nonnull align 1 dereferenceable(40) %.val2) #22, !noalias !5498
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !noalias !5498 ; 3 uses
  %i.z = trunc i8 %i.y to i1
  br i1 %i.z, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i, label %bb.b

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit87.i.i.i.i
  %i.aa = load i64, ptr %8, align 8, !tbaa !147, !noalias !5499
  %i.ab = inttoptr i64 %i.aa to ptr
  store ptr null, ptr %8, align 8, !tbaa !147, !noalias !5499
  br label %bb.cq

bb.b:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit87.i.i.i.i
  %.sroa.0284.0.copyload.i.i.i.i = load ptr, ptr %8, align 8, !tbaa !174, !noalias !5498 ; 2 uses
  %.sroa.5285.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.5285.0.copyload.i.i.i.i = load i64, ptr %.sroa.5285.0..sroa_idx.i.i.i.i, align 8, !tbaa !143, !noalias !5498 ; 4 uses
  %i.ac = icmp eq i64 %.sroa.5285.0.copyload.i.i.i.i, 0
  br i1 %i.ac, label %bb.cq, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22, !noalias !5498
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !357, !noalias !5498, !nonnull !136, !align !137
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !138, !noalias !5498
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 5
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !86, !noalias !5498
  %i.ah = icmp eq i8 %i.ag, 1
  %i.ai = zext i1 %i.ah to i8
  store ptr %.sroa.0284.0.copyload.i.i.i.i, ptr %9, align 8, !tbaa !138, !noalias !5498
end_hunk_3
begin_hunk_4_@_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE1ELb1EEEE25getSectionContentsAsArrayINS0_12Elf_Sym_ImplIS4_EEEENS_8ExpectedINS_8ArrayRefIT_EEEERKNS0_13Elf_Shdr_ImplIS4_EE
define linkonce_odr void @_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE1ELb1EEEE25getSectionContentsAsArrayINS0_12Elf_Sym_ImplIS4_EEEENS_8ExpectedINS_8ArrayRefIT_EEEERKNS0_13Elf_Shdr_ImplIS4_EE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected.1632") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(64) %2) local_unnamed_addr #0 comdat align 2 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE1ELb1EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(64) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !5738)
  %i.b = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.9, i64 noundef 8) #22, !noalias !5738 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.c, ptr %7, align 8, !tbaa !82, !alias.scope !5738
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !88   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !85   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  store ptr %i.d, ptr %7, align 8, !tbaa !88, !alias.scope !5738
  %i.k = load i64, ptr %i.e, align 8, !tbaa !86
  store i64 %i.k, ptr %i.c, align 8, !tbaa !86, !alias.scope !5738
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !85
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.l = phi i64 [ %i.h, %bb.c ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !85, !alias.scope !5738
  store ptr %i.e, ptr %i.b, align 8, !tbaa !88
  store i64 0, ptr %i.m, align 8, !tbaa !85
  store i8 0, ptr %i.e, align 8, !tbaa !86
  call void @llvm.experimental.noalias.scope.decl(metadata !5739)
  %i.o = add i64 %i.l, -4611686018427387870
  %i.p = icmp ult i64 %i.o, 34
  br i1 %i.p, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #26, !noalias !5739
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.q = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.10, i64 noundef 34) #22, !noalias !5739 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.r, ptr %6, align 8, !tbaa !82, !alias.scope !5739
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !88   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !85   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.s, ptr %6, align 8, !tbaa !88, !alias.scope !5739
  %i.z = load i64, ptr %i.t, align 8, !tbaa !86
  store i64 %i.z, ptr %i.r, align 8, !tbaa !86, !alias.scope !5739
  %.phi.trans.insert.i25 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i26 = load i64, ptr %.phi.trans.insert.i25, align 8, !tbaa !85
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.e
  %i.aa = phi i64 [ %i.w, %bb.e ], [ %.pre.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !85, !alias.scope !5739
  store ptr %i.t, ptr %i.q, align 8, !tbaa !88
  store i64 0, ptr %i.ab, align 8, !tbaa !85
  store i8 0, ptr %i.t, align 8, !tbaa !86
  store ptr %6, ptr %5, align 8, !alias.scope !5740
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr inttoptr (i64 24 to ptr), ptr %i.ad, align 8, !alias.scope !5740
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 4, ptr %i.ae, align 8, !tbaa !162, !alias.scope !5740
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 11, ptr %i.af, align 1, !tbaa !163, !alias.scope !5740
  store ptr %5, ptr %4, align 8, !alias.scope !5741
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.11, ptr %i.ag, align 8, !alias.scope !5741
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.ah, align 8, !tbaa !162, !alias.scope !5741
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 3, ptr %i.ai, align 1, !tbaa !163, !alias.scope !5741
  %.0.copyload.i.i.i42 = load i64, ptr %i.a, align 1
  %i.aj = inttoptr i64 %.0.copyload.i.i.i42 to ptr
  store ptr %4, ptr %3, align 8, !alias.scope !5742
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.aj, ptr %i.ak, align 8, !alias.scope !5742
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 2, ptr %i.al, align 8, !tbaa !162, !alias.scope !5742
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 11, ptr %i.am, align 1, !tbaa !163, !alias.scope !5742
  %i.an = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24, !noalias !5743 ; 2 uses
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #22, !noalias !5743
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.an, ptr noundef nonnull align 8 dereferenceable(34) %3, i32 3, ptr nonnull %i.ao) #22, !noalias !5743
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8
  %i.ar = or i8 %i.aq, 1
  store i8 %i.ar, ptr %i.ap, align 8
  store ptr %i.an, ptr %0, align 8, !tbaa !147, !alias.scope !5744
  %i.as = load ptr, ptr %6, align 8, !tbaa !88    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.r
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.au = load i64, ptr %i.r, align 8, !tbaa !86
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  %i.aw = load ptr, ptr %7, align 8, !tbaa !88    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.c
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ay = load i64, ptr %i.c, align 8, !tbaa !86
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  %i.ba = load ptr, ptr %8, align 8, !tbaa !88    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !86
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE1ELb1EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(64) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !5745)
  %i.bj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.9, i64 noundef 8) #22, !noalias !5745 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr %i.bk, ptr %14, align 8, !tbaa !82, !alias.scope !5745
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !88 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 5 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

bb.h:                                             ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !85 ; 3 uses
  %i.bq = icmp ult i64 %i.bp, 16
  call void @llvm.assume(i1 %i.bq)
  %i.br = add nuw nsw i64 %i.bp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bk, ptr noundef nonnull align 8 dereferenceable(1) %i.bm, i64 %i.br, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.g
  store ptr %i.bl, ptr %14, align 8, !tbaa !88, !alias.scope !5745
  %i.bs = load i64, ptr %i.bm, align 8, !tbaa !86
  store i64 %i.bs, ptr %i.bk, align 8, !tbaa !86, !alias.scope !5745
  %.phi.trans.insert.i68 = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.pre.i69 = load i64, ptr %.phi.trans.insert.i68, align 8, !tbaa !85
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  %i.bt = phi i64 [ %i.bp, %bb.h ], [ %.pre.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.bt, ptr %i.bv, align 8, !tbaa !85, !alias.scope !5745
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !88
  store i64 0, ptr %i.bu, align 8, !tbaa !85
  store i8 0, ptr %i.bm, align 8, !tbaa !86
  call void @llvm.experimental.noalias.scope.decl(metadata !5746)
  %i.bw = add i64 %i.bt, -4611686018427387879
  %i.bx = icmp ult i64 %i.bw, 25
  br i1 %i.bx, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71

bb.i:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #26, !noalias !5746
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70
  %i.by = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.12, i64 noundef 25) #22, !noalias !5746 ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr %i.bz, ptr %13, align 8, !tbaa !82, !alias.scope !5746
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !88 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 5 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !85 ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 16
  call void @llvm.assume(i1 %i.cf)
  %i.cg = add nuw nsw i64 %i.ce, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bz, ptr noundef nonnull align 8 dereferenceable(1) %i.cb, i64 %i.cg, i1 false)
  br label %_ZN4llvm5ErrorD2Ev.exit137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71
  store ptr %i.ca, ptr %13, align 8, !tbaa !88, !alias.scope !5746
  %i.ch = load i64, ptr %i.cb, align 8, !tbaa !86
  store i64 %i.ch, ptr %i.bz, align 8, !tbaa !86, !alias.scope !5746
  %.phi.trans.insert.i73 = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.pre.i74 = load i64, ptr %.phi.trans.insert.i73, align 8, !tbaa !85
  br label %_ZN4llvm5ErrorD2Ev.exit137

_ZN4llvm5ErrorD2Ev.exit137:                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %bb.j
  %i.ci = phi i64 [ %i.ce, %bb.j ], [ %.pre.i74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.ci, ptr %i.ck, align 8, !tbaa !85, !alias.scope !5746
  store ptr %i.cb, ptr %i.by, align 8, !tbaa !88
  store i64 0, ptr %i.cj, align 8, !tbaa !85
  store i8 0, ptr %i.cb, align 8, !tbaa !86
  %.sroa.04.0.copyload.i.i82.cast = inttoptr i64 %.0.copyload.i.i.i66 to ptr
  store ptr %13, ptr %12, align 8, !alias.scope !5747
  %i.cl = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %.sroa.04.0.copyload.i.i82.cast, ptr %i.cl, align 8, !alias.scope !5747
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 4, ptr %i.cm, align 8, !tbaa !162, !alias.scope !5747
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 11, ptr %i.cn, align 1, !tbaa !163, !alias.scope !5747
  store ptr %12, ptr %11, align 8, !alias.scope !5748
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr @.str.13, ptr %i.co, align 8, !alias.scope !5748
  %i.cp = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 2, ptr %i.cp, align 8, !tbaa !162, !alias.scope !5748
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 3, ptr %i.cq, align 1, !tbaa !163, !alias.scope !5748
  %.0.copyload.i.i.i106 = load i64, ptr %i.a, align 1
  %i.cr = inttoptr i64 %.0.copyload.i.i.i106 to ptr
  store ptr %11, ptr %10, align 8, !alias.scope !5749
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.cr, ptr %i.cs, align 8, !alias.scope !5749
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 2, ptr %i.ct, align 8, !tbaa !162, !alias.scope !5749
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 11, ptr %i.cu, align 1, !tbaa !163, !alias.scope !5749
  store ptr %10, ptr %9, align 8, !alias.scope !5750
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @.str.14, ptr %i.cv, align 8, !alias.scope !5750
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 2, ptr %i.cw, align 8, !tbaa !162, !alias.scope !5750
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 3, ptr %i.cx, align 1, !tbaa !163, !alias.scope !5750
  %i.cy = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24, !noalias !5751 ; 2 uses
  %i.cz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #22, !noalias !5751
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.cy, ptr noundef nonnull align 8 dereferenceable(34) %9, i32 3, ptr nonnull %i.cz) #22, !noalias !5751
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.db = load i8, ptr %i.da, align 8
  %i.dc = or i8 %i.db, 1
  store i8 %i.dc, ptr %i.da, align 8
  store ptr %i.cy, ptr %0, align 8, !tbaa !147, !alias.scope !5752
  %i.dd = load ptr, ptr %13, align 8, !tbaa !88   ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.bz
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZN4llvm5ErrorD2Ev.exit137
  %i.df = load i64, ptr %i.bz, align 8, !tbaa !86
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %_ZN4llvm5ErrorD2Ev.exit137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  %i.dh = load ptr, ptr %14, align 8, !tbaa !88   ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.bk
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %i.dj = load i64, ptr %i.bk, align 8, !tbaa !86
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  %i.dl = load ptr, ptr %15, align 8, !tbaa !88   ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !86
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.v

bb.k:                                             ; preds = %bb.f
  %i.dq = xor i64 %.0.copyload.i.i.i65, -1
  %i.dr = icmp ugt i64 %.0.copyload.i.i.i66, %i.dq
  br i1 %i.dr, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE1ELb1EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(64) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !5753)
  %i.ds = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %22, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.9, i64 noundef 8) #22, !noalias !5753 ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  store ptr %i.dt, ptr %21, align 8, !tbaa !82, !alias.scope !5753
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !88 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 5 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

bb.m:                                             ; preds = %bb.l
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !85 ; 3 uses
  %i.dz = icmp ult i64 %i.dy, 16
  call void @llvm.assume(i1 %i.dz)
  %i.ea = add nuw nsw i64 %i.dy, 1
end_hunk_4
begin_hunk_5_@_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE1ELb1EEEE25getSectionContentsAsArrayINS0_12Elf_Rel_ImplIS4_Lb1EEEEENS_8ExpectedINS_8ArrayRefIT_EEEERKNS0_13Elf_Shdr_ImplIS4_EE
define linkonce_odr void @_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE1ELb1EEEE25getSectionContentsAsArrayINS0_12Elf_Rel_ImplIS4_Lb1EEEEENS_8ExpectedINS_8ArrayRefIT_EEEERKNS0_13Elf_Shdr_ImplIS4_EE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected.1691") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(64) %2) local_unnamed_addr #0 comdat align 2 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE1ELb1EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(64) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !6601)
  %i.b = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.9, i64 noundef 8) #22, !noalias !6601 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.c, ptr %7, align 8, !tbaa !82, !alias.scope !6601
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !88   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !85   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  store ptr %i.d, ptr %7, align 8, !tbaa !88, !alias.scope !6601
  %i.k = load i64, ptr %i.e, align 8, !tbaa !86
  store i64 %i.k, ptr %i.c, align 8, !tbaa !86, !alias.scope !6601
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !85
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.l = phi i64 [ %i.h, %bb.c ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !85, !alias.scope !6601
  store ptr %i.e, ptr %i.b, align 8, !tbaa !88
  store i64 0, ptr %i.m, align 8, !tbaa !85
  store i8 0, ptr %i.e, align 8, !tbaa !86
  call void @llvm.experimental.noalias.scope.decl(metadata !6602)
  %i.o = add i64 %i.l, -4611686018427387870
  %i.p = icmp ult i64 %i.o, 34
  br i1 %i.p, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #26, !noalias !6602
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.q = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.10, i64 noundef 34) #22, !noalias !6602 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.r, ptr %6, align 8, !tbaa !82, !alias.scope !6602
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !88   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !85   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.s, ptr %6, align 8, !tbaa !88, !alias.scope !6602
  %i.z = load i64, ptr %i.t, align 8, !tbaa !86
  store i64 %i.z, ptr %i.r, align 8, !tbaa !86, !alias.scope !6602
  %.phi.trans.insert.i25 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i26 = load i64, ptr %.phi.trans.insert.i25, align 8, !tbaa !85
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.e
  %i.aa = phi i64 [ %i.w, %bb.e ], [ %.pre.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !85, !alias.scope !6602
  store ptr %i.t, ptr %i.q, align 8, !tbaa !88
  store i64 0, ptr %i.ab, align 8, !tbaa !85
  store i8 0, ptr %i.t, align 8, !tbaa !86
  store ptr %6, ptr %5, align 8, !alias.scope !6603
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr inttoptr (i64 24 to ptr), ptr %i.ad, align 8, !alias.scope !6603
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 4, ptr %i.ae, align 8, !tbaa !162, !alias.scope !6603
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 11, ptr %i.af, align 1, !tbaa !163, !alias.scope !6603
  store ptr %5, ptr %4, align 8, !alias.scope !6604
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.11, ptr %i.ag, align 8, !alias.scope !6604
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.ah, align 8, !tbaa !162, !alias.scope !6604
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 3, ptr %i.ai, align 1, !tbaa !163, !alias.scope !6604
  %.0.copyload.i.i.i42 = load i64, ptr %i.a, align 1
  %i.aj = inttoptr i64 %.0.copyload.i.i.i42 to ptr
  store ptr %4, ptr %3, align 8, !alias.scope !6605
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.aj, ptr %i.ak, align 8, !alias.scope !6605
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 2, ptr %i.al, align 8, !tbaa !162, !alias.scope !6605
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 11, ptr %i.am, align 1, !tbaa !163, !alias.scope !6605
  %i.an = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24, !noalias !6606 ; 2 uses
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #22, !noalias !6606
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.an, ptr noundef nonnull align 8 dereferenceable(34) %3, i32 3, ptr nonnull %i.ao) #22, !noalias !6606
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8
  %i.ar = or i8 %i.aq, 1
  store i8 %i.ar, ptr %i.ap, align 8
  store ptr %i.an, ptr %0, align 8, !tbaa !147, !alias.scope !6607
  %i.as = load ptr, ptr %6, align 8, !tbaa !88    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.r
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.au = load i64, ptr %i.r, align 8, !tbaa !86
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  %i.aw = load ptr, ptr %7, align 8, !tbaa !88    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.c
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ay = load i64, ptr %i.c, align 8, !tbaa !86
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  %i.ba = load ptr, ptr %8, align 8, !tbaa !88    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !86
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE1ELb1EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(64) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !6608)
  %i.bj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.9, i64 noundef 8) #22, !noalias !6608 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr %i.bk, ptr %14, align 8, !tbaa !82, !alias.scope !6608
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !88 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 5 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

bb.h:                                             ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !85 ; 3 uses
  %i.bq = icmp ult i64 %i.bp, 16
  call void @llvm.assume(i1 %i.bq)
  %i.br = add nuw nsw i64 %i.bp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bk, ptr noundef nonnull align 8 dereferenceable(1) %i.bm, i64 %i.br, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.g
  store ptr %i.bl, ptr %14, align 8, !tbaa !88, !alias.scope !6608
  %i.bs = load i64, ptr %i.bm, align 8, !tbaa !86
  store i64 %i.bs, ptr %i.bk, align 8, !tbaa !86, !alias.scope !6608
  %.phi.trans.insert.i68 = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.pre.i69 = load i64, ptr %.phi.trans.insert.i68, align 8, !tbaa !85
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  %i.bt = phi i64 [ %i.bp, %bb.h ], [ %.pre.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.bt, ptr %i.bv, align 8, !tbaa !85, !alias.scope !6608
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !88
  store i64 0, ptr %i.bu, align 8, !tbaa !85
  store i8 0, ptr %i.bm, align 8, !tbaa !86
  call void @llvm.experimental.noalias.scope.decl(metadata !6609)
  %i.bw = add i64 %i.bt, -4611686018427387879
  %i.bx = icmp ult i64 %i.bw, 25
  br i1 %i.bx, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71

bb.i:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #26, !noalias !6609
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70
  %i.by = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.12, i64 noundef 25) #22, !noalias !6609 ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr %i.bz, ptr %13, align 8, !tbaa !82, !alias.scope !6609
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !88 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 5 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !85 ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 16
  call void @llvm.assume(i1 %i.cf)
  %i.cg = add nuw nsw i64 %i.ce, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bz, ptr noundef nonnull align 8 dereferenceable(1) %i.cb, i64 %i.cg, i1 false)
  br label %_ZN4llvm5ErrorD2Ev.exit137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71
  store ptr %i.ca, ptr %13, align 8, !tbaa !88, !alias.scope !6609
  %i.ch = load i64, ptr %i.cb, align 8, !tbaa !86
  store i64 %i.ch, ptr %i.bz, align 8, !tbaa !86, !alias.scope !6609
  %.phi.trans.insert.i73 = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.pre.i74 = load i64, ptr %.phi.trans.insert.i73, align 8, !tbaa !85
  br label %_ZN4llvm5ErrorD2Ev.exit137

_ZN4llvm5ErrorD2Ev.exit137:                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %bb.j
  %i.ci = phi i64 [ %i.ce, %bb.j ], [ %.pre.i74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.ci, ptr %i.ck, align 8, !tbaa !85, !alias.scope !6609
  store ptr %i.cb, ptr %i.by, align 8, !tbaa !88
  store i64 0, ptr %i.cj, align 8, !tbaa !85
  store i8 0, ptr %i.cb, align 8, !tbaa !86
  %.sroa.04.0.copyload.i.i82.cast = inttoptr i64 %.0.copyload.i.i.i66 to ptr
  store ptr %13, ptr %12, align 8, !alias.scope !6610
  %i.cl = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %.sroa.04.0.copyload.i.i82.cast, ptr %i.cl, align 8, !alias.scope !6610
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 4, ptr %i.cm, align 8, !tbaa !162, !alias.scope !6610
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 11, ptr %i.cn, align 1, !tbaa !163, !alias.scope !6610
  store ptr %12, ptr %11, align 8, !alias.scope !6611
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr @.str.13, ptr %i.co, align 8, !alias.scope !6611
  %i.cp = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 2, ptr %i.cp, align 8, !tbaa !162, !alias.scope !6611
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 3, ptr %i.cq, align 1, !tbaa !163, !alias.scope !6611
  %.0.copyload.i.i.i106 = load i64, ptr %i.a, align 1
  %i.cr = inttoptr i64 %.0.copyload.i.i.i106 to ptr
  store ptr %11, ptr %10, align 8, !alias.scope !6612
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.cr, ptr %i.cs, align 8, !alias.scope !6612
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 2, ptr %i.ct, align 8, !tbaa !162, !alias.scope !6612
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 11, ptr %i.cu, align 1, !tbaa !163, !alias.scope !6612
  store ptr %10, ptr %9, align 8, !alias.scope !6613
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @.str.14, ptr %i.cv, align 8, !alias.scope !6613
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 2, ptr %i.cw, align 8, !tbaa !162, !alias.scope !6613
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 3, ptr %i.cx, align 1, !tbaa !163, !alias.scope !6613
  %i.cy = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24, !noalias !6614 ; 2 uses
  %i.cz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #22, !noalias !6614
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.cy, ptr noundef nonnull align 8 dereferenceable(34) %9, i32 3, ptr nonnull %i.cz) #22, !noalias !6614
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.db = load i8, ptr %i.da, align 8
  %i.dc = or i8 %i.db, 1
  store i8 %i.dc, ptr %i.da, align 8
  store ptr %i.cy, ptr %0, align 8, !tbaa !147, !alias.scope !6615
  %i.dd = load ptr, ptr %13, align 8, !tbaa !88   ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.bz
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZN4llvm5ErrorD2Ev.exit137
  %i.df = load i64, ptr %i.bz, align 8, !tbaa !86
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %_ZN4llvm5ErrorD2Ev.exit137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  %i.dh = load ptr, ptr %14, align 8, !tbaa !88   ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.bk
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %i.dj = load i64, ptr %i.bk, align 8, !tbaa !86
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  %i.dl = load ptr, ptr %15, align 8, !tbaa !88   ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !86
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.v

bb.k:                                             ; preds = %bb.f
  %i.dq = xor i64 %.0.copyload.i.i.i65, -1
  %i.dr = icmp ugt i64 %.0.copyload.i.i.i66, %i.dq
  br i1 %i.dr, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE1ELb1EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(64) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !6616)
  %i.ds = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %22, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.9, i64 noundef 8) #22, !noalias !6616 ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  store ptr %i.dt, ptr %21, align 8, !tbaa !82, !alias.scope !6616
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !88 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 5 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

bb.m:                                             ; preds = %bb.l
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !85 ; 3 uses
  %i.dz = icmp ult i64 %i.dy, 16
  call void @llvm.assume(i1 %i.dz)
  %i.ea = add nuw nsw i64 %i.dy, 1
end_hunk_5
begin_hunk_6_@_ZNSt17_Function_handlerIFN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEEPKNS0_6object13Elf_Shdr_ImplINS6_7ELFTypeILNS0_10endiannessE1ELb1EEEEEEZZN12_GLOBAL__N_19ELFDumperISA_E12dumpSectionsEvENKUljE_clEjEUlSD_E15_E9_M_invokeERKSt9_Any_dataOSD_:bb.a
  %i.bh = call i64 @llvm.umin.i64(i64 %i.bf, i64 576460752303423487)
  %i.bi = select i1 %i.bg, i64 576460752303423487, i64 %i.bh ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.bi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.bj = shl nuw nsw i64 %i.bi, 4
  %i.bk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #24, !noalias !7305 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bc ; 2 uses
  store ptr %.035.i.i.i.i, ptr %i.bl, align 8, !tbaa !174, !noalias !7305
  %.sroa.2.0..sroa_idx.i16.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i16.i.i.i.i.i.i, align 8, !tbaa !143, !noalias !7305
  %.not10.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.av, %i.aw
  br i1 %.not10.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNKSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.bk, %_ZNKSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.av, %_ZNKSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !339, !alias.scope !7307, !noalias !7305
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.aw
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !21

_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNKSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bk, %_ZNKSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i24.i.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i24.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE17_M_realloc_insertIJRNS0_9StringRefEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23.i.i.i.i.i.i
  %i.bp = load ptr, ptr %i.au, align 8, !tbaa !586, !noalias !7305
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.br) #23, !noalias !7305
  br label %_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE17_M_realloc_insertIJRNS0_9StringRefEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE17_M_realloc_insertIJRNS0_9StringRefEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.n, %_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23.i.i.i.i.i.i
  store ptr %i.bk, ptr %i.aj, align 8, !tbaa !585, !noalias !7305
  store ptr %i.bo, ptr %i.at, align 8, !tbaa !587, !noalias !7305
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.bi ; 2 uses
  store ptr %i.bs, ptr %i.au, align 8, !tbaa !586, !noalias !7305
  br label %_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE12emplace_backIJRNS0_9StringRefEEEERS2_DpOT_.exit.i.i.i.i

_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE12emplace_backIJRNS0_9StringRefEEEERS2_DpOT_.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE17_M_realloc_insertIJRNS0_9StringRefEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i, %bb.k
  %i.bt = phi ptr [ %i.av, %bb.k ], [ %i.bk, %_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE17_M_realloc_insertIJRNS0_9StringRefEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i ]
  %i.bu = phi ptr [ %i.aw, %bb.k ], [ %i.bs, %_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE17_M_realloc_insertIJRNS0_9StringRefEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i ]
  %i.bv = phi ptr [ %i.az, %bb.k ], [ %i.bo, %_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE17_M_realloc_insertIJRNS0_9StringRefEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i ]
  %i.bw = getelementptr i8, ptr %.035.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i
  %i.bx = getelementptr i8, ptr %i.bw, i64 1      ; 2 uses
  %i.by = icmp ult ptr %i.bx, %i.as
  br i1 %i.by, label %bb.i, label %._crit_edge.i.i.i.i, !llvm.loop !7298

bb.o:                                             ; preds = %._crit_edge.i.i.i.i, %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIRNS0_8ArrayRefIhEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS2_ESA_IS2_NSt5decayISD_E4typeEEEEESt16is_constructibleIS2_JSD_EESt13is_assignableIRS2_SD_EEERS3_E4typeEOSD_.exit.i.i.i.i, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i
  %.sroa.10.0.i = phi i8 [ -1, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i ], [ 0, %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIRNS0_8ArrayRefIhEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS2_ESA_IS2_NSt5decayISD_E4typeEEEEESt16is_constructibleIS2_JSD_EESt13is_assignableIRS2_SD_EEERS3_E4typeEOSD_.exit.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.z, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i ], [ %i.a, %._crit_edge.i.i.i.i ], [ %i.a, %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIRNS0_8ArrayRefIhEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS2_ESA_IS2_NSt5decayISD_E4typeEEEEESt16is_constructibleIS2_JSD_EESt13is_assignableIRS2_SD_EEERS3_E4typeEOSD_.exit.i.i.i.i ] ; 2 uses
  %i.bz = phi i8 [ %i.w, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.w, %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIRNS0_8ArrayRefIhEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS2_ESA_IS2_NSt5decayISD_E4typeEEEEESt16is_constructibleIS2_JSD_EESt13is_assignableIRS2_SD_EEERS3_E4typeEOSD_.exit.i.i.i.i ]
  %.sroa.024.1.i.i.i.i = phi ptr [ %i.a, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i ], [ null, %._crit_edge.i.i.i.i ], [ null, %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIRNS0_8ArrayRefIhEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS2_ESA_IS2_NSt5decayISD_E4typeEEEEESt16is_constructibleIS2_JSD_EESt13is_assignableIRS2_SD_EEERS3_E4typeEOSD_.exit.i.i.i.i ] ; 2 uses
  %i.ca = trunc i8 %i.bz to i1
  br i1 %i.ca, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cb = load ptr, ptr %4, align 8, !tbaa !147, !noalias !7305 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i.i, label %bb.q, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.p
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !167, !noalias !7305
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !7305
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %i.cb) #22, !noalias !7305, !inline_history !7299
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i, %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !7305
  %.not.i12.i.i.i.i = icmp eq ptr %.sroa.024.1.i.i.i.i, null
  br i1 %.not.i12.i.i.i.i, label %_ZSt10__invoke_rIN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEERZZN12_GLOBAL__N_19ELFDumperINS0_6object7ELFTypeILNS0_10endiannessE1ELb1EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS8_13Elf_Shdr_ImplISB_EEE15_JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit, label %_ZNKSt14default_deleteIN4llvm7ELFYAML25DependentLibrariesSectionEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm7ELFYAML25DependentLibrariesSectionEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.q, %bb.a
  %.sroa.10.1.i = phi i8 [ %.sroa.10.0.i, %bb.q ], [ -1, %bb.a ]
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.i, %bb.q ], [ %i.s, %bb.a ]
  %.sroa.024.233.i.i.i.i = phi ptr [ %.sroa.024.1.i.i.i.i, %bb.q ], [ %i.a, %bb.a ] ; 2 uses
  %i.cf = load ptr, ptr %.sroa.024.233.i.i.i.i, align 8, !tbaa !167, !noalias !7305
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !7305
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.024.233.i.i.i.i) #22, !noalias !7305, !inline_history !7300
  br label %_ZSt10__invoke_rIN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEERZZN12_GLOBAL__N_19ELFDumperINS0_6object7ELFTypeILNS0_10endiannessE1ELb1EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS8_13Elf_Shdr_ImplISB_EEE15_JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit

_ZSt10__invoke_rIN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEERZZN12_GLOBAL__N_19ELFDumperINS0_6object7ELFTypeILNS0_10endiannessE1ELb1EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS8_13Elf_Shdr_ImplISB_EEE15_JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit: ; preds = %bb.q, %_ZNKSt14default_deleteIN4llvm7ELFYAML25DependentLibrariesSectionEEclEPS2_.exit.i.i.i.i.i
  %.sroa.10.2.i = phi i8 [ %.sroa.10.0.i, %bb.q ], [ %.sroa.10.1.i, %_ZNKSt14default_deleteIN4llvm7ELFYAML25DependentLibrariesSectionEEclEPS2_.exit.i.i.i.i.i ]
  %.sroa.0.2.i = phi ptr [ %.sroa.0.0.i, %bb.q ], [ %.sroa.0.1.i, %_ZNKSt14default_deleteIN4llvm7ELFYAML25DependentLibrariesSectionEEclEPS2_.exit.i.i.i.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cj = and i8 %.sroa.10.2.i, 1
  %i.ck = load i8, ptr %i.ci, align 8, !alias.scope !7303
  %i.cl = and i8 %i.ck, -2
  %i.cm = or disjoint i8 %i.cl, %i.cj
  store i8 %i.cm, ptr %i.ci, align 8, !alias.scope !7303
  store ptr %.sroa.0.2.i, ptr %0, align 8, !tbaa !87, !alias.scope !7303
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEEPKNS0_6object13Elf_Shdr_ImplINS6_7ELFTypeILNS0_10endiannessE1ELb1EEEEEEZZN12_GLOBAL__N_19ELFDumperISA_E12dumpSectionsEvENKUljE_clEjEUlSD_E15_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #16 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE1ELb1EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE15_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !87
  br label %_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE1ELb1EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE15_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !458
  br label %_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE1ELb1EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE15_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8
  store i64 %.val, ptr %0, align 8, !tbaa !380
  br label %_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE1ELb1EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE15_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE1ELb1EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE15_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt17_Function_handlerIFN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEEPKNS0_6object13Elf_Shdr_ImplINS6_7ELFTypeILNS0_10endiannessE1ELb1EEEEEEZZN12_GLOBAL__N_19ELFDumperISA_E12dumpSectionsEvENKUljE_clEjEUlSD_E16_E9_M_invokeERKSt9_Any_dataOSD_(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.521") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %4 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %5 = alloca %class.anon.475, align 1            ; 3 uses
  %6 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %7 = alloca %"class.llvm::Expected.576", align 8 ; 9 uses
  %8 = alloca %"class.llvm::DataExtractor", align 8 ; 6 uses
  %9 = alloca %"class.llvm::DataExtractor::Cursor", align 8 ; 5 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !7327  ; 2 uses
  %.val2 = load ptr, ptr %2, align 8, !tbaa !377  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7328)
  %i.a = tail call noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #24, !noalias !7329 ; 38 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 19, ptr %i.b, align 8, !tbaa !181, !noalias !7329
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !noalias !7329
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !182, !noalias !7329
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %i.e, align 8, !tbaa !183, !noalias !7329
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 0, ptr %i.f, align 8, !tbaa !185, !noalias !7329
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i8 0, ptr %i.g, align 8, !tbaa !182, !noalias !7329
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i8 0, ptr %i.h, align 8, !tbaa !187, !noalias !7329
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i8 0, ptr %i.i, align 8, !tbaa !182, !noalias !7329
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 5 uses
  store i8 0, ptr %i.j, align 8, !tbaa !189, !noalias !7329
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i8 0, ptr %i.k, align 8, !tbaa !182, !noalias !7329
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store i8 0, ptr %i.l, align 8, !tbaa !182, !noalias !7329
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i8 0, ptr %i.m, align 8, !tbaa !182, !noalias !7329
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store i8 0, ptr %i.n, align 8, !tbaa !182, !noalias !7329
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store i8 0, ptr %i.o, align 8, !tbaa !182, !noalias !7329
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store i8 0, ptr %i.p, align 8, !tbaa !182, !noalias !7329
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 276
  store i8 0, ptr %i.q, align 4, !tbaa !191, !noalias !7329
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm7ELFYAML23CallGraphProfileSectionE, i64 16), ptr %i.a, align 8, !tbaa !167, !noalias !7329
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 304 ; 3 uses
  store i8 0, ptr %i.r, align 8, !tbaa !597, !noalias !7329
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22, !noalias !7330
  call fastcc void @_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEE17dumpCommonSectionEPKNS2_13Elf_Shdr_ImplIS5_EERNS1_7ELFYAML7SectionE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(256) %.val, ptr noundef %.val2, ptr noundef nonnull align 8 dereferenceable(280) %i.a), !noalias !7330
  %i.s = load ptr, ptr %6, align 8, !tbaa !165, !noalias !7330 ; 2 uses
  %.not88.i.i.i.i = icmp eq ptr %i.s, null
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !7330
  br i1 %.not88.i.i.i.i, label %_ZN4llvm5ErrorD2Ev.exit24.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML23CallGraphProfileSectionEEclEPS2_.exit.i.i.i.i.i

_ZN4llvm5ErrorD2Ev.exit24.i.i.i.i:                ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !7330
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 216 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !376, !noalias !7330, !nonnull !136, !align !137
  call void @_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE1ELb1EEEE18getSectionContentsERKNS0_13Elf_Shdr_ImplIS4_EE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.576") align 8 %7, ptr noundef nonnull align 8 dereferenceable(96) %i.u, ptr noundef nonnull align 1 dereferenceable(64) %.val2) #22, !noalias !7330
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8, !noalias !7330
  %i.x = trunc i8 %i.w to i1
  br i1 %i.x, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i, label %bb.b

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit24.i.i.i.i
  %i.y = load i64, ptr %7, align 8, !tbaa !147, !noalias !7331
  %i.z = inttoptr i64 %i.y to ptr
  store ptr null, ptr %7, align 8, !tbaa !147, !noalias !7331
  br label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i

bb.b:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit24.i.i.i.i
  %.sroa.064.0.copyload.i.i.i.i = load ptr, ptr %7, align 8, !tbaa !174, !noalias !7330 ; 3 uses
  %.sroa.665.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.665.0.copyload.i.i.i.i = load i64, ptr %.sroa.665.0..sroa_idx.i.i.i.i, align 8, !tbaa !143, !noalias !7330 ; 7 uses
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !376, !noalias !7330, !nonnull !136, !align !137
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !138, !noalias !7330
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 18
  %.0.copyload.i.i.i.i.i.i.i = load i16, ptr %i.ac, align 1, !noalias !7330
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %.sroa.011.0.copyload.i.i.i.i = load i32, ptr %i.ad, align 4, !tbaa !142, !noalias !7330 ; 2 uses
  %.sroa.09.0.copyload.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !174, !noalias !7330 ; 2 uses
  %.sroa.210.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.210.0.copyload.i.i.i.i = load i64, ptr %.sroa.210.0..sroa_idx.i.i.i.i, align 8, !tbaa !143, !noalias !7330
  %i.ae = icmp eq i16 %.0.copyload.i.i.i.i.i.i.i, 8
  %i.af = icmp eq i32 %.sroa.011.0.copyload.i.i.i.i, 1879048234
  %or.cond.i.i.i.i.i = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond.i.i.i.i.i, label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE1ELb1EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i, label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %bb.b
  switch i32 %.sroa.011.0.copyload.i.i.i.i, label %bb.g [
    i32 2, label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE1ELb1EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i
    i32 11, label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE1ELb1EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i
    i32 17, label %bb.c
    i32 9, label %bb.d
    i32 4, label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE1ELb1EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i
    i32 19, label %bb.e
    i32 6, label %bb.d
    i32 5, label %bb.c
    i32 18, label %bb.c
    i32 1879048191, label %bb.f
    i32 1879002121, label %bb.e
  ]

bb.c:                                             ; preds = %.critedge.i.i.i.i.i, %.critedge.i.i.i.i.i, %.critedge.i.i.i.i.i
  br label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE1ELb1EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i

bb.d:                                             ; preds = %.critedge.i.i.i.i.i, %.critedge.i.i.i.i.i
  br label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE1ELb1EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i

bb.e:                                             ; preds = %.critedge.i.i.i.i.i, %.critedge.i.i.i.i.i
  br label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE1ELb1EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i

bb.f:                                             ; preds = %.critedge.i.i.i.i.i
  br label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE1ELb1EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i

bb.g:                                             ; preds = %.critedge.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.210.0.copyload.i.i.i.i, 10
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i, label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE1ELb1EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i:      ; preds = %bb.g
  %i.ag = load i64, ptr %.sroa.09.0.copyload.i.i.i.i, align 1
  %i.ah = xor i64 %i.ag, 8313477191008871470
  %i.ai = getelementptr i8, ptr %.sroa.09.0.copyload.i.i.i.i, i64 8
  %i.aj = load i16, ptr %i.ai, align 1
  %i.ak = zext i16 %i.aj to i64
  %i.al = xor i64 %i.ak, 29300
  %i.am = or i64 %i.ah, %i.al
  %i.an = icmp ne i64 %i.am, 0
  %i.ao = zext i1 %i.an to i32
  %bcmp.i.fr.i.i.i.i.i = freeze i32 %i.ao
  %i.ap = icmp eq i32 %bcmp.i.fr.i.i.i.i.i, 0
  %i.aq = zext i1 %i.ap to i64
  br label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE1ELb1EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i

_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE1ELb1EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %.critedge.i.i.i.i.i, %.critedge.i.i.i.i.i, %.critedge.i.i.i.i.i, %bb.b
  %.0.i.i.i.i.i = phi i64 [ 2, %bb.f ], [ 24, %.critedge.i.i.i.i.i ], [ 24, %.critedge.i.i.i.i.i ], [ 24, %bb.b ], [ 4, %bb.c ], [ 16, %bb.d ], [ 24, %.critedge.i.i.i.i.i ], [ 8, %bb.e ], [ 0, %bb.g ], [ %i.aq, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i ] ; 3 uses
  %i.ar = icmp eq i64 %.sroa.665.0.copyload.i.i.i.i, 0
  br i1 %i.ar, label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE1ELb1EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i
  %i.as = urem i64 %.sroa.665.0.copyload.i.i.i.i, %.0.i.i.i.i.i
  %i.at = udiv i64 %.sroa.665.0.copyload.i.i.i.i, %.0.i.i.i.i.i ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.av = load i8, ptr %i.j, align 8, !tbaa !189, !range !152, !noalias !7330, !noundef !136
  %i.aw = trunc nuw i8 %i.av to i1
  store ptr %.sroa.064.0.copyload.i.i.i.i, ptr %i.au, align 8, !tbaa !174, !noalias !7330
  %.sroa.557.0..sroa_idx58.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 %.sroa.665.0.copyload.i.i.i.i, ptr %.sroa.557.0..sroa_idx58.i.i.i.i, align 8, !tbaa !143, !noalias !7330
  %.sroa.660.0..sroa_idx61.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 0, ptr %.sroa.660.0..sroa_idx61.i.i.i.i, align 8, !tbaa !199, !noalias !7330
  br i1 %i.aw, label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.j, align 8, !tbaa !189, !noalias !7330
  br label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i

bb.k:                                             ; preds = %bb.h
  %i.ax = icmp ugt i64 %i.at, 1152921504606846975
  br i1 %i.ax, label %bb.l, label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #26, !noalias !7330
  unreachable

_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i.i: ; preds = %bb.k
  %.not.i.i.i.i.i.i.i.i = icmp ugt i64 %.0.i.i.i.i.i, %.sroa.665.0.copyload.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EEC2EmRKS3_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i.i
  %i.ay = shl nuw nsw i64 %i.at, 3
  %i.az = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #24, !noalias !7330 ; 5 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.at ; 2 uses
  store i64 0, ptr %i.az, align 8, !noalias !7330
  %i.bb = getelementptr i8, ptr %i.az, i64 8      ; 3 uses
  %i.bc = add nsw i64 %i.at, -1                   ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EEC2EmRKS3_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %bb.m
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bc, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.bb, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !143, !noalias !7330
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EEC2EmRKS3_.exit.i.i.i.i

_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EEC2EmRKS3_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m, %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i.i
  %.sroa.046.1.i.i.i.i = phi ptr [ %i.az, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.az, %bb.m ], [ null, %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i.i ] ; 5 uses
  %.sroa.15.1.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ba, %bb.m ], [ null, %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i.i ] ; 3 uses
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bb, %bb.m ], [ null, %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22, !noalias !7330
  %i.bf = load ptr, ptr %i.t, align 8, !tbaa !376, !noalias !7330, !nonnull !136, !align !137
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !138, !noalias !7330
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 5
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !86, !noalias !7330
  %i.bj = icmp eq i8 %i.bi, 1
  %i.bk = zext i1 %i.bj to i8
  store ptr %.sroa.064.0.copyload.i.i.i.i, ptr %8, align 8, !tbaa !138, !noalias !7330
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.sroa.665.0.copyload.i.i.i.i, ptr %i.bl, align 8, !tbaa !194, !noalias !7330
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 %i.bk, ptr %i.bm, align 8, !tbaa !196, !noalias !7330
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22, !noalias !7330
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %.not8990.i.i.i.i = icmp eq ptr %.sroa.046.1.i.i.i.i, %.0.i.i.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false), !noalias !7330
  br i1 %.not8990.i.i.i.i, label %.critedge22.i.i.i.i, label %.critedge20.i.i.i.i

bb.n:                                             ; preds = %.critedge20.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.041.091.i.i.i.i, i64 8 ; 2 uses
  %.not89.i.i.i.i = icmp eq ptr %i.bo, %.0.i.i.i.i.i.i.i.i.i
  br i1 %.not89.i.i.i.i, label %.critedge22.i.i.i.i, label %.critedge20.i.i.i.i

.critedge20.i.i.i.i:                              ; preds = %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EEC2EmRKS3_.exit.i.i.i.i, %bb.n
  %.sroa.041.091.i.i.i.i = phi ptr [ %i.bo, %bb.n ], [ %.sroa.046.1.i.i.i.i, %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EEC2EmRKS3_.exit.i.i.i.i ] ; 2 uses
  %i.bp = call noundef i64 @_ZNK4llvm13DataExtractor6getU64EPmPNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(17) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %i.bn) #22, !noalias !7330
  store i64 %i.bp, ptr %.sroa.041.091.i.i.i.i, align 8, !tbaa !599, !noalias !7330
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !165, !noalias !7330 ; 2 uses
  %.not.i.i26.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i26.i.i.i.i, label %bb.n, label %bb.o

bb.o:                                             ; preds = %.critedge20.i.i.i.i
  store ptr null, ptr %i.bn, align 8, !tbaa !165, !noalias !7332
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !7330
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !7330
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !7330
  store ptr %i.bq, ptr %4, align 8, !tbaa !165, !noalias !7330
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %3, ptr nofree noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5), !noalias !7330
  %i.br = load ptr, ptr %4, align 8, !tbaa !165, !noalias !7330 ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !167, !noalias !7330
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !7330
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.br) #22, !noalias !7330, !inline_history !7322
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !7330
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !7330
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !7330
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.bx = load i8, ptr %i.j, align 8, !tbaa !189, !range !152, !noalias !7330, !noundef !136
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit29.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 1, ptr %i.j, align 8, !tbaa !189, !noalias !7330
  br label %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit29.i.i.i.i

_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit29.i.i.i.i: ; preds = %bb.r, %bb.q
  store ptr %.sroa.064.0.copyload.i.i.i.i, ptr %i.bw, align 8, !tbaa !174, !noalias !7330
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 %.sroa.665.0.copyload.i.i.i.i, ptr %i.bz, align 8, !tbaa !143, !noalias !7330
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 0, ptr %i.ca, align 8, !tbaa !199, !noalias !7330
  %i.cb = ptrtoint ptr %.sroa.15.1.i.i.i.i to i64
  br label %_ZNSt8optionalISt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS3_EEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i.i

.critedge22.i.i.i.i:                              ; preds = %bb.n, %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EEC2EmRKS3_.exit.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 280 ; 3 uses
  %i.cd = load i8, ptr %i.r, align 8, !tbaa !597, !range !152, !noalias !7330, !noundef !136
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 288 ; 2 uses
  br i1 %i.ce, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.critedge22.i.i.i.i
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !602, !noalias !7330 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 296 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !603, !noalias !7330
  store ptr %.sroa.046.1.i.i.i.i, ptr %i.cc, align 8, !tbaa !602, !noalias !7330
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.cf, align 8, !tbaa !604, !noalias !7330
  store ptr %.sroa.15.1.i.i.i.i, ptr %i.ch, align 8, !tbaa !603, !noalias !7330
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8optionalISt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS3_EEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23, !noalias !7330
  br label %_ZNSt8optionalISt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS3_EEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i.i

bb.u:                                             ; preds = %.critedge22.i.i.i.i
  store ptr %.sroa.046.1.i.i.i.i, ptr %i.cc, align 8, !tbaa !602, !noalias !7330
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.cf, align 8, !tbaa !604, !noalias !7330
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store ptr %.sroa.15.1.i.i.i.i, ptr %i.cm, align 8, !tbaa !603, !noalias !7330
  store i8 1, ptr %i.r, align 8, !tbaa !597, !noalias !7330
  br label %_ZNSt8optionalISt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS3_EEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i.i

_ZNSt8optionalISt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS3_EEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i.i: ; preds = %bb.u, %bb.t, %bb.s, %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit29.i.i.i.i
  %.sroa.046.0.i.i.i.i = phi ptr [ %.sroa.046.1.i.i.i.i, %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit29.i.i.i.i ], [ null, %bb.u ], [ null, %bb.t ], [ null, %bb.s ] ; 3 uses
  %.sroa.15.0.i.i.i.i = phi i64 [ %i.cb, %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit29.i.i.i.i ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ]
  %i.cn = load ptr, ptr %i.bn, align 8, !tbaa !165, !noalias !7330 ; 3 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %_ZN4llvm13DataExtractor6CursorD2Ev.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt8optionalISt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS3_EEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i.i
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !167, !noalias !7330
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !7330
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %i.cn) #22, !noalias !7330, !inline_history !7323
  br label %_ZN4llvm13DataExtractor6CursorD2Ev.exit.i.i.i.i

_ZN4llvm13DataExtractor6CursorD2Ev.exit.i.i.i.i:  ; preds = %bb.v, %_ZNSt8optionalISt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS3_EEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22, !noalias !7330
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !7330
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.046.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm13DataExtractor6CursorD2Ev.exit.i.i.i.i
  %i.cs = ptrtoint ptr %.sroa.046.0.i.i.i.i to i64
  %i.ct = sub i64 %.sroa.15.0.i.i.i.i, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.046.0.i.i.i.i, i64 noundef %i.ct) #23, !noalias !7330
  br label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i

_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i: ; preds = %bb.w, %_ZN4llvm13DataExtractor6CursorD2Ev.exit.i.i.i.i, %bb.j, %bb.i, %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE1ELb1EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i
  %.sroa.10.1.i = phi i8 [ -1, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i ], [ 0, %bb.w ], [ 0, %_ZN4llvm13DataExtractor6CursorD2Ev.exit.i.i.i.i ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE1ELb1EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.z, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i ], [ %i.a, %bb.w ], [ %i.a, %_ZN4llvm13DataExtractor6CursorD2Ev.exit.i.i.i.i ], [ %i.a, %bb.j ], [ %i.a, %bb.i ], [ %i.a, %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE1ELb1EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i ] ; 2 uses
  %.sroa.074.3.i.i.i.i = phi ptr [ %i.a, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i ], [ null, %bb.w ], [ null, %_ZN4llvm13DataExtractor6CursorD2Ev.exit.i.i.i.i ], [ null, %bb.j ], [ null, %bb.i ], [ null, %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE1ELb1EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i ] ; 2 uses
  %i.cu = load i8, ptr %i.v, align 8, !noalias !7330
  %i.cv = trunc i8 %i.cu to i1
  br i1 %i.cv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i
  %i.cw = load ptr, ptr %7, align 8, !tbaa !147, !noalias !7330 ; 3 uses
  %.not.i.i32.i.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i32.i.i.i.i, label %bb.y, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.x
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !167, !noalias !7330
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !noalias !7330
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.cw) #22, !noalias !7330, !inline_history !7324
  br label %bb.y

bb.y:                                             ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i, %bb.x, %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !7330
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.074.3.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZSt10__invoke_rIN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEERZZN12_GLOBAL__N_19ELFDumperINS0_6object7ELFTypeILNS0_10endiannessE1ELb1EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS8_13Elf_Shdr_ImplISB_EEE16_JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit, label %_ZNKSt14default_deleteIN4llvm7ELFYAML23CallGraphProfileSectionEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm7ELFYAML23CallGraphProfileSectionEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.y, %bb.a
  %.sroa.10.2.i = phi i8 [ %.sroa.10.1.i, %bb.y ], [ -1, %bb.a ]
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.i, %bb.y ], [ %i.s, %bb.a ]
  %.sroa.074.487.i.i.i.i = phi ptr [ %.sroa.074.3.i.i.i.i, %bb.y ], [ %i.a, %bb.a ] ; 2 uses
  %i.da = load ptr, ptr %.sroa.074.487.i.i.i.i, align 8, !tbaa !167, !noalias !7330
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !7330
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.074.487.i.i.i.i) #22, !noalias !7330, !inline_history !7325
  br label %_ZSt10__invoke_rIN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEERZZN12_GLOBAL__N_19ELFDumperINS0_6object7ELFTypeILNS0_10endiannessE1ELb1EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS8_13Elf_Shdr_ImplISB_EEE16_JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit

_ZSt10__invoke_rIN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEERZZN12_GLOBAL__N_19ELFDumperINS0_6object7ELFTypeILNS0_10endiannessE1ELb1EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS8_13Elf_Shdr_ImplISB_EEE16_JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit: ; preds = %bb.y, %_ZNKSt14default_deleteIN4llvm7ELFYAML23CallGraphProfileSectionEEclEPS2_.exit.i.i.i.i.i
  %.sroa.10.3.i = phi i8 [ %.sroa.10.1.i, %bb.y ], [ %.sroa.10.2.i, %_ZNKSt14default_deleteIN4llvm7ELFYAML23CallGraphProfileSectionEEclEPS2_.exit.i.i.i.i.i ]
  %.sroa.0.2.i = phi ptr [ %.sroa.0.0.i, %bb.y ], [ %.sroa.0.1.i, %_ZNKSt14default_deleteIN4llvm7ELFYAML23CallGraphProfileSectionEEclEPS2_.exit.i.i.i.i.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.de = and i8 %.sroa.10.3.i, 1
  %i.df = load i8, ptr %i.dd, align 8, !alias.scope !7328
  %i.dg = and i8 %i.df, -2
  %i.dh = or disjoint i8 %i.dg, %i.de
  store i8 %i.dh, ptr %i.dd, align 8, !alias.scope !7328
  store ptr %.sroa.0.2.i, ptr %0, align 8, !tbaa !87, !alias.scope !7328
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEEPKNS0_6object13Elf_Shdr_ImplINS6_7ELFTypeILNS0_10endiannessE1ELb1EEEEEEZZN12_GLOBAL__N_19ELFDumperISA_E12dumpSectionsEvENKUljE_clEjEUlSD_E16_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #16 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE1ELb1EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE16_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !87
  br label %_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE1ELb1EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE16_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !458
  br label %_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE1ELb1EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE16_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8
  store i64 %.val, ptr %0, align 8, !tbaa !380
  br label %_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE1ELb1EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE16_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE1ELb1EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE16_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt17_Function_handlerIFN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEEPKNS0_6object13Elf_Shdr_ImplINS6_7ELFTypeILNS0_10endiannessE1ELb1EEEEEEZZN12_GLOBAL__N_19ELFDumperISA_E12dumpSectionsEvENKUljE_clEjEUlSD_E17_E9_M_invokeERKSt9_Any_dataOSD_(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.521") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %4 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %5 = alloca %class.anon.475, align 1            ; 3 uses
  %i.a = alloca i16, align 2                      ; 6 uses
  %6 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %7 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %8 = alloca %"class.llvm::Expected.576", align 8 ; 9 uses
  %9 = alloca %"class.llvm::DataExtractor", align 8 ; 27 uses
  %10 = alloca %"class.std::vector.1120", align 16 ; 12 uses
  %11 = alloca %"class.std::vector.1135", align 8 ; 9 uses
  %12 = alloca %"class.llvm::DataExtractor::Cursor", align 8 ; 27 uses
  %13 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %17 = alloca %"class.std::vector.1147", align 16 ; 10 uses
  %18 = alloca %"class.std::vector.1152", align 8 ; 11 uses
  %19 = alloca %"struct.llvm::BBAddrMapYAML::BBAddrMapEntry::BBRangeEntry", align 8 ; 10 uses
  %20 = alloca %"struct.llvm::BBAddrMapYAML::BBAddrMapEntry", align 8 ; 11 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !7370  ; 2 uses
  %.val2 = load ptr, ptr %2, align 8, !tbaa !377  ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7371)
  %i.b = tail call noalias noundef nonnull dereferenceable(344) ptr @_Znwm(i64 noundef 344) #24, !noalias !7372 ; 37 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 20, ptr %i.c, align 8, !tbaa !181, !noalias !7372
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !7372
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i8 0, ptr %i.e, align 8, !tbaa !182, !noalias !7372
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i8 0, ptr %i.f, align 8, !tbaa !183, !noalias !7372
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 0, ptr %i.g, align 8, !tbaa !185, !noalias !7372
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i8 0, ptr %i.h, align 8, !tbaa !182, !noalias !7372
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i8 0, ptr %i.i, align 8, !tbaa !187, !noalias !7372
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i8 0, ptr %i.j, align 8, !tbaa !182, !noalias !7372
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 3 uses
  store i8 0, ptr %i.k, align 8, !tbaa !189, !noalias !7372
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store i8 0, ptr %i.l, align 8, !tbaa !182, !noalias !7372
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store i8 0, ptr %i.m, align 8, !tbaa !182, !noalias !7372
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  store i8 0, ptr %i.n, align 8, !tbaa !182, !noalias !7372
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store i8 0, ptr %i.o, align 8, !tbaa !182, !noalias !7372
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store i8 0, ptr %i.p, align 8, !tbaa !182, !noalias !7372
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  store i8 0, ptr %i.q, align 8, !tbaa !182, !noalias !7372
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 276
  store i8 0, ptr %i.r, align 4, !tbaa !191, !noalias !7372
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm7ELFYAML16BBAddrMapSectionE, i64 16), ptr %i.b, align 8, !tbaa !167, !noalias !7372
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 304 ; 3 uses
  store i8 0, ptr %i.s, align 8, !tbaa !606, !noalias !7372
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  store i8 0, ptr %i.t, align 8, !tbaa !608, !noalias !7372
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !7373
  call fastcc void @_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEE17dumpCommonSectionEPKNS2_13Elf_Shdr_ImplIS5_EERNS1_7ELFYAML7SectionE(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(256) %.val, ptr noundef %.val2, ptr noundef nonnull align 8 dereferenceable(280) %i.b), !noalias !7373
  %i.u = load ptr, ptr %7, align 8, !tbaa !165, !noalias !7373 ; 2 uses
  %.not345.i.i.i.i = icmp eq ptr %i.u, null
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !7373
  br i1 %.not345.i.i.i.i, label %_ZN4llvm5ErrorD2Ev.exit87.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML16BBAddrMapSectionEEclEPS2_.exit.i.i.i.i.i

_ZN4llvm5ErrorD2Ev.exit87.i.i.i.i:                ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22, !noalias !7373
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 216 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !376, !noalias !7373, !nonnull !136, !align !137
  call void @_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE1ELb1EEEE18getSectionContentsERKNS0_13Elf_Shdr_ImplIS4_EE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.576") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %i.w, ptr noundef nonnull align 1 dereferenceable(64) %.val2) #22, !noalias !7373
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !noalias !7373 ; 3 uses
  %i.z = trunc i8 %i.y to i1
  br i1 %i.z, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i, label %bb.b

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit87.i.i.i.i
  %i.aa = load i64, ptr %8, align 8, !tbaa !147, !noalias !7374
  %i.ab = inttoptr i64 %i.aa to ptr
  store ptr null, ptr %8, align 8, !tbaa !147, !noalias !7374
  br label %bb.cq

bb.b:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit87.i.i.i.i
  %.sroa.0284.0.copyload.i.i.i.i = load ptr, ptr %8, align 8, !tbaa !174, !noalias !7373 ; 2 uses
  %.sroa.5285.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.5285.0.copyload.i.i.i.i = load i64, ptr %.sroa.5285.0..sroa_idx.i.i.i.i, align 8, !tbaa !143, !noalias !7373 ; 4 uses
  %i.ac = icmp eq i64 %.sroa.5285.0.copyload.i.i.i.i, 0
  br i1 %i.ac, label %bb.cq, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22, !noalias !7373
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !376, !noalias !7373, !nonnull !136, !align !137
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !138, !noalias !7373
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 5
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !86, !noalias !7373
  %i.ah = icmp eq i8 %i.ag, 1
  %i.ai = zext i1 %i.ah to i8
  store ptr %.sroa.0284.0.copyload.i.i.i.i, ptr %9, align 8, !tbaa !138, !noalias !7373
end_hunk_6
begin_hunk_7_@_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE0ELb1EEEE25getSectionContentsAsArrayINS0_12Elf_Sym_ImplIS4_EEEENS_8ExpectedINS_8ArrayRefIT_EEEERKNS0_13Elf_Shdr_ImplIS4_EE:bb.a
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE0ELb1EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(64) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !7613)
  %i.b = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.9, i64 noundef 8) #22, !noalias !7613 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.c, ptr %7, align 8, !tbaa !82, !alias.scope !7613
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !88   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !85   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  store ptr %i.d, ptr %7, align 8, !tbaa !88, !alias.scope !7613
  %i.k = load i64, ptr %i.e, align 8, !tbaa !86
  store i64 %i.k, ptr %i.c, align 8, !tbaa !86, !alias.scope !7613
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !85
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.l = phi i64 [ %i.h, %bb.c ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !85, !alias.scope !7613
  store ptr %i.e, ptr %i.b, align 8, !tbaa !88
  store i64 0, ptr %i.m, align 8, !tbaa !85
  store i8 0, ptr %i.e, align 8, !tbaa !86
  call void @llvm.experimental.noalias.scope.decl(metadata !7614)
  %i.o = add i64 %i.l, -4611686018427387870
  %i.p = icmp ult i64 %i.o, 34
  br i1 %i.p, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #26, !noalias !7614
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.q = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.10, i64 noundef 34) #22, !noalias !7614 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.r, ptr %6, align 8, !tbaa !82, !alias.scope !7614
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !88   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !85   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.s, ptr %6, align 8, !tbaa !88, !alias.scope !7614
  %i.z = load i64, ptr %i.t, align 8, !tbaa !86
  store i64 %i.z, ptr %i.r, align 8, !tbaa !86, !alias.scope !7614
  %.phi.trans.insert.i25 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i26 = load i64, ptr %.phi.trans.insert.i25, align 8, !tbaa !85
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.e
  %i.aa = phi i64 [ %i.w, %bb.e ], [ %.pre.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !85, !alias.scope !7614
  store ptr %i.t, ptr %i.q, align 8, !tbaa !88
  store i64 0, ptr %i.ab, align 8, !tbaa !85
  store i8 0, ptr %i.t, align 8, !tbaa !86
  store ptr %6, ptr %5, align 8, !alias.scope !7615
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr inttoptr (i64 24 to ptr), ptr %i.ad, align 8, !alias.scope !7615
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 4, ptr %i.ae, align 8, !tbaa !162, !alias.scope !7615
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 11, ptr %i.af, align 1, !tbaa !163, !alias.scope !7615
  store ptr %5, ptr %4, align 8, !alias.scope !7616
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.11, ptr %i.ag, align 8, !alias.scope !7616
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.ah, align 8, !tbaa !162, !alias.scope !7616
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 3, ptr %i.ai, align 1, !tbaa !163, !alias.scope !7616
  %.0.copyload.i.i.i42 = load i64, ptr %i.a, align 1
  %i.aj = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i42)
  %i.ak = inttoptr i64 %i.aj to ptr
  store ptr %4, ptr %3, align 8, !alias.scope !7617
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ak, ptr %i.al, align 8, !alias.scope !7617
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 2, ptr %i.am, align 8, !tbaa !162, !alias.scope !7617
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 11, ptr %i.an, align 1, !tbaa !163, !alias.scope !7617
  %i.ao = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24, !noalias !7618 ; 2 uses
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #22, !noalias !7618
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.ao, ptr noundef nonnull align 8 dereferenceable(34) %3, i32 3, ptr nonnull %i.ap) #22, !noalias !7618
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8
  %i.as = or i8 %i.ar, 1
  store i8 %i.as, ptr %i.aq, align 8
  store ptr %i.ao, ptr %0, align 8, !tbaa !147, !alias.scope !7619
  %i.at = load ptr, ptr %6, align 8, !tbaa !88    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.r
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.av = load i64, ptr %i.r, align 8, !tbaa !86
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  %i.ax = load ptr, ptr %7, align 8, !tbaa !88    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.c
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.az = load i64, ptr %i.c, align 8, !tbaa !86
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  %i.bb = load ptr, ptr %8, align 8, !tbaa !88    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !86
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE0ELb1EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(64) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !7620)
  %i.bm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.9, i64 noundef 8) #22, !noalias !7620 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr %i.bn, ptr %14, align 8, !tbaa !82, !alias.scope !7620
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !88 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 5 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !85 ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 16
  call void @llvm.assume(i1 %i.bt)
  %i.bu = add nuw nsw i64 %i.bs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bn, ptr noundef nonnull align 8 dereferenceable(1) %i.bp, i64 %i.bu, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.g
  store ptr %i.bo, ptr %14, align 8, !tbaa !88, !alias.scope !7620
  %i.bv = load i64, ptr %i.bp, align 8, !tbaa !86
  store i64 %i.bv, ptr %i.bn, align 8, !tbaa !86, !alias.scope !7620
  %.phi.trans.insert.i68 = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.pre.i69 = load i64, ptr %.phi.trans.insert.i68, align 8, !tbaa !85
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  %i.bw = phi i64 [ %i.bs, %bb.h ], [ %.pre.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.bw, ptr %i.by, align 8, !tbaa !85, !alias.scope !7620
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !88
  store i64 0, ptr %i.bx, align 8, !tbaa !85
  store i8 0, ptr %i.bp, align 8, !tbaa !86
  call void @llvm.experimental.noalias.scope.decl(metadata !7621)
  %i.bz = add i64 %i.bw, -4611686018427387879
  %i.ca = icmp ult i64 %i.bz, 25
  br i1 %i.ca, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71

bb.i:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #26, !noalias !7621
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70
  %i.cb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.12, i64 noundef 25) #22, !noalias !7621 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr %i.cc, ptr %13, align 8, !tbaa !82, !alias.scope !7621
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !88 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 5 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !85 ; 3 uses
  %i.ci = icmp ult i64 %i.ch, 16
  call void @llvm.assume(i1 %i.ci)
  %i.cj = add nuw nsw i64 %i.ch, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cc, ptr noundef nonnull align 8 dereferenceable(1) %i.ce, i64 %i.cj, i1 false)
  br label %_ZN4llvm5ErrorD2Ev.exit137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71
  store ptr %i.cd, ptr %13, align 8, !tbaa !88, !alias.scope !7621
  %i.ck = load i64, ptr %i.ce, align 8, !tbaa !86
  store i64 %i.ck, ptr %i.cc, align 8, !tbaa !86, !alias.scope !7621
  %.phi.trans.insert.i73 = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.pre.i74 = load i64, ptr %.phi.trans.insert.i73, align 8, !tbaa !85
  br label %_ZN4llvm5ErrorD2Ev.exit137

_ZN4llvm5ErrorD2Ev.exit137:                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %bb.j
  %i.cl = phi i64 [ %i.ch, %bb.j ], [ %.pre.i74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.cl, ptr %i.cn, align 8, !tbaa !85, !alias.scope !7621
  store ptr %i.ce, ptr %i.cb, align 8, !tbaa !88
  store i64 0, ptr %i.cm, align 8, !tbaa !85
  store i8 0, ptr %i.ce, align 8, !tbaa !86
  %.sroa.04.0.copyload.i.i82.cast = inttoptr i64 %i.bj to ptr
  store ptr %13, ptr %12, align 8, !alias.scope !7622
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %.sroa.04.0.copyload.i.i82.cast, ptr %i.co, align 8, !alias.scope !7622
  %i.cp = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 4, ptr %i.cp, align 8, !tbaa !162, !alias.scope !7622
  %i.cq = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 11, ptr %i.cq, align 1, !tbaa !163, !alias.scope !7622
  store ptr %12, ptr %11, align 8, !alias.scope !7623
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr @.str.13, ptr %i.cr, align 8, !alias.scope !7623
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 2, ptr %i.cs, align 8, !tbaa !162, !alias.scope !7623
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 3, ptr %i.ct, align 1, !tbaa !163, !alias.scope !7623
  %.0.copyload.i.i.i106 = load i64, ptr %i.a, align 1
  %i.cu = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i106)
  %i.cv = inttoptr i64 %i.cu to ptr
  store ptr %11, ptr %10, align 8, !alias.scope !7624
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.cv, ptr %i.cw, align 8, !alias.scope !7624
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 2, ptr %i.cx, align 8, !tbaa !162, !alias.scope !7624
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 11, ptr %i.cy, align 1, !tbaa !163, !alias.scope !7624
  store ptr %10, ptr %9, align 8, !alias.scope !7625
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @.str.14, ptr %i.cz, align 8, !alias.scope !7625
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 2, ptr %i.da, align 8, !tbaa !162, !alias.scope !7625
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 3, ptr %i.db, align 1, !tbaa !163, !alias.scope !7625
  %i.dc = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24, !noalias !7626 ; 2 uses
  %i.dd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #22, !noalias !7626
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.dc, ptr noundef nonnull align 8 dereferenceable(34) %9, i32 3, ptr nonnull %i.dd) #22, !noalias !7626
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.df = load i8, ptr %i.de, align 8
  %i.dg = or i8 %i.df, 1
  store i8 %i.dg, ptr %i.de, align 8
  store ptr %i.dc, ptr %0, align 8, !tbaa !147, !alias.scope !7627
  %i.dh = load ptr, ptr %13, align 8, !tbaa !88   ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.cc
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZN4llvm5ErrorD2Ev.exit137
  %i.dj = load i64, ptr %i.cc, align 8, !tbaa !86
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %_ZN4llvm5ErrorD2Ev.exit137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  %i.dl = load ptr, ptr %14, align 8, !tbaa !88   ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.bn
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %i.dn = load i64, ptr %i.bn, align 8, !tbaa !86
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  %i.dp = load ptr, ptr %15, align 8, !tbaa !88   ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !86
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.v

bb.k:                                             ; preds = %bb.f
  %i.du = xor i64 %i.bh, -1
  %i.dv = icmp ugt i64 %i.bj, %i.du
  br i1 %i.dv, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE0ELb1EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(64) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !7628)
  %i.dw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %22, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.9, i64 noundef 8) #22, !noalias !7628 ; 6 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  store ptr %i.dx, ptr %21, align 8, !tbaa !82, !alias.scope !7628
  %i.dy = load ptr, ptr %i.dw, align 8, !tbaa !88 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 5 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

bb.m:                                             ; preds = %bb.l
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !85 ; 3 uses
  %i.ed = icmp ult i64 %i.ec, 16
  call void @llvm.assume(i1 %i.ed)
end_hunk_7
begin_hunk_8_@_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE0ELb1EEEE25getSectionContentsAsArrayINS0_12Elf_Rel_ImplIS4_Lb1EEEEENS_8ExpectedINS_8ArrayRefIT_EEEERKNS0_13Elf_Shdr_ImplIS4_EE:bb.a
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE0ELb1EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(64) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !8476)
  %i.b = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.9, i64 noundef 8) #22, !noalias !8476 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.c, ptr %7, align 8, !tbaa !82, !alias.scope !8476
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !88   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !85   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  store ptr %i.d, ptr %7, align 8, !tbaa !88, !alias.scope !8476
  %i.k = load i64, ptr %i.e, align 8, !tbaa !86
  store i64 %i.k, ptr %i.c, align 8, !tbaa !86, !alias.scope !8476
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !85
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.l = phi i64 [ %i.h, %bb.c ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !85, !alias.scope !8476
  store ptr %i.e, ptr %i.b, align 8, !tbaa !88
  store i64 0, ptr %i.m, align 8, !tbaa !85
  store i8 0, ptr %i.e, align 8, !tbaa !86
  call void @llvm.experimental.noalias.scope.decl(metadata !8477)
  %i.o = add i64 %i.l, -4611686018427387870
  %i.p = icmp ult i64 %i.o, 34
  br i1 %i.p, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #26, !noalias !8477
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.q = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.10, i64 noundef 34) #22, !noalias !8477 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.r, ptr %6, align 8, !tbaa !82, !alias.scope !8477
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !88   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !85   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.s, ptr %6, align 8, !tbaa !88, !alias.scope !8477
  %i.z = load i64, ptr %i.t, align 8, !tbaa !86
  store i64 %i.z, ptr %i.r, align 8, !tbaa !86, !alias.scope !8477
  %.phi.trans.insert.i25 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i26 = load i64, ptr %.phi.trans.insert.i25, align 8, !tbaa !85
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.e
  %i.aa = phi i64 [ %i.w, %bb.e ], [ %.pre.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !85, !alias.scope !8477
  store ptr %i.t, ptr %i.q, align 8, !tbaa !88
  store i64 0, ptr %i.ab, align 8, !tbaa !85
  store i8 0, ptr %i.t, align 8, !tbaa !86
  store ptr %6, ptr %5, align 8, !alias.scope !8478
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr inttoptr (i64 24 to ptr), ptr %i.ad, align 8, !alias.scope !8478
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 4, ptr %i.ae, align 8, !tbaa !162, !alias.scope !8478
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 11, ptr %i.af, align 1, !tbaa !163, !alias.scope !8478
  store ptr %5, ptr %4, align 8, !alias.scope !8479
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.11, ptr %i.ag, align 8, !alias.scope !8479
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.ah, align 8, !tbaa !162, !alias.scope !8479
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 3, ptr %i.ai, align 1, !tbaa !163, !alias.scope !8479
  %.0.copyload.i.i.i42 = load i64, ptr %i.a, align 1
  %i.aj = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i42)
  %i.ak = inttoptr i64 %i.aj to ptr
  store ptr %4, ptr %3, align 8, !alias.scope !8480
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ak, ptr %i.al, align 8, !alias.scope !8480
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 2, ptr %i.am, align 8, !tbaa !162, !alias.scope !8480
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 11, ptr %i.an, align 1, !tbaa !163, !alias.scope !8480
  %i.ao = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24, !noalias !8481 ; 2 uses
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #22, !noalias !8481
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.ao, ptr noundef nonnull align 8 dereferenceable(34) %3, i32 3, ptr nonnull %i.ap) #22, !noalias !8481
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8
  %i.as = or i8 %i.ar, 1
  store i8 %i.as, ptr %i.aq, align 8
  store ptr %i.ao, ptr %0, align 8, !tbaa !147, !alias.scope !8482
  %i.at = load ptr, ptr %6, align 8, !tbaa !88    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.r
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.av = load i64, ptr %i.r, align 8, !tbaa !86
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  %i.ax = load ptr, ptr %7, align 8, !tbaa !88    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.c
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.az = load i64, ptr %i.c, align 8, !tbaa !86
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  %i.bb = load ptr, ptr %8, align 8, !tbaa !88    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !86
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE0ELb1EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(64) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !8483)
  %i.bm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.9, i64 noundef 8) #22, !noalias !8483 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr %i.bn, ptr %14, align 8, !tbaa !82, !alias.scope !8483
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !88 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 5 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !85 ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 16
  call void @llvm.assume(i1 %i.bt)
  %i.bu = add nuw nsw i64 %i.bs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bn, ptr noundef nonnull align 8 dereferenceable(1) %i.bp, i64 %i.bu, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.g
  store ptr %i.bo, ptr %14, align 8, !tbaa !88, !alias.scope !8483
  %i.bv = load i64, ptr %i.bp, align 8, !tbaa !86
  store i64 %i.bv, ptr %i.bn, align 8, !tbaa !86, !alias.scope !8483
  %.phi.trans.insert.i68 = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.pre.i69 = load i64, ptr %.phi.trans.insert.i68, align 8, !tbaa !85
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  %i.bw = phi i64 [ %i.bs, %bb.h ], [ %.pre.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.bw, ptr %i.by, align 8, !tbaa !85, !alias.scope !8483
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !88
  store i64 0, ptr %i.bx, align 8, !tbaa !85
  store i8 0, ptr %i.bp, align 8, !tbaa !86
  call void @llvm.experimental.noalias.scope.decl(metadata !8484)
  %i.bz = add i64 %i.bw, -4611686018427387879
  %i.ca = icmp ult i64 %i.bz, 25
  br i1 %i.ca, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71

bb.i:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #26, !noalias !8484
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit70
  %i.cb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.12, i64 noundef 25) #22, !noalias !8484 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr %i.cc, ptr %13, align 8, !tbaa !82, !alias.scope !8484
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !88 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 5 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !85 ; 3 uses
  %i.ci = icmp ult i64 %i.ch, 16
  call void @llvm.assume(i1 %i.ci)
  %i.cj = add nuw nsw i64 %i.ch, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cc, ptr noundef nonnull align 8 dereferenceable(1) %i.ce, i64 %i.cj, i1 false)
  br label %_ZN4llvm5ErrorD2Ev.exit137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i71
  store ptr %i.cd, ptr %13, align 8, !tbaa !88, !alias.scope !8484
  %i.ck = load i64, ptr %i.ce, align 8, !tbaa !86
  store i64 %i.ck, ptr %i.cc, align 8, !tbaa !86, !alias.scope !8484
  %.phi.trans.insert.i73 = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.pre.i74 = load i64, ptr %.phi.trans.insert.i73, align 8, !tbaa !85
  br label %_ZN4llvm5ErrorD2Ev.exit137

_ZN4llvm5ErrorD2Ev.exit137:                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %bb.j
  %i.cl = phi i64 [ %i.ch, %bb.j ], [ %.pre.i74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.cl, ptr %i.cn, align 8, !tbaa !85, !alias.scope !8484
  store ptr %i.ce, ptr %i.cb, align 8, !tbaa !88
  store i64 0, ptr %i.cm, align 8, !tbaa !85
  store i8 0, ptr %i.ce, align 8, !tbaa !86
  %.sroa.04.0.copyload.i.i82.cast = inttoptr i64 %i.bj to ptr
  store ptr %13, ptr %12, align 8, !alias.scope !8485
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %.sroa.04.0.copyload.i.i82.cast, ptr %i.co, align 8, !alias.scope !8485
  %i.cp = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 4, ptr %i.cp, align 8, !tbaa !162, !alias.scope !8485
  %i.cq = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 11, ptr %i.cq, align 1, !tbaa !163, !alias.scope !8485
  store ptr %12, ptr %11, align 8, !alias.scope !8486
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr @.str.13, ptr %i.cr, align 8, !alias.scope !8486
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 2, ptr %i.cs, align 8, !tbaa !162, !alias.scope !8486
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 3, ptr %i.ct, align 1, !tbaa !163, !alias.scope !8486
  %.0.copyload.i.i.i106 = load i64, ptr %i.a, align 1
  %i.cu = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i106)
  %i.cv = inttoptr i64 %i.cu to ptr
  store ptr %11, ptr %10, align 8, !alias.scope !8487
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.cv, ptr %i.cw, align 8, !alias.scope !8487
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 2, ptr %i.cx, align 8, !tbaa !162, !alias.scope !8487
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 11, ptr %i.cy, align 1, !tbaa !163, !alias.scope !8487
  store ptr %10, ptr %9, align 8, !alias.scope !8488
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @.str.14, ptr %i.cz, align 8, !alias.scope !8488
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 2, ptr %i.da, align 8, !tbaa !162, !alias.scope !8488
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 3, ptr %i.db, align 1, !tbaa !163, !alias.scope !8488
  %i.dc = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24, !noalias !8489 ; 2 uses
  %i.dd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #22, !noalias !8489
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.dc, ptr noundef nonnull align 8 dereferenceable(34) %9, i32 3, ptr nonnull %i.dd) #22, !noalias !8489
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.df = load i8, ptr %i.de, align 8
  %i.dg = or i8 %i.df, 1
  store i8 %i.dg, ptr %i.de, align 8
  store ptr %i.dc, ptr %0, align 8, !tbaa !147, !alias.scope !8490
  %i.dh = load ptr, ptr %13, align 8, !tbaa !88   ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.cc
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZN4llvm5ErrorD2Ev.exit137
  %i.dj = load i64, ptr %i.cc, align 8, !tbaa !86
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %_ZN4llvm5ErrorD2Ev.exit137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  %i.dl = load ptr, ptr %14, align 8, !tbaa !88   ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.bn
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %i.dn = load i64, ptr %i.bn, align 8, !tbaa !86
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  %i.dp = load ptr, ptr %15, align 8, !tbaa !88   ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !86
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.v

bb.k:                                             ; preds = %bb.f
  %i.du = xor i64 %i.bh, -1
  %i.dv = icmp ugt i64 %i.bj, %i.du
  br i1 %i.dv, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @_ZN4llvm6object19getSecIndexForErrorINS0_7ELFTypeILNS_10endiannessE0ELb1EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7ELFFileIT_EERKNSC_4ShdrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(64) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !8491)
  %i.dw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %22, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.9, i64 noundef 8) #22, !noalias !8491 ; 6 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  store ptr %i.dx, ptr %21, align 8, !tbaa !82, !alias.scope !8491
  %i.dy = load ptr, ptr %i.dw, align 8, !tbaa !88 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 5 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

bb.m:                                             ; preds = %bb.l
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !85 ; 3 uses
  %i.ed = icmp ult i64 %i.ec, 16
  call void @llvm.assume(i1 %i.ed)
end_hunk_8
begin_hunk_9_@_ZNSt17_Function_handlerIFN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEEPKNS0_6object13Elf_Shdr_ImplINS6_7ELFTypeILNS0_10endiannessE0ELb1EEEEEEZZN12_GLOBAL__N_19ELFDumperISA_E12dumpSectionsEvENKUljE_clEjEUlSD_E15_E9_M_invokeERKSt9_Any_dataOSD_:bb.a
  %i.bh = call i64 @llvm.umin.i64(i64 %i.bf, i64 576460752303423487)
  %i.bi = select i1 %i.bg, i64 576460752303423487, i64 %i.bh ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.bi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.bj = shl nuw nsw i64 %i.bi, 4
  %i.bk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #24, !noalias !9180 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bc ; 2 uses
  store ptr %.035.i.i.i.i, ptr %i.bl, align 8, !tbaa !174, !noalias !9180
  %.sroa.2.0..sroa_idx.i16.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i16.i.i.i.i.i.i, align 8, !tbaa !143, !noalias !9180
  %.not10.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.av, %i.aw
  br i1 %.not10.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNKSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.bk, %_ZNKSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.av, %_ZNKSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !339, !alias.scope !9182, !noalias !9180
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.aw
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !21

_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNKSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bk, %_ZNKSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i24.i.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i24.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE17_M_realloc_insertIJRNS0_9StringRefEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23.i.i.i.i.i.i
  %i.bp = load ptr, ptr %i.au, align 8, !tbaa !586, !noalias !9180
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.br) #23, !noalias !9180
  br label %_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE17_M_realloc_insertIJRNS0_9StringRefEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE17_M_realloc_insertIJRNS0_9StringRefEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.n, %_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23.i.i.i.i.i.i
  store ptr %i.bk, ptr %i.aj, align 8, !tbaa !585, !noalias !9180
  store ptr %i.bo, ptr %i.at, align 8, !tbaa !587, !noalias !9180
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.bi ; 2 uses
  store ptr %i.bs, ptr %i.au, align 8, !tbaa !586, !noalias !9180
  br label %_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE12emplace_backIJRNS0_9StringRefEEEERS2_DpOT_.exit.i.i.i.i

_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE12emplace_backIJRNS0_9StringRefEEEERS2_DpOT_.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE17_M_realloc_insertIJRNS0_9StringRefEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i, %bb.k
  %i.bt = phi ptr [ %i.av, %bb.k ], [ %i.bk, %_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE17_M_realloc_insertIJRNS0_9StringRefEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i ]
  %i.bu = phi ptr [ %i.aw, %bb.k ], [ %i.bs, %_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE17_M_realloc_insertIJRNS0_9StringRefEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i ]
  %i.bv = phi ptr [ %i.az, %bb.k ], [ %i.bo, %_ZNSt6vectorIN4llvm7ELFYAML14YAMLFlowStringESaIS2_EE17_M_realloc_insertIJRNS0_9StringRefEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i ]
  %i.bw = getelementptr i8, ptr %.035.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i
  %i.bx = getelementptr i8, ptr %i.bw, i64 1      ; 2 uses
  %i.by = icmp ult ptr %i.bx, %i.as
  br i1 %i.by, label %bb.i, label %._crit_edge.i.i.i.i, !llvm.loop !9173

bb.o:                                             ; preds = %._crit_edge.i.i.i.i, %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIRNS0_8ArrayRefIhEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS2_ESA_IS2_NSt5decayISD_E4typeEEEEESt16is_constructibleIS2_JSD_EESt13is_assignableIRS2_SD_EEERS3_E4typeEOSD_.exit.i.i.i.i, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i
  %.sroa.10.0.i = phi i8 [ -1, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i ], [ 0, %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIRNS0_8ArrayRefIhEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS2_ESA_IS2_NSt5decayISD_E4typeEEEEESt16is_constructibleIS2_JSD_EESt13is_assignableIRS2_SD_EEERS3_E4typeEOSD_.exit.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.z, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i ], [ %i.a, %._crit_edge.i.i.i.i ], [ %i.a, %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIRNS0_8ArrayRefIhEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS2_ESA_IS2_NSt5decayISD_E4typeEEEEESt16is_constructibleIS2_JSD_EESt13is_assignableIRS2_SD_EEERS3_E4typeEOSD_.exit.i.i.i.i ] ; 2 uses
  %i.bz = phi i8 [ %i.w, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.w, %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIRNS0_8ArrayRefIhEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS2_ESA_IS2_NSt5decayISD_E4typeEEEEESt16is_constructibleIS2_JSD_EESt13is_assignableIRS2_SD_EEERS3_E4typeEOSD_.exit.i.i.i.i ]
  %.sroa.024.1.i.i.i.i = phi ptr [ %i.a, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i ], [ null, %._crit_edge.i.i.i.i ], [ null, %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIRNS0_8ArrayRefIhEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS2_ESA_IS2_NSt5decayISD_E4typeEEEEESt16is_constructibleIS2_JSD_EESt13is_assignableIRS2_SD_EEERS3_E4typeEOSD_.exit.i.i.i.i ] ; 2 uses
  %i.ca = trunc i8 %i.bz to i1
  br i1 %i.ca, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cb = load ptr, ptr %4, align 8, !tbaa !147, !noalias !9180 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i.i, label %bb.q, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.p
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !167, !noalias !9180
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !9180
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %i.cb) #22, !noalias !9180, !inline_history !9174
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i, %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !9180
  %.not.i12.i.i.i.i = icmp eq ptr %.sroa.024.1.i.i.i.i, null
  br i1 %.not.i12.i.i.i.i, label %_ZSt10__invoke_rIN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEERZZN12_GLOBAL__N_19ELFDumperINS0_6object7ELFTypeILNS0_10endiannessE0ELb1EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS8_13Elf_Shdr_ImplISB_EEE15_JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit, label %_ZNKSt14default_deleteIN4llvm7ELFYAML25DependentLibrariesSectionEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm7ELFYAML25DependentLibrariesSectionEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.q, %bb.a
  %.sroa.10.1.i = phi i8 [ %.sroa.10.0.i, %bb.q ], [ -1, %bb.a ]
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.i, %bb.q ], [ %i.s, %bb.a ]
  %.sroa.024.233.i.i.i.i = phi ptr [ %.sroa.024.1.i.i.i.i, %bb.q ], [ %i.a, %bb.a ] ; 2 uses
  %i.cf = load ptr, ptr %.sroa.024.233.i.i.i.i, align 8, !tbaa !167, !noalias !9180
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !9180
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.024.233.i.i.i.i) #22, !noalias !9180, !inline_history !9175
  br label %_ZSt10__invoke_rIN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEERZZN12_GLOBAL__N_19ELFDumperINS0_6object7ELFTypeILNS0_10endiannessE0ELb1EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS8_13Elf_Shdr_ImplISB_EEE15_JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit

_ZSt10__invoke_rIN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEERZZN12_GLOBAL__N_19ELFDumperINS0_6object7ELFTypeILNS0_10endiannessE0ELb1EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS8_13Elf_Shdr_ImplISB_EEE15_JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit: ; preds = %bb.q, %_ZNKSt14default_deleteIN4llvm7ELFYAML25DependentLibrariesSectionEEclEPS2_.exit.i.i.i.i.i
  %.sroa.10.2.i = phi i8 [ %.sroa.10.0.i, %bb.q ], [ %.sroa.10.1.i, %_ZNKSt14default_deleteIN4llvm7ELFYAML25DependentLibrariesSectionEEclEPS2_.exit.i.i.i.i.i ]
  %.sroa.0.2.i = phi ptr [ %.sroa.0.0.i, %bb.q ], [ %.sroa.0.1.i, %_ZNKSt14default_deleteIN4llvm7ELFYAML25DependentLibrariesSectionEEclEPS2_.exit.i.i.i.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cj = and i8 %.sroa.10.2.i, 1
  %i.ck = load i8, ptr %i.ci, align 8, !alias.scope !9178
  %i.cl = and i8 %i.ck, -2
  %i.cm = or disjoint i8 %i.cl, %i.cj
  store i8 %i.cm, ptr %i.ci, align 8, !alias.scope !9178
  store ptr %.sroa.0.2.i, ptr %0, align 8, !tbaa !87, !alias.scope !9178
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEEPKNS0_6object13Elf_Shdr_ImplINS6_7ELFTypeILNS0_10endiannessE0ELb1EEEEEEZZN12_GLOBAL__N_19ELFDumperISA_E12dumpSectionsEvENKUljE_clEjEUlSD_E15_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #16 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE0ELb1EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE15_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !87
  br label %_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE0ELb1EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE15_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !458
  br label %_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE0ELb1EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE15_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8
  store i64 %.val, ptr %0, align 8, !tbaa !395
  br label %_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE0ELb1EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE15_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE0ELb1EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE15_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt17_Function_handlerIFN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEEPKNS0_6object13Elf_Shdr_ImplINS6_7ELFTypeILNS0_10endiannessE0ELb1EEEEEEZZN12_GLOBAL__N_19ELFDumperISA_E12dumpSectionsEvENKUljE_clEjEUlSD_E16_E9_M_invokeERKSt9_Any_dataOSD_(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.521") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %4 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %5 = alloca %class.anon.475, align 1            ; 3 uses
  %6 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %7 = alloca %"class.llvm::Expected.576", align 8 ; 9 uses
  %8 = alloca %"class.llvm::DataExtractor", align 8 ; 6 uses
  %9 = alloca %"class.llvm::DataExtractor::Cursor", align 8 ; 5 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !9202  ; 2 uses
  %.val2 = load ptr, ptr %2, align 8, !tbaa !392  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9203)
  %i.a = tail call noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #24, !noalias !9204 ; 38 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 19, ptr %i.b, align 8, !tbaa !181, !noalias !9204
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !noalias !9204
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !182, !noalias !9204
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %i.e, align 8, !tbaa !183, !noalias !9204
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 0, ptr %i.f, align 8, !tbaa !185, !noalias !9204
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i8 0, ptr %i.g, align 8, !tbaa !182, !noalias !9204
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i8 0, ptr %i.h, align 8, !tbaa !187, !noalias !9204
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i8 0, ptr %i.i, align 8, !tbaa !182, !noalias !9204
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 5 uses
  store i8 0, ptr %i.j, align 8, !tbaa !189, !noalias !9204
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i8 0, ptr %i.k, align 8, !tbaa !182, !noalias !9204
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store i8 0, ptr %i.l, align 8, !tbaa !182, !noalias !9204
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i8 0, ptr %i.m, align 8, !tbaa !182, !noalias !9204
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store i8 0, ptr %i.n, align 8, !tbaa !182, !noalias !9204
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store i8 0, ptr %i.o, align 8, !tbaa !182, !noalias !9204
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store i8 0, ptr %i.p, align 8, !tbaa !182, !noalias !9204
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 276
  store i8 0, ptr %i.q, align 4, !tbaa !191, !noalias !9204
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm7ELFYAML23CallGraphProfileSectionE, i64 16), ptr %i.a, align 8, !tbaa !167, !noalias !9204
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 304 ; 3 uses
  store i8 0, ptr %i.r, align 8, !tbaa !597, !noalias !9204
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22, !noalias !9205
  call fastcc void @_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE17dumpCommonSectionEPKNS2_13Elf_Shdr_ImplIS5_EERNS1_7ELFYAML7SectionE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(256) %.val, ptr noundef %.val2, ptr noundef nonnull align 8 dereferenceable(280) %i.a), !noalias !9205
  %i.s = load ptr, ptr %6, align 8, !tbaa !165, !noalias !9205 ; 2 uses
  %.not88.i.i.i.i = icmp eq ptr %i.s, null
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !9205
  br i1 %.not88.i.i.i.i, label %_ZN4llvm5ErrorD2Ev.exit24.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML23CallGraphProfileSectionEEclEPS2_.exit.i.i.i.i.i

_ZN4llvm5ErrorD2Ev.exit24.i.i.i.i:                ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !9205
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 216 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !391, !noalias !9205, !nonnull !136, !align !137
  call void @_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE0ELb1EEEE18getSectionContentsERKNS0_13Elf_Shdr_ImplIS4_EE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.576") align 8 %7, ptr noundef nonnull align 8 dereferenceable(96) %i.u, ptr noundef nonnull align 1 dereferenceable(64) %.val2) #22, !noalias !9205
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8, !noalias !9205
  %i.x = trunc i8 %i.w to i1
  br i1 %i.x, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i, label %bb.b

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit24.i.i.i.i
  %i.y = load i64, ptr %7, align 8, !tbaa !147, !noalias !9206
  %i.z = inttoptr i64 %i.y to ptr
  store ptr null, ptr %7, align 8, !tbaa !147, !noalias !9206
  br label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i

bb.b:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit24.i.i.i.i
  %.sroa.064.0.copyload.i.i.i.i = load ptr, ptr %7, align 8, !tbaa !174, !noalias !9205 ; 3 uses
  %.sroa.665.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.665.0.copyload.i.i.i.i = load i64, ptr %.sroa.665.0..sroa_idx.i.i.i.i, align 8, !tbaa !143, !noalias !9205 ; 7 uses
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !391, !noalias !9205, !nonnull !136, !align !137
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !138, !noalias !9205
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 18
  %.0.copyload.i.i.i.i.i.i.i = load i16, ptr %i.ac, align 1, !noalias !9205
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %.sroa.011.0.copyload.i.i.i.i = load i32, ptr %i.ad, align 4, !tbaa !142, !noalias !9205 ; 2 uses
  %.sroa.09.0.copyload.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !174, !noalias !9205 ; 2 uses
  %.sroa.210.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.210.0.copyload.i.i.i.i = load i64, ptr %.sroa.210.0..sroa_idx.i.i.i.i, align 8, !tbaa !143, !noalias !9205
  %i.ae = icmp eq i16 %.0.copyload.i.i.i.i.i.i.i, 2048
  %i.af = icmp eq i32 %.sroa.011.0.copyload.i.i.i.i, 1879048234
  %or.cond.i.i.i.i.i = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond.i.i.i.i.i, label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE0ELb1EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i, label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %bb.b
  switch i32 %.sroa.011.0.copyload.i.i.i.i, label %bb.g [
    i32 2, label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE0ELb1EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i
    i32 11, label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE0ELb1EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i
    i32 17, label %bb.c
    i32 9, label %bb.d
    i32 4, label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE0ELb1EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i
    i32 19, label %bb.e
    i32 6, label %bb.d
    i32 5, label %bb.c
    i32 18, label %bb.c
    i32 1879048191, label %bb.f
    i32 1879002121, label %bb.e
  ]

bb.c:                                             ; preds = %.critedge.i.i.i.i.i, %.critedge.i.i.i.i.i, %.critedge.i.i.i.i.i
  br label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE0ELb1EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i

bb.d:                                             ; preds = %.critedge.i.i.i.i.i, %.critedge.i.i.i.i.i
  br label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE0ELb1EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i

bb.e:                                             ; preds = %.critedge.i.i.i.i.i, %.critedge.i.i.i.i.i
  br label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE0ELb1EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i

bb.f:                                             ; preds = %.critedge.i.i.i.i.i
  br label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE0ELb1EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i

bb.g:                                             ; preds = %.critedge.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.210.0.copyload.i.i.i.i, 10
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i, label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE0ELb1EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i:      ; preds = %bb.g
  %i.ag = load i64, ptr %.sroa.09.0.copyload.i.i.i.i, align 1
  %i.ah = xor i64 %i.ag, 8313477191008871470
  %i.ai = getelementptr i8, ptr %.sroa.09.0.copyload.i.i.i.i, i64 8
  %i.aj = load i16, ptr %i.ai, align 1
  %i.ak = zext i16 %i.aj to i64
  %i.al = xor i64 %i.ak, 29300
  %i.am = or i64 %i.ah, %i.al
  %i.an = icmp ne i64 %i.am, 0
  %i.ao = zext i1 %i.an to i32
  %bcmp.i.fr.i.i.i.i.i = freeze i32 %i.ao
  %i.ap = icmp eq i32 %bcmp.i.fr.i.i.i.i.i, 0
  %i.aq = zext i1 %i.ap to i64
  br label %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE0ELb1EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i

_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE0ELb1EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %.critedge.i.i.i.i.i, %.critedge.i.i.i.i.i, %.critedge.i.i.i.i.i, %bb.b
  %.0.i.i.i.i.i = phi i64 [ 2, %bb.f ], [ 24, %.critedge.i.i.i.i.i ], [ 24, %.critedge.i.i.i.i.i ], [ 24, %bb.b ], [ 4, %bb.c ], [ 16, %bb.d ], [ 24, %.critedge.i.i.i.i.i ], [ 8, %bb.e ], [ 0, %bb.g ], [ %i.aq, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i.i ] ; 3 uses
  %i.ar = icmp eq i64 %.sroa.665.0.copyload.i.i.i.i, 0
  br i1 %i.ar, label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE0ELb1EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i
  %i.as = urem i64 %.sroa.665.0.copyload.i.i.i.i, %.0.i.i.i.i.i
  %i.at = udiv i64 %.sroa.665.0.copyload.i.i.i.i, %.0.i.i.i.i.i ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.av = load i8, ptr %i.j, align 8, !tbaa !189, !range !152, !noalias !9205, !noundef !136
  %i.aw = trunc nuw i8 %i.av to i1
  store ptr %.sroa.064.0.copyload.i.i.i.i, ptr %i.au, align 8, !tbaa !174, !noalias !9205
  %.sroa.557.0..sroa_idx58.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 %.sroa.665.0.copyload.i.i.i.i, ptr %.sroa.557.0..sroa_idx58.i.i.i.i, align 8, !tbaa !143, !noalias !9205
  %.sroa.660.0..sroa_idx61.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 0, ptr %.sroa.660.0..sroa_idx61.i.i.i.i, align 8, !tbaa !199, !noalias !9205
  br i1 %i.aw, label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.j, align 8, !tbaa !189, !noalias !9205
  br label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i

bb.k:                                             ; preds = %bb.h
  %i.ax = icmp ugt i64 %i.at, 1152921504606846975
  br i1 %i.ax, label %bb.l, label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #26, !noalias !9205
  unreachable

_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i.i: ; preds = %bb.k
  %.not.i.i.i.i.i.i.i.i = icmp ugt i64 %.0.i.i.i.i.i, %.sroa.665.0.copyload.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EEC2EmRKS3_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i.i
  %i.ay = shl nuw nsw i64 %i.at, 3
  %i.az = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #24, !noalias !9205 ; 5 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.at ; 2 uses
  store i64 0, ptr %i.az, align 8, !noalias !9205
  %i.bb = getelementptr i8, ptr %i.az, i64 8      ; 3 uses
  %i.bc = add nsw i64 %i.at, -1                   ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EEC2EmRKS3_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %bb.m
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bc, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.bb, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !143, !noalias !9205
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EEC2EmRKS3_.exit.i.i.i.i

_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EEC2EmRKS3_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m, %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i.i
  %.sroa.046.1.i.i.i.i = phi ptr [ %i.az, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.az, %bb.m ], [ null, %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i.i ] ; 5 uses
  %.sroa.15.1.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ba, %bb.m ], [ null, %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i.i ] ; 3 uses
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bb, %bb.m ], [ null, %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22, !noalias !9205
  %i.bf = load ptr, ptr %i.t, align 8, !tbaa !391, !noalias !9205, !nonnull !136, !align !137
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !138, !noalias !9205
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 5
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !86, !noalias !9205
  %i.bj = icmp eq i8 %i.bi, 1
  %i.bk = zext i1 %i.bj to i8
  store ptr %.sroa.064.0.copyload.i.i.i.i, ptr %8, align 8, !tbaa !138, !noalias !9205
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.sroa.665.0.copyload.i.i.i.i, ptr %i.bl, align 8, !tbaa !194, !noalias !9205
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 %i.bk, ptr %i.bm, align 8, !tbaa !196, !noalias !9205
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22, !noalias !9205
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %.not8990.i.i.i.i = icmp eq ptr %.sroa.046.1.i.i.i.i, %.0.i.i.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false), !noalias !9205
  br i1 %.not8990.i.i.i.i, label %.critedge22.i.i.i.i, label %.critedge20.i.i.i.i

bb.n:                                             ; preds = %.critedge20.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.041.091.i.i.i.i, i64 8 ; 2 uses
  %.not89.i.i.i.i = icmp eq ptr %i.bo, %.0.i.i.i.i.i.i.i.i.i
  br i1 %.not89.i.i.i.i, label %.critedge22.i.i.i.i, label %.critedge20.i.i.i.i

.critedge20.i.i.i.i:                              ; preds = %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EEC2EmRKS3_.exit.i.i.i.i, %bb.n
  %.sroa.041.091.i.i.i.i = phi ptr [ %i.bo, %bb.n ], [ %.sroa.046.1.i.i.i.i, %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EEC2EmRKS3_.exit.i.i.i.i ] ; 2 uses
  %i.bp = call noundef i64 @_ZNK4llvm13DataExtractor6getU64EPmPNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(17) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %i.bn) #22, !noalias !9205
  store i64 %i.bp, ptr %.sroa.041.091.i.i.i.i, align 8, !tbaa !599, !noalias !9205
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !165, !noalias !9205 ; 2 uses
  %.not.i.i26.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i26.i.i.i.i, label %bb.n, label %bb.o

bb.o:                                             ; preds = %.critedge20.i.i.i.i
  store ptr null, ptr %i.bn, align 8, !tbaa !165, !noalias !9207
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !9205
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !9205
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !9205
  store ptr %i.bq, ptr %4, align 8, !tbaa !165, !noalias !9205
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %3, ptr nofree noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5), !noalias !9205
  %i.br = load ptr, ptr %4, align 8, !tbaa !165, !noalias !9205 ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !167, !noalias !9205
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !9205
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.br) #22, !noalias !9205, !inline_history !9197
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !9205
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !9205
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !9205
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.bx = load i8, ptr %i.j, align 8, !tbaa !189, !range !152, !noalias !9205, !noundef !136
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit29.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 1, ptr %i.j, align 8, !tbaa !189, !noalias !9205
  br label %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit29.i.i.i.i

_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit29.i.i.i.i: ; preds = %bb.r, %bb.q
  store ptr %.sroa.064.0.copyload.i.i.i.i, ptr %i.bw, align 8, !tbaa !174, !noalias !9205
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 %.sroa.665.0.copyload.i.i.i.i, ptr %i.bz, align 8, !tbaa !143, !noalias !9205
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 0, ptr %i.ca, align 8, !tbaa !199, !noalias !9205
  %i.cb = ptrtoint ptr %.sroa.15.1.i.i.i.i to i64
  br label %_ZNSt8optionalISt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS3_EEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i.i

.critedge22.i.i.i.i:                              ; preds = %bb.n, %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EEC2EmRKS3_.exit.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 280 ; 3 uses
  %i.cd = load i8, ptr %i.r, align 8, !tbaa !597, !range !152, !noalias !9205, !noundef !136
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 288 ; 2 uses
  br i1 %i.ce, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.critedge22.i.i.i.i
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !602, !noalias !9205 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 296 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !603, !noalias !9205
  store ptr %.sroa.046.1.i.i.i.i, ptr %i.cc, align 8, !tbaa !602, !noalias !9205
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.cf, align 8, !tbaa !604, !noalias !9205
  store ptr %.sroa.15.1.i.i.i.i, ptr %i.ch, align 8, !tbaa !603, !noalias !9205
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8optionalISt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS3_EEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23, !noalias !9205
  br label %_ZNSt8optionalISt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS3_EEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i.i

bb.u:                                             ; preds = %.critedge22.i.i.i.i
  store ptr %.sroa.046.1.i.i.i.i, ptr %i.cc, align 8, !tbaa !602, !noalias !9205
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.cf, align 8, !tbaa !604, !noalias !9205
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store ptr %.sroa.15.1.i.i.i.i, ptr %i.cm, align 8, !tbaa !603, !noalias !9205
  store i8 1, ptr %i.r, align 8, !tbaa !597, !noalias !9205
  br label %_ZNSt8optionalISt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS3_EEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i.i

_ZNSt8optionalISt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS3_EEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i.i: ; preds = %bb.u, %bb.t, %bb.s, %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit29.i.i.i.i
  %.sroa.046.0.i.i.i.i = phi ptr [ %.sroa.046.1.i.i.i.i, %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit29.i.i.i.i ], [ null, %bb.u ], [ null, %bb.t ], [ null, %bb.s ] ; 3 uses
  %.sroa.15.0.i.i.i.i = phi i64 [ %i.cb, %_ZNSt8optionalIN4llvm4yaml9BinaryRefEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit29.i.i.i.i ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ]
  %i.cn = load ptr, ptr %i.bn, align 8, !tbaa !165, !noalias !9205 ; 3 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %_ZN4llvm13DataExtractor6CursorD2Ev.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt8optionalISt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS3_EEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i.i
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !167, !noalias !9205
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !9205
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %i.cn) #22, !noalias !9205, !inline_history !9198
  br label %_ZN4llvm13DataExtractor6CursorD2Ev.exit.i.i.i.i

_ZN4llvm13DataExtractor6CursorD2Ev.exit.i.i.i.i:  ; preds = %bb.v, %_ZNSt8optionalISt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS3_EEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22, !noalias !9205
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !9205
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.046.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm13DataExtractor6CursorD2Ev.exit.i.i.i.i
  %i.cs = ptrtoint ptr %.sroa.046.0.i.i.i.i to i64
  %i.ct = sub i64 %.sroa.15.0.i.i.i.i, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.046.0.i.i.i.i, i64 noundef %i.ct) #23, !noalias !9205
  br label %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i

_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i: ; preds = %bb.w, %_ZN4llvm13DataExtractor6CursorD2Ev.exit.i.i.i.i, %bb.j, %bb.i, %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE0ELb1EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i
  %.sroa.10.1.i = phi i8 [ -1, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i ], [ 0, %bb.w ], [ 0, %_ZN4llvm13DataExtractor6CursorD2Ev.exit.i.i.i.i ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE0ELb1EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.z, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i ], [ %i.a, %bb.w ], [ %i.a, %_ZN4llvm13DataExtractor6CursorD2Ev.exit.i.i.i.i ], [ %i.a, %bb.j ], [ %i.a, %bb.i ], [ %i.a, %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE0ELb1EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i ] ; 2 uses
  %.sroa.074.3.i.i.i.i = phi ptr [ %i.a, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i ], [ null, %bb.w ], [ null, %_ZN4llvm13DataExtractor6CursorD2Ev.exit.i.i.i.i ], [ null, %bb.j ], [ null, %bb.i ], [ null, %_ZN4llvm7ELFYAML19getDefaultShEntSizeINS_6object7ELFTypeILNS_10endiannessE0ELb1EEEEEjjNS0_7ELF_SHTENS_9StringRefE.exit.i.i.i.i ] ; 2 uses
  %i.cu = load i8, ptr %i.v, align 8, !noalias !9205
  %i.cv = trunc i8 %i.cu to i1
  br i1 %i.cv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i
  %i.cw = load ptr, ptr %7, align 8, !tbaa !147, !noalias !9205 ; 3 uses
  %.not.i.i32.i.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i32.i.i.i.i, label %bb.y, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.x
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !167, !noalias !9205
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !noalias !9205
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.cw) #22, !noalias !9205, !inline_history !9199
  br label %bb.y

bb.y:                                             ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i, %bb.x, %_ZNSt6vectorIN4llvm7ELFYAML20CallGraphEntryWeightESaIS2_EED2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !9205
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.074.3.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZSt10__invoke_rIN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEERZZN12_GLOBAL__N_19ELFDumperINS0_6object7ELFTypeILNS0_10endiannessE0ELb1EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS8_13Elf_Shdr_ImplISB_EEE16_JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit, label %_ZNKSt14default_deleteIN4llvm7ELFYAML23CallGraphProfileSectionEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm7ELFYAML23CallGraphProfileSectionEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.y, %bb.a
  %.sroa.10.2.i = phi i8 [ %.sroa.10.1.i, %bb.y ], [ -1, %bb.a ]
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.i, %bb.y ], [ %i.s, %bb.a ]
  %.sroa.074.487.i.i.i.i = phi ptr [ %.sroa.074.3.i.i.i.i, %bb.y ], [ %i.a, %bb.a ] ; 2 uses
  %i.da = load ptr, ptr %.sroa.074.487.i.i.i.i, align 8, !tbaa !167, !noalias !9205
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !9205
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.074.487.i.i.i.i) #22, !noalias !9205, !inline_history !9200
  br label %_ZSt10__invoke_rIN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEERZZN12_GLOBAL__N_19ELFDumperINS0_6object7ELFTypeILNS0_10endiannessE0ELb1EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS8_13Elf_Shdr_ImplISB_EEE16_JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit

_ZSt10__invoke_rIN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEERZZN12_GLOBAL__N_19ELFDumperINS0_6object7ELFTypeILNS0_10endiannessE0ELb1EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS8_13Elf_Shdr_ImplISB_EEE16_JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit: ; preds = %bb.y, %_ZNKSt14default_deleteIN4llvm7ELFYAML23CallGraphProfileSectionEEclEPS2_.exit.i.i.i.i.i
  %.sroa.10.3.i = phi i8 [ %.sroa.10.1.i, %bb.y ], [ %.sroa.10.2.i, %_ZNKSt14default_deleteIN4llvm7ELFYAML23CallGraphProfileSectionEEclEPS2_.exit.i.i.i.i.i ]
  %.sroa.0.2.i = phi ptr [ %.sroa.0.0.i, %bb.y ], [ %.sroa.0.1.i, %_ZNKSt14default_deleteIN4llvm7ELFYAML23CallGraphProfileSectionEEclEPS2_.exit.i.i.i.i.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.de = and i8 %.sroa.10.3.i, 1
  %i.df = load i8, ptr %i.dd, align 8, !alias.scope !9203
  %i.dg = and i8 %i.df, -2
  %i.dh = or disjoint i8 %i.dg, %i.de
  store i8 %i.dh, ptr %i.dd, align 8, !alias.scope !9203
  store ptr %.sroa.0.2.i, ptr %0, align 8, !tbaa !87, !alias.scope !9203
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEEPKNS0_6object13Elf_Shdr_ImplINS6_7ELFTypeILNS0_10endiannessE0ELb1EEEEEEZZN12_GLOBAL__N_19ELFDumperISA_E12dumpSectionsEvENKUljE_clEjEUlSD_E16_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #16 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE0ELb1EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE16_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !87
  br label %_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE0ELb1EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE16_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !458
  br label %_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE0ELb1EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE16_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8
  store i64 %.val, ptr %0, align 8, !tbaa !395
  br label %_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE0ELb1EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE16_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS3_10endiannessE0ELb1EEEE12dumpSectionsEvENKUljE_clEjEUlPKNS4_13Elf_Shdr_ImplIS7_EEE16_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt17_Function_handlerIFN4llvm8ExpectedIPNS0_7ELFYAML5ChunkEEEPKNS0_6object13Elf_Shdr_ImplINS6_7ELFTypeILNS0_10endiannessE0ELb1EEEEEEZZN12_GLOBAL__N_19ELFDumperISA_E12dumpSectionsEvENKUljE_clEjEUlSD_E17_E9_M_invokeERKSt9_Any_dataOSD_(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.521") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %4 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %5 = alloca %class.anon.475, align 1            ; 3 uses
  %i.a = alloca i16, align 2                      ; 6 uses
  %6 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %7 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %8 = alloca %"class.llvm::Expected.576", align 8 ; 9 uses
  %9 = alloca %"class.llvm::DataExtractor", align 8 ; 27 uses
  %10 = alloca %"class.std::vector.1120", align 16 ; 12 uses
  %11 = alloca %"class.std::vector.1135", align 8 ; 9 uses
  %12 = alloca %"class.llvm::DataExtractor::Cursor", align 8 ; 27 uses
  %13 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %17 = alloca %"class.std::vector.1147", align 16 ; 10 uses
  %18 = alloca %"class.std::vector.1152", align 8 ; 11 uses
  %19 = alloca %"struct.llvm::BBAddrMapYAML::BBAddrMapEntry::BBRangeEntry", align 8 ; 10 uses
  %20 = alloca %"struct.llvm::BBAddrMapYAML::BBAddrMapEntry", align 8 ; 11 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !9245  ; 2 uses
  %.val2 = load ptr, ptr %2, align 8, !tbaa !392  ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9246)
  %i.b = tail call noalias noundef nonnull dereferenceable(344) ptr @_Znwm(i64 noundef 344) #24, !noalias !9247 ; 37 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 20, ptr %i.c, align 8, !tbaa !181, !noalias !9247
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !9247
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i8 0, ptr %i.e, align 8, !tbaa !182, !noalias !9247
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i8 0, ptr %i.f, align 8, !tbaa !183, !noalias !9247
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 0, ptr %i.g, align 8, !tbaa !185, !noalias !9247
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i8 0, ptr %i.h, align 8, !tbaa !182, !noalias !9247
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i8 0, ptr %i.i, align 8, !tbaa !187, !noalias !9247
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i8 0, ptr %i.j, align 8, !tbaa !182, !noalias !9247
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 3 uses
  store i8 0, ptr %i.k, align 8, !tbaa !189, !noalias !9247
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store i8 0, ptr %i.l, align 8, !tbaa !182, !noalias !9247
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store i8 0, ptr %i.m, align 8, !tbaa !182, !noalias !9247
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  store i8 0, ptr %i.n, align 8, !tbaa !182, !noalias !9247
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store i8 0, ptr %i.o, align 8, !tbaa !182, !noalias !9247
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store i8 0, ptr %i.p, align 8, !tbaa !182, !noalias !9247
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  store i8 0, ptr %i.q, align 8, !tbaa !182, !noalias !9247
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 276
  store i8 0, ptr %i.r, align 4, !tbaa !191, !noalias !9247
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm7ELFYAML16BBAddrMapSectionE, i64 16), ptr %i.b, align 8, !tbaa !167, !noalias !9247
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 304 ; 3 uses
  store i8 0, ptr %i.s, align 8, !tbaa !606, !noalias !9247
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  store i8 0, ptr %i.t, align 8, !tbaa !608, !noalias !9247
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !9248
  call fastcc void @_ZN12_GLOBAL__N_19ELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE17dumpCommonSectionEPKNS2_13Elf_Shdr_ImplIS5_EERNS1_7ELFYAML7SectionE(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(256) %.val, ptr noundef %.val2, ptr noundef nonnull align 8 dereferenceable(280) %i.b), !noalias !9248
  %i.u = load ptr, ptr %7, align 8, !tbaa !165, !noalias !9248 ; 2 uses
  %.not345.i.i.i.i = icmp eq ptr %i.u, null
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !9248
  br i1 %.not345.i.i.i.i, label %_ZN4llvm5ErrorD2Ev.exit87.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML16BBAddrMapSectionEEclEPS2_.exit.i.i.i.i.i

_ZN4llvm5ErrorD2Ev.exit87.i.i.i.i:                ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22, !noalias !9248
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 216 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !391, !noalias !9248, !nonnull !136, !align !137
  call void @_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE0ELb1EEEE18getSectionContentsERKNS0_13Elf_Shdr_ImplIS4_EE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.576") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %i.w, ptr noundef nonnull align 1 dereferenceable(64) %.val2) #22, !noalias !9248
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !noalias !9248 ; 3 uses
  %i.z = trunc i8 %i.y to i1
  br i1 %i.z, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i, label %bb.b

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit87.i.i.i.i
  %i.aa = load i64, ptr %8, align 8, !tbaa !147, !noalias !9249
  %i.ab = inttoptr i64 %i.aa to ptr
  store ptr null, ptr %8, align 8, !tbaa !147, !noalias !9249
  br label %bb.cq

bb.b:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit87.i.i.i.i
  %.sroa.0284.0.copyload.i.i.i.i = load ptr, ptr %8, align 8, !tbaa !174, !noalias !9248 ; 2 uses
  %.sroa.5285.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.5285.0.copyload.i.i.i.i = load i64, ptr %.sroa.5285.0..sroa_idx.i.i.i.i, align 8, !tbaa !143, !noalias !9248 ; 4 uses
  %i.ac = icmp eq i64 %.sroa.5285.0.copyload.i.i.i.i, 0
  br i1 %i.ac, label %bb.cq, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22, !noalias !9248
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !391, !noalias !9248, !nonnull !136, !align !137
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !138, !noalias !9248
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 5
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !86, !noalias !9248
  %i.ah = icmp eq i8 %i.ag, 1
  %i.ai = zext i1 %i.ah to i8
  store ptr %.sroa.0284.0.copyload.i.i.i.i, ptr %9, align 8, !tbaa !138, !noalias !9248
end_hunk_9
