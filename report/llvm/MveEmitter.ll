Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MveEmitter?download=true
inline.NumInlined: 6088
inline.NumDeleted: 2730
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN12_GLOBAL__N_117IRIntrinsicResultD2Ev:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIPKN12_GLOBAL__N_14TypeESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN12_GLOBAL__N_16ResultE, i64 16), ptr %0, align 8, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !61 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !42
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #27, !inline_history !284
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i3 = load ptr, ptr %i.aq, align 8, !tbaa !245 ; 8 uses
  %.not.i.i.i4 = icmp eq ptr %.val.i3, null
  br i1 %.not.i.i.i4, label %_ZN12_GLOBAL__N_16ResultD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i3, i64 8 ; 4 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4294967297
  %i.au = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ar, align 8, !tbaa !233
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i3, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !234
  %i.aw = load ptr, ptr %.val.i3, align 8, !tbaa !28
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %.val.i3) #26, !inline_history !16
  %i.az = load ptr, ptr %.val.i3, align 8, !tbaa !28
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %.val.i3) #26, !inline_history !16
  br label %_ZN12_GLOBAL__N_16ResultD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = add nsw i32 %i.au, -1
  store i32 %i.bd, ptr %i.ar, align 8, !tbaa !124
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.be = atomicrmw volatile add ptr %i.ar, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i = phi i32 [ %i.au, %bb.m ], [ %i.be, %bb.n ]
  %i.bf = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bf, label %bb.o, label %_ZN12_GLOBAL__N_16ResultD2Ev.exit, !prof !146

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i3) #26, !inline_history !284
  br label %_ZN12_GLOBAL__N_16ResultD2Ev.exit

_ZN12_GLOBAL__N_16ResultD2Ev.exit:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.o
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117IRIntrinsicResultD0Ev(ptr noundef nonnull align 8 dereferenceable(144) initializes((0, 8)) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN12_GLOBAL__N_117IRIntrinsicResultD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_117IRIntrinsicResult7genCodeERN4llvm11raw_ostreamERNS_21CodeGenParamAllocatorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(28) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !741)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61, !noalias !741
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i64, ptr %i.c, align 8, !tbaa !41, !noalias !741 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !39, !alias.scope !742
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.f, align 8, !tbaa !41, !alias.scope !742
  store i8 0, ptr %i.e, align 8, !tbaa !42, !alias.scope !742
  %i.g = add i64 %i.d, 11
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.g) #26
  %i.h = load i64, ptr %i.f, align 8, !tbaa !41, !alias.scope !742
  %i.i = add i64 %i.h, -4611686018427387893
  %i.j = icmp ult i64 %i.i, 11
  br i1 %i.j, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.a
  %i.k = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.114, i64 noundef 11) #26 ; 0 uses
  %i.l = load i64, ptr %i.f, align 8, !tbaa !41, !alias.scope !742
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %bb.c, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #29
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.o = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.b, i64 noundef %i.d) #26 ; 0 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !61
  %i.q = load i64, ptr %i.f, align 8, !tbaa !41
  call fastcc void @_ZN12_GLOBAL__N_121CodeGenParamAllocator10allocParamB5cxx11EN4llvm9StringRefES2_(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(28) %2, ptr nonnull @.str.113, i64 13, ptr %i.p, i64 %i.q)
  %i.r = load ptr, ptr %4, align 8, !tbaa !61     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.e
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.t = load i64, ptr %i.e, align 8, !tbaa !42
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 22 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !53   ; 2 uses
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp ult i64 %i.ab, 36
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.115, i64 noundef 36) #26
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.y, ptr noundef nonnull align 1 dereferenceable(36) @.str.115, i64 36, i1 false)
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !53
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 36
  store ptr %i.af, ptr %i.x, align 8, !tbaa !53
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.ad, %bb.d ], [ %1, %bb.e ]
  %i.ag = load ptr, ptr %3, align 8, !tbaa !61
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !41
  %i.aj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %i.ag, i64 noundef %i.ai) #26 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.val28 = load ptr, ptr %i.ak, align 8, !tbaa !92
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.val29 = load ptr, ptr %i.al, align 8, !tbaa !92
  %i.am = icmp eq ptr %.val28, %.val29
  %.pre90 = load ptr, ptr %i.x, align 8, !tbaa !53 ; 3 uses
  br i1 %i.am, label %_ZN4llvm11raw_ostreamlsEPKc.exit38, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %.pre90 to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = icmp ult i64 %i.aq, 3
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.as = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.116, i64 noundef 3) #26 ; 0 uses
  %.pre88.pre = load ptr, ptr %i.x, align 8, !tbaa !53
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit35

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.pre90, ptr noundef nonnull align 1 dereferenceable(3) @.str.116, i64 3, i1 false)
  %i.at = load ptr, ptr %i.x, align 8, !tbaa !53
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 3 ; 2 uses
  store ptr %i.au, ptr %i.x, align 8, !tbaa !53
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit35

_ZN4llvm11raw_ostreamlsEPKc.exit35:               ; preds = %bb.g, %bb.h
  %.pre88 = phi ptr [ %.pre88.pre, %bb.g ], [ %i.au, %bb.h ]
  %.val21 = load ptr, ptr %i.ak, align 8, !tbaa !92 ; 3 uses
  %.val22 = load ptr, ptr %i.al, align 8, !tbaa !92 ; 3 uses
  %.not76 = icmp eq ptr %.val21, %.val22
  br i1 %.not76, label %._crit_edge, label %_ZN4llvm11raw_ostreamlsEPKc.exit41.peel

_ZN4llvm11raw_ostreamlsEPKc.exit41.peel:          ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit35
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.az = load ptr, ptr %.val21, align 8, !tbaa !93 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !28
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(12) %i.az) #26
  %i.bd = load ptr, ptr %6, align 8, !tbaa !61
  %i.be = load i64, ptr %i.av, align 8, !tbaa !41
  call fastcc void @_ZN12_GLOBAL__N_121CodeGenParamAllocator10allocParamB5cxx11EN4llvm9StringRefES2_(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(28) %2, ptr nonnull @.str.108, i64 12, ptr %i.bd, i64 %i.be)
  %i.bf = load ptr, ptr %5, align 8, !tbaa !61
  %i.bg = load i64, ptr %i.aw, align 8, !tbaa !41
  %i.bh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.bf, i64 noundef %i.bg) #26 ; 0 uses
  %i.bi = load ptr, ptr %5, align 8, !tbaa !61    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.ax
  br i1 %i.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i43.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.peel: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit41.peel
  %i.bk = load i64, ptr %i.ax, align 8, !tbaa !42
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i43.peel: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit41.peel
  %8 = load i64, ptr %i.aw, align 8, !tbaa !41
  %9 = icmp ult i64 %8, 16
  call void @llvm.assume(i1 %9)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i43.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.peel
  %i.bm = load ptr, ptr %6, align 8, !tbaa !61    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.ay
  br i1 %i.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i46.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.peel
  %i.bo = load i64, ptr %i.ay, align 8, !tbaa !42
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i46.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.peel
  %10 = load i64, ptr %i.av, align 8, !tbaa !41
  %11 = icmp ult i64 %10, 16
  call void @llvm.assume(i1 %11)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i46.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.bq = getelementptr inbounds nuw i8, ptr %.val21, i64 8 ; 2 uses
  %.not.peel = icmp eq ptr %i.bq, %.val22
  br i1 %.not.peel, label %._crit_edge.loopexit, label %.peel.next

._crit_edge.loopexit:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.peel
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !53
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm11raw_ostreamlsEPKc.exit35
  %i.br = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %.pre88, %_ZN4llvm11raw_ostreamlsEPKc.exit35 ] ; 2 uses
  %i.bs = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.bt = icmp eq ptr %i.bs, %i.br
  br i1 %i.bt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.bu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.117, i64 noundef 1) #26 ; 0 uses
  %.pre89 = load ptr, ptr %i.x, align 8, !tbaa !53
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit38

bb.j:                                             ; preds = %._crit_edge
  store i8 125, ptr %i.br, align 1
  %i.bv = load ptr, ptr %i.x, align 8, !tbaa !53
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1 ; 2 uses
  store ptr %i.bw, ptr %i.x, align 8, !tbaa !53
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit38

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %.sroa.070.077 = phi ptr [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.peel ] ; 2 uses
  %i.bx = load ptr, ptr %.sroa.070.077, align 8, !tbaa !93 ; 2 uses
  %i.by = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.bz = load ptr, ptr %i.x, align 8, !tbaa !53  ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = icmp ult i64 %i.cc, 2
  br i1 %i.cd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.peel.next
  %i.ce = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.56, i64 noundef 2) #26
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit41

bb.l:                                             ; preds = %.peel.next
  store i16 8236, ptr %i.bz, align 1
  %i.cf = load ptr, ptr %i.x, align 8, !tbaa !53
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  store ptr %i.cg, ptr %i.x, align 8, !tbaa !53
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit41

_ZN4llvm11raw_ostreamlsEPKc.exit41:               ; preds = %bb.k, %bb.l
  %.0.i.i40 = phi ptr [ %i.ce, %bb.k ], [ %1, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ch = load ptr, ptr %i.bx, align 8, !tbaa !28
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(12) %i.bx) #26
  %i.ck = load ptr, ptr %6, align 8, !tbaa !61
  %i.cl = load i64, ptr %i.av, align 8, !tbaa !41
  call fastcc void @_ZN12_GLOBAL__N_121CodeGenParamAllocator10allocParamB5cxx11EN4llvm9StringRefES2_(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(28) %2, ptr nonnull @.str.108, i64 12, ptr %i.ck, i64 %i.cl)
  %i.cm = load ptr, ptr %5, align 8, !tbaa !61
  %i.cn = load i64, ptr %i.aw, align 8, !tbaa !41
  %i.co = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i40, ptr noundef %i.cm, i64 noundef %i.cn) #26 ; 0 uses
  %i.cp = load ptr, ptr %5, align 8, !tbaa !61    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.ax
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit41
  %i.cr = load i64, ptr %i.ax, align 8, !tbaa !42
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  %i.ct = load ptr, ptr %6, align 8, !tbaa !61    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.ay
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %i.cv = load i64, ptr %i.ay, align 8, !tbaa !42
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.070.077, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cx, %.val22
  br i1 %.not, label %._crit_edge.loopexit, label %.peel.next, !llvm.loop !739

_ZN4llvm11raw_ostreamlsEPKc.exit38:               ; preds = %bb.j, %bb.i, %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.cy = phi ptr [ %i.bw, %bb.j ], [ %.pre89, %bb.i ], [ %.pre90, %_ZN4llvm11raw_ostreamlsEPKc.exit ] ; 2 uses
  %i.cz = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = icmp ult i64 %i.dc, 4
  br i1 %i.dd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit38
  %i.de = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.118, i64 noundef 4) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit50

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit38
  store i32 2065706025, ptr %i.cy, align 1
  %i.df = load ptr, ptr %i.x, align 8, !tbaa !53
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store ptr %i.dg, ptr %i.x, align 8, !tbaa !53
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit50

_ZN4llvm11raw_ostreamlsEPKc.exit50:               ; preds = %bb.m, %bb.n
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val23 = load ptr, ptr %i.dh, align 8, !tbaa !285 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val24 = load ptr, ptr %i.di, align 8, !tbaa !285 ; 3 uses
  %.not7579 = icmp eq ptr %.val23, %.val24
  br i1 %.not7579, label %._crit_edge83, label %.lr.ph82

.lr.ph82:                                         ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit50
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %.val18.peel = load ptr, ptr %.val23, align 8, !tbaa !244 ; 2 uses
  %i.dl = getelementptr i8, ptr %.val23, i64 8
  %.val19.peel = load ptr, ptr %i.dl, align 8, !tbaa !245 ; 9 uses
  %.not.i.i.i.peel = icmp eq ptr %.val19.peel, null ; 2 uses
  br i1 %.not.i.i.i.peel, label %_ZN4llvm11raw_ostreamlsEPKc.exit59.peel, label %bb.o

bb.o:                                             ; preds = %.lr.ph82
  %i.dm = getelementptr inbounds nuw i8, ptr %.val19.peel, i64 8 ; 3 uses
  %i.dn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i.peel = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i.i.i.peel, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !124
  %i.dp = add nsw i32 %i.do, 1
  store i32 %i.dp, ptr %i.dm, align 4, !tbaa !124
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit59.peel

bb.q:                                             ; preds = %bb.o
  %i.dq = atomicrmw volatile add ptr %i.dm, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit59.peel

_ZN4llvm11raw_ostreamlsEPKc.exit59.peel:          ; preds = %bb.q, %bb.p, %.lr.ph82
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.dr = load ptr, ptr %.val18.peel, align 8, !tbaa !28
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 72
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(64) %.val18.peel) #26
  %i.du = load ptr, ptr %7, align 8, !tbaa !61
  %i.dv = load i64, ptr %i.dj, align 8, !tbaa !41
  %i.dw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.du, i64 noundef %i.dv) #26 ; 0 uses
  %i.dx = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.dk
  br i1 %i.dy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i61.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.peel: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit59.peel
  %i.dz = load i64, ptr %i.dk, align 8, !tbaa !42
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i61.peel: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit59.peel
  %12 = load i64, ptr %i.dj, align 8, !tbaa !41
  %13 = icmp ult i64 %12, 16
  call void @llvm.assume(i1 %13)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i61.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br i1 %.not.i.i.i.peel, label %_ZNSt12__shared_ptrIN12_GLOBAL__N_16ResultELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.peel
  %i.eb = getelementptr inbounds nuw i8, ptr %.val19.peel, i64 8 ; 4 uses
  %i.ec = load atomic i64, ptr %i.eb acquire, align 8 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 4294967297
  %i.ee = trunc i64 %i.ec to i32                  ; 2 uses
  br i1 %i.ed, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ef = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i63.peel = icmp eq i8 %i.ef, 0
  br i1 %.not.i.i.i63.peel, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eg = add nsw i32 %i.ee, -1
  store i32 %i.eg, ptr %i.eb, align 8, !tbaa !124
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.peel

bb.u:                                             ; preds = %bb.s
  %i.eh = atomicrmw volatile add ptr %i.eb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.peel

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.peel: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.peel = phi i32 [ %i.ee, %bb.t ], [ %i.eh, %bb.u ]
  %i.ei = icmp eq i32 %.0.i.i.i.i.peel, 1
  br i1 %i.ei, label %bb.v, label %_ZNSt12__shared_ptrIN12_GLOBAL__N_16ResultELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel, !prof !146

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.peel
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val19.peel) #26
  br label %_ZNSt12__shared_ptrIN12_GLOBAL__N_16ResultELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel

bb.w:                                             ; preds = %bb.r
  store i32 0, ptr %i.eb, align 8, !tbaa !233
  %i.ej = getelementptr inbounds nuw i8, ptr %.val19.peel, i64 12
  store i32 0, ptr %i.ej, align 4, !tbaa !234
  %i.ek = load ptr, ptr %.val19.peel, align 8, !tbaa !28
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(16) %.val19.peel) #26, !inline_history !12
  %i.en = load ptr, ptr %.val19.peel, align 8, !tbaa !28
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(16) %.val19.peel) #26, !inline_history !12
  br label %_ZNSt12__shared_ptrIN12_GLOBAL__N_16ResultELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel

_ZNSt12__shared_ptrIN12_GLOBAL__N_16ResultELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel: ; preds = %bb.w, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.peel
  %i.eq = getelementptr inbounds nuw i8, ptr %.val23, i64 16 ; 2 uses
  %.not75.peel = icmp eq ptr %i.eq, %.val24
  br i1 %.not75.peel, label %._crit_edge83, label %.peel.next86

._crit_edge83:                                    ; preds = %_ZNSt12__shared_ptrIN12_GLOBAL__N_16ResultELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrIN12_GLOBAL__N_16ResultELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel, %_ZN4llvm11raw_ostreamlsEPKc.exit50
  %i.er = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.es = load ptr, ptr %i.x, align 8, !tbaa !53  ; 2 uses
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = icmp ult i64 %i.ev, 2
  br i1 %i.ew, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge83
  %i.ex = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.119, i64 noundef 2) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit53

bb.y:                                             ; preds = %._crit_edge83
  store i16 10621, ptr %i.es, align 1
  %i.ey = load ptr, ptr %i.x, align 8, !tbaa !53
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  store ptr %i.ez, ptr %i.x, align 8, !tbaa !53
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit53

_ZN4llvm11raw_ostreamlsEPKc.exit53:               ; preds = %bb.x, %bb.y
  %i.fa = load ptr, ptr %3, align 8, !tbaa !61    ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit53
  %i.fd = load i64, ptr %i.fb, align 8, !tbaa !42
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fe) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

.peel.next86:                                     ; preds = %_ZNSt12__shared_ptrIN12_GLOBAL__N_16ResultELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel, %_ZNSt12__shared_ptrIN12_GLOBAL__N_16ResultELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sroa.065.080 = phi ptr [ %i.gt, %_ZNSt12__shared_ptrIN12_GLOBAL__N_16ResultELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.eq, %_ZNSt12__shared_ptrIN12_GLOBAL__N_16ResultELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel ] ; 3 uses
  %.val18 = load ptr, ptr %.sroa.065.080, align 8, !tbaa !244 ; 2 uses
  %i.ff = getelementptr i8, ptr %.sroa.065.080, i64 8
  %.val19 = load ptr, ptr %i.ff, align 8, !tbaa !245 ; 9 uses
  %.not.i.i.i = icmp eq ptr %.val19, null         ; 2 uses
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN12_GLOBAL__N_16ResultEEC2ERKS2_.exit, label %bb.z

bb.z:                                             ; preds = %.peel.next86
  %i.fg = getelementptr inbounds nuw i8, ptr %.val19, i64 8 ; 3 uses
  %i.fh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i = icmp eq i8 %i.fh, 0
  br i1 %.not.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fi = load i32, ptr %i.fg, align 4, !tbaa !124
  %i.fj = add nsw i32 %i.fi, 1
  store i32 %i.fj, ptr %i.fg, align 4, !tbaa !124
  br label %_ZNSt10shared_ptrIN12_GLOBAL__N_16ResultEEC2ERKS2_.exit

bb.ab:                                            ; preds = %bb.z
  %i.fk = atomicrmw volatile add ptr %i.fg, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12_GLOBAL__N_16ResultEEC2ERKS2_.exit

_ZNSt10shared_ptrIN12_GLOBAL__N_16ResultEEC2ERKS2_.exit: ; preds = %.peel.next86, %bb.aa, %bb.ab
  %i.fl = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.fm = load ptr, ptr %i.x, align 8, !tbaa !53  ; 2 uses
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = icmp ult i64 %i.fp, 2
  br i1 %i.fq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZNSt10shared_ptrIN12_GLOBAL__N_16ResultEEC2ERKS2_.exit
  %i.fr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.56, i64 noundef 2) #26
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit59

bb.ad:                                            ; preds = %_ZNSt10shared_ptrIN12_GLOBAL__N_16ResultEEC2ERKS2_.exit
  store i16 8236, ptr %i.fm, align 1
  %i.fs = load ptr, ptr %i.x, align 8, !tbaa !53
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 2
  store ptr %i.ft, ptr %i.x, align 8, !tbaa !53
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit59

_ZN4llvm11raw_ostreamlsEPKc.exit59:               ; preds = %bb.ac, %bb.ad
  %.0.i.i58 = phi ptr [ %i.fr, %bb.ac ], [ %1, %bb.ad ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.fu = load ptr, ptr %.val18, align 8, !tbaa !28
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 72
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(64) %.val18) #26
  %i.fx = load ptr, ptr %7, align 8, !tbaa !61
  %i.fy = load i64, ptr %i.dj, align 8, !tbaa !41
  %i.fz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i58, ptr noundef %i.fx, i64 noundef %i.fy) #26 ; 0 uses
  %i.ga = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.dk
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit59
  %i.gc = load i64, ptr %i.dk, align 8, !tbaa !42
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN12_GLOBAL__N_16ResultELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %i.ge = getelementptr inbounds nuw i8, ptr %.val19, i64 8 ; 4 uses
  %i.gf = load atomic i64, ptr %i.ge acquire, align 8 ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 4294967297
  %i.gh = trunc i64 %i.gf to i32                  ; 2 uses
  br i1 %i.gg, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.ge, align 8, !tbaa !233
  %i.gi = getelementptr inbounds nuw i8, ptr %.val19, i64 12
  store i32 0, ptr %i.gi, align 4, !tbaa !234
  %i.gj = load ptr, ptr %.val19, align 8, !tbaa !28
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(16) %.val19) #26, !inline_history !12
  %i.gm = load ptr, ptr %.val19, align 8, !tbaa !28
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.go = load ptr, ptr %i.gn, align 8
  call void %i.go(ptr noundef nonnull align 8 dereferenceable(16) %.val19) #26, !inline_history !12
  br label %_ZNSt12__shared_ptrIN12_GLOBAL__N_16ResultELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ag:                                            ; preds = %bb.ae
  %i.gp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i63 = icmp eq i8 %i.gp, 0
  br i1 %.not.i.i.i63, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gq = add nsw i32 %i.gh, -1
  store i32 %i.gq, ptr %i.ge, align 8, !tbaa !124
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.gr = atomicrmw volatile add ptr %i.ge, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i = phi i32 [ %i.gh, %bb.ah ], [ %i.gr, %bb.ai ]
  %i.gs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.gs, label %bb.aj, label %_ZNSt12__shared_ptrIN12_GLOBAL__N_16ResultELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !146

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val19) #26
  br label %_ZNSt12__shared_ptrIN12_GLOBAL__N_16ResultELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

end_hunk_0
