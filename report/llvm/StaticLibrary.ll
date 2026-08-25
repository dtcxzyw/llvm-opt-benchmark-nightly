Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/StaticLibrary?download=true
inline.NumInlined: 1695
inline.NumDeleted: 1068
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK5clang4ssaf10JSONFormat19staticLibraryToJSONERKNS0_13StaticLibraryE:bb.a
  call void @_ZN4llvm4json5ValueC2ENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr nonnull @.str.1, i64 13)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZN4llvm4json9ObjectKeyC2ENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr nonnull @.str.22, i64 4)
  %i.a = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4llvm4json6ObjectixEONS0_9ObjectKeyE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5) #18 ; 2 uses
  call void @_ZN4llvm4json5Value7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #18
  call void @_ZN4llvm4json5Value8moveFromEOKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %4) #18
  %i.b = load ptr, ptr %5, align 8, !tbaa !184    ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4llvm4json9ObjectKeyD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !28
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #19
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #19
  br label %_ZN4llvm4json9ObjectKeyD2Ev.exit

_ZN4llvm4json9ObjectKeyD2Ev.exit:                 ; preds = %bb.a, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN4llvm4json5Value7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.h = load ptr, ptr %2, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !60
  call void @_ZN4llvm6Triple9normalizeB5cxx11ENS_9StringRefENS0_13CanonicalFormE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr %i.h, i64 %i.j, i32 noundef 0) #18
  store i16 6, ptr %6, align 8, !tbaa !35
  %i.k = load ptr, ptr %7, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !60
  %i.n = call noundef zeroext i1 @_ZN4llvm4json6isUTF8ENS_9StringRefEPm(ptr %i.k, i64 %i.m, ptr noundef null) #18
  br i1 %i.n, label %bb.d, label %bb.c, !prof !185

bb.c:                                             ; preds = %_ZN4llvm4json9ObjectKeyD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.o = load ptr, ptr %7, align 8, !tbaa !23
  %i.p = load i64, ptr %i.l, align 8, !tbaa !60
  call void @_ZN4llvm4json7fixUTF8B5cxx11ENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr %i.o, i64 %i.p) #18
  %i.q = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %3) #18 ; 0 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !23     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.u = load i64, ptr %i.s, align 8, !tbaa !28
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZN4llvm4json9ObjectKeyD2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !59
  %i.y = load ptr, ptr %7, align 8, !tbaa !23     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

bb.e:                                             ; preds = %bb.d
  %i.ab = load i64, ptr %i.l, align 8, !tbaa !60  ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.ad, i1 false)
  br label %_ZN4llvm4json5ValueC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %bb.d
  store ptr %i.y, ptr %i.w, align 8, !tbaa !23
  %i.ae = load i64, ptr %i.z, align 8, !tbaa !28
  store i64 %i.ae, ptr %i.x, align 8, !tbaa !28
  %.pre = load i64, ptr %i.l, align 8, !tbaa !60
  br label %_ZN4llvm4json5ValueC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN4llvm4json5ValueC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.af = phi i64 [ %i.ab, %bb.e ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !60
  store ptr %i.z, ptr %7, align 8, !tbaa !23
  store i64 0, ptr %i.l, align 8, !tbaa !60
  store i8 0, ptr %i.z, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @_ZN4llvm4json9ObjectKeyC2ENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr nonnull @.str.4, i64 13)
  %i.ah = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4llvm4json6ObjectixEONS0_9ObjectKeyE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %8) #18 ; 2 uses
  call void @_ZN4llvm4json5Value7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ah) #18
  call void @_ZN4llvm4json5Value8moveFromEOKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull align 8 dereferenceable(40) %6) #18
  %i.ai = load ptr, ptr %8, align 8, !tbaa !184   ; 4 uses
  %.not.i.i9 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i9, label %_ZN4llvm4json9ObjectKeyD2Ev.exit13, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm4json5ValueC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !23 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i10: ; preds = %bb.f
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !28
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #19
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i10
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 32) #19
  br label %_ZN4llvm4json9ObjectKeyD2Ev.exit13

_ZN4llvm4json9ObjectKeyD2Ev.exit13:               ; preds = %_ZN4llvm4json5ValueC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN4llvm4json5Value7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #18
  %i.ao = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.z
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm4json9ObjectKeyD2Ev.exit13
  %i.aq = load i64, ptr %i.z, align 8, !tbaa !28
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm4json9ObjectKeyD2Ev.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @_ZNK5clang4ssaf10JSONFormat20buildNamespaceToJSONERKNS0_14BuildNamespaceE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::json::Object") align 8 %10, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.as) #18
  store i16 7, ptr %9, align 8, !tbaa !35
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.av = load <2 x ptr>, ptr %10, align 16, !tbaa !179
  store ptr null, ptr %10, align 16, !tbaa !180
  store <2 x ptr> %i.av, ptr %i.at, align 8, !tbaa !179
  store ptr null, ptr %i.au, align 8, !tbaa !182
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.az = load <2 x i32>, ptr %i.ax, align 16, !tbaa !39
  store i32 0, ptr %i.ax, align 16, !tbaa !39
  store <2 x i32> %i.az, ptr %i.aw, align 8, !tbaa !39
  store i32 0, ptr %i.ay, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @_ZN4llvm4json9ObjectKeyC2ENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr nonnull @.str.9, i64 9)
  %i.ba = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4llvm4json6ObjectixEONS0_9ObjectKeyE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %11) #18 ; 2 uses
  call void @_ZN4llvm4json5Value7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ba) #18
  call void @_ZN4llvm4json5Value8moveFromEOKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull align 8 dereferenceable(40) %9) #18
  %i.bb = load ptr, ptr %11, align 8, !tbaa !184  ; 4 uses
  %.not.i.i14 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i14, label %_ZN4llvm4json9ObjectKeyD2Ev.exit18, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !23 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i15: ; preds = %bb.g
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !28
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #19
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i16

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i16: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i15
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 32) #19
  br label %_ZN4llvm4json9ObjectKeyD2Ev.exit18

_ZN4llvm4json9ObjectKeyD2Ev.exit18:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN4llvm4json5Value7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %9) #18
  call void @_ZN4llvm8DenseMapINS_4json9ObjectKeyENS1_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS2_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !73 ; 4 uses
  %i.bj = icmp ugt i64 %i.bi, 230584300921369395
  br i1 %i.bj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm4json9ObjectKeyD2Ev.exit18
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
  unreachable

bb.i:                                             ; preds = %_ZN4llvm4json9ObjectKeyD2Ev.exit18
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %.not62 = icmp eq i64 %i.bi, 0
  br i1 %.not62, label %_ZNSt6vectorIN4llvm4json5ValueESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN4llvm4json5ValueESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN4llvm4json5ValueESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.i
  %17 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bl = mul nuw nsw i64 %i.bi, 40
  %i.bm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #21 ; 5 uses
  store ptr %i.bm, ptr %12, align 8, !tbaa !186
  store ptr %i.bm, ptr %17, align 8, !tbaa !188
  %i.bn = getelementptr inbounds nuw [40 x i8], ptr %i.bm, i64 %i.bi ; 2 uses
  store ptr %i.bn, ptr %i.bk, align 8, !tbaa !189
  %i.bo = insertelement <2 x ptr> poison, ptr %i.bm, i64 0
  %i.bp = insertelement <2 x ptr> %i.bo, ptr %i.bn, i64 1
  br label %_ZNSt6vectorIN4llvm4json5ValueESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN4llvm4json5ValueESaIS2_EE7reserveEm.exit: ; preds = %bb.i, %_ZNSt12_Vector_baseIN4llvm4json5ValueESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %i.bq = phi ptr [ null, %bb.i ], [ %i.bm, %_ZNSt12_Vector_baseIN4llvm4json5ValueESaIS2_EE13_M_deallocateEPS2_m.exit.i ]
  %i.br = phi <2 x ptr> [ splat (ptr null), %bb.i ], [ %i.bp, %_ZNSt12_Vector_baseIN4llvm4json5ValueESaIS2_EE13_M_deallocateEPS2_m.exit.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !70 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %.not30 = icmp eq ptr %i.bt, %i.bu
  br i1 %.not30, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4llvm4json5ValueESaIS2_EE7reserveEm.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 20
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  br label %bb.l

._crit_edge.loopexit:                             ; preds = %_ZN4llvm4json5Array9push_backEONS0_5ValueE.exit
  %.pre32 = load ptr, ptr %12, align 8, !tbaa !186
  %i.cb = load <2 x ptr>, ptr %i.ca, align 8, !tbaa !128
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIN4llvm4json5ValueESaIS2_EE7reserveEm.exit
  %i.cc = phi ptr [ %.pre32, %._crit_edge.loopexit ], [ %i.bq, %_ZNSt6vectorIN4llvm4json5ValueESaIS2_EE7reserveEm.exit ]
  %i.cd = phi <2 x ptr> [ %i.cb, %._crit_edge.loopexit ], [ %i.br, %_ZNSt6vectorIN4llvm4json5ValueESaIS2_EE7reserveEm.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  store i16 8, ptr %15, align 8, !tbaa !35
  %i.ce = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !186
  %i.cf = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %12, i64 8
  store <2 x ptr> %i.cd, ptr %i.cf, align 8, !tbaa !128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @_ZN4llvm4json9ObjectKeyC2ENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr nonnull @.str.13, i64 7)
  %i.ch = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4llvm4json6ObjectixEONS0_9ObjectKeyE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %16) #18 ; 2 uses
  call void @_ZN4llvm4json5Value7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ch) #18
  call void @_ZN4llvm4json5Value8moveFromEOKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ch, ptr noundef nonnull align 8 dereferenceable(40) %15) #18
  %i.ci = load ptr, ptr %16, align 8, !tbaa !184  ; 4 uses
  %.not.i.i19 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i19, label %_ZN4llvm4json9ObjectKeyD2Ev.exit23, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !23 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %bb.j
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !28
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #19
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef 32) #19
  br label %_ZN4llvm4json9ObjectKeyD2Ev.exit23

_ZN4llvm4json9ObjectKeyD2Ev.exit23:               ; preds = %._crit_edge, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @_ZN4llvm4json5Value7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  %i.co = load ptr, ptr %12, align 8, !tbaa !186  ; 3 uses
  %i.cp = load ptr, ptr %i.cg, align 8, !tbaa !188 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.co, %i.cp
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN4llvm4json5ValueEEvT_S4_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm4json9ObjectKeyD2Ev.exit23, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i ], [ %i.co, %_ZN4llvm4json9ObjectKeyD2Ev.exit23 ] ; 2 uses
  call void @_ZN4llvm4json5Value7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i.i) #18
  %i.cq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cq, %i.cp
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN4llvm4json5ValueEEvT_S4_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !190

_ZSt8_DestroyIPN4llvm4json5ValueEEvT_S4_.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %12, align 8, !tbaa !186
  br label %_ZSt8_DestroyIPN4llvm4json5ValueEEvT_S4_.exit.i.i

_ZSt8_DestroyIPN4llvm4json5ValueEEvT_S4_.exit.i.i: ; preds = %_ZSt8_DestroyIPN4llvm4json5ValueEEvT_S4_.exitthread-pre-split.i.i, %_ZN4llvm4json9ObjectKeyD2Ev.exit23
  %i.cr = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN4llvm4json5ValueEEvT_S4_.exitthread-pre-split.i.i ], [ %i.co, %_ZN4llvm4json9ObjectKeyD2Ev.exit23 ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i1.i.i, label %_ZN4llvm4json5ArrayD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN4llvm4json5ValueEEvT_S4_.exit.i.i
  %i.cs = load ptr, ptr %i.bk, align 8, !tbaa !189
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cr to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cv) #19
  br label %_ZN4llvm4json5ArrayD2Ev.exit

_ZN4llvm4json5ArrayD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN4llvm4json5ValueEEvT_S4_.exit.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  ret void

bb.l:                                             ; preds = %.lr.ph, %_ZN4llvm4json5Array9push_backEONS0_5ValueE.exit
  %.sroa.025.031 = phi ptr [ %i.bt, %.lr.ph ], [ %i.de, %_ZN4llvm4json5Array9push_backEONS0_5ValueE.exit ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.025.031, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !163
  call void @_ZNK5clang4ssaf10JSONFormat23tuSummaryEncodingToJSONERKNS0_17TUSummaryEncodingE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::json::Object") align 8 %14, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(240) %i.cx) #18
  store i16 7, ptr %13, align 8, !tbaa !35
  %i.cy = load <2 x ptr>, ptr %14, align 16, !tbaa !179
  store ptr null, ptr %14, align 16, !tbaa !180
  store <2 x ptr> %i.cy, ptr %i.bv, align 8, !tbaa !179
  store ptr null, ptr %i.bw, align 8, !tbaa !182
  %i.cz = load <2 x i32>, ptr %i.by, align 16, !tbaa !39
  store i32 0, ptr %i.by, align 16, !tbaa !39
  store <2 x i32> %i.cz, ptr %i.bx, align 8, !tbaa !39
  store i32 0, ptr %i.bz, align 4, !tbaa !39
  %i.da = load ptr, ptr %i.ca, align 8, !tbaa !188 ; 3 uses
  %i.db = load ptr, ptr %i.bk, align 8, !tbaa !189
  %.not.i.i.i = icmp eq ptr %i.da, %i.db
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm4json5Value8moveFromEOKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.da, ptr noundef nonnull align 8 dereferenceable(40) %13) #18
  %i.dc = load ptr, ptr %i.ca, align 8, !tbaa !188
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  store ptr %i.dd, ptr %i.ca, align 8, !tbaa !188
  br label %_ZN4llvm4json5Array9push_backEONS0_5ValueE.exit

bb.n:                                             ; preds = %bb.l
  call void @_ZNSt6vectorIN4llvm4json5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr %i.da, ptr noundef nonnull align 8 dereferenceable(40) %13)
  br label %_ZN4llvm4json5Array9push_backEONS0_5ValueE.exit

_ZN4llvm4json5Array9push_backEONS0_5ValueE.exit:  ; preds = %bb.m, %bb.n
  call void @_ZN4llvm4json5Value7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %13) #18
  call void @_ZN4llvm8DenseMapINS_4json9ObjectKeyENS1_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS2_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.de = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.025.031) #23 ; 2 uses
  %.not = icmp eq ptr %i.de, %i.bu
  br i1 %.not, label %._crit_edge.loopexit, label %bb.l
}

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN4llvm4json6ObjectixEONS0_9ObjectKeyE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4json9ObjectKeyD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !184    ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !28
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #19
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #19
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4json5ValueC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store i16 6, ptr %0, align 8, !tbaa !35
  %i.a = load ptr, ptr %1, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !60
  %i.d = tail call noundef zeroext i1 @_ZN4llvm4json6isUTF8ENS_9StringRefEPm(ptr %i.a, i64 %i.c, ptr noundef null) #18
  br i1 %i.d, label %bb.c, label %bb.b, !prof !185

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.e = load ptr, ptr %1, align 8, !tbaa !23
  %i.f = load i64, ptr %i.b, align 8, !tbaa !60
  call void @_ZN4llvm4json7fixUTF8B5cxx11ENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr %i.e, i64 %i.f) #18
  %i.g = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #18 ; 0 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !23     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8, !tbaa !28
  %i.l = add i64 %i.k, 1
end_hunk_0
