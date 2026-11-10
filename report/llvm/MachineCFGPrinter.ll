Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachineCFGPrinter?download=true
inline.NumInlined: 642
inline.NumDeleted: 298
begin_hunk_0_@_ZN4llvm15GraphWriterBaseIPNS_18DOTMachineFuncInfoENS_11GraphWriterIS2_EEE11writeHeaderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm14DOTGraphTraitsIPNS_18DOTMachineFuncInfoEE12getGraphNameB5cxx11ES2_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.b = load ptr, ptr %1, align 8, !tbaa !42
  %i.c = tail call { ptr, i64 } @_ZNK4llvm15MachineFunction7getNameEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.b) #18 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 3 uses
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %.not.i = icmp eq ptr %i.d, null
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !39, !alias.scope !126
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !33, !alias.scope !126
  store i8 0, ptr %i.f, align 8, !tbaa !19, !alias.scope !126
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18, !noalias !126
  store i64 %i.e, ptr %i.a, align 8, !tbaa !32, !noalias !126
  %i.h = icmp ugt i64 %i.e, 15
  br i1 %i.h, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #18 ; 2 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !18, !alias.scope !126
  %i.j = load i64, ptr %i.a, align 8, !tbaa !32, !noalias !126
  store i64 %i.j, ptr %i.f, align 8, !tbaa !19, !alias.scope !126
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.k = phi ptr [ %i.i, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  switch i64 %i.e, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %i.d, align 1, !tbaa !19
  store i8 %i.l, ptr %i.k, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 %i.d, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !32, !noalias !126 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !33, !alias.scope !126
  %i.o = load ptr, ptr %3, align 8, !tbaa !18, !alias.scope !126
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18, !noalias !126
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.q = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.25, i64 noundef 17) #18, !noalias !127 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.r, ptr %2, align 8, !tbaa !39, !alias.scope !127
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !18   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !33   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  store ptr %i.s, ptr %2, align 8, !tbaa !18, !alias.scope !127
  %i.z = load i64, ptr %i.t, align 8, !tbaa !19
  store i64 %i.z, ptr %i.r, align 8, !tbaa !19, !alias.scope !127
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !33
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = phi i64 [ %i.w, %bb.g ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !33, !alias.scope !127
  store ptr %i.t, ptr %i.q, align 8, !tbaa !18
  store i64 0, ptr %i.ab, align 8, !tbaa !33
  store i8 0, ptr %i.t, align 8, !tbaa !19
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.ad = add i64 %i.aa, -4611686018427387894
  %i.ae = icmp ult i64 %i.ad, 10
  br i1 %i.ae, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.h:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #20, !noalias !128
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.af = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.26, i64 noundef 10) #18, !noalias !128 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !39, !alias.scope !128
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !18 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 5 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !33 ; 3 uses
  %i.am = icmp ult i64 %i.al, 16
  call void @llvm.assume(i1 %i.am)
  %i.an = add nuw nsw i64 %i.al, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.ai, i64 %i.an, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.ah, ptr %0, align 8, !tbaa !18, !alias.scope !128
  %i.ao = load i64, ptr %i.ai, align 8, !tbaa !19
  store i64 %i.ao, ptr %i.ag, align 8, !tbaa !19, !alias.scope !128
  %.phi.trans.insert.i2 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.pre.i3 = load i64, ptr %.phi.trans.insert.i2, align 8, !tbaa !33
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.ap = phi i64 [ %i.al, %bb.i ], [ %.pre.i3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ap, ptr %i.ar, align 8, !tbaa !33, !alias.scope !128
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !18
  store i64 0, ptr %i.aq, align 8, !tbaa !33
  store i8 0, ptr %i.ai, align 8, !tbaa !19
  %i.as = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.r
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.au = load i64, ptr %i.r, align 8, !tbaa !19
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.aw = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !19
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

declare void @_ZN4llvm3DOT12EscapeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #10

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15GraphWriterBaseIPNS_18DOTMachineFuncInfoENS_11GraphWriterIS2_EEE9writeNodeEPKNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %class.anon, align 1                ; 3 uses
  %5 = alloca %class.anon, align 1                ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %11 = alloca %"class.llvm::raw_string_ostream", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !39, !alias.scope !141
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !33, !alias.scope !141
  store i8 0, ptr %i.a, align 8, !tbaa !19, !alias.scope !141
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61, !nonnull !25, !align !60 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38   ; 2 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp ult i64 %i.k, 5
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull @.str.30, i64 noundef 5) #18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.h, ptr noundef nonnull align 1 dereferenceable(5) @.str.30, i64 5, i1 false)
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  store ptr %i.o, ptr %i.g, align 8, !tbaa !38
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.m, %bb.b ], [ %i.d, %bb.c ]
  %i.p = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %1) #18 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !38   ; 2 uses
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ult i64 %i.w, 8
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.y = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull @.str.31, i64 noundef 8) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit62

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i64 4424065772627909408, ptr %i.t, align 1
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.aa, ptr %i.s, align 8, !tbaa !38
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit62

_ZN4llvm11raw_ostreamlsEPKc.exit62:               ; preds = %bb.d, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !58, !range !24, !noundef !25
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !61, !nonnull !25, !align !60 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !37
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 5 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !38 ; 3 uses
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  br i1 %i.ad, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit62
  %i.am = icmp ult i64 %i.al, 5
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull @.str.32, i64 noundef 5) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit65

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ai, ptr noundef nonnull align 1 dereferenceable(5) @.str.32, i64 5, i1 false)
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !38
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 5
  store ptr %i.ap, ptr %i.ah, align 8, !tbaa !38
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit65

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit62
  %i.aq = icmp ult i64 %i.al, 7
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ar = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull @.str.33, i64 noundef 7) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit65

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ai, ptr noundef nonnull align 1 dereferenceable(7) @.str.33, i64 7, i1 false)
  %i.as = load ptr, ptr %i.ah, align 8, !tbaa !38
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 7
  store ptr %i.at, ptr %i.ah, align 8, !tbaa !38
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit65

_ZN4llvm11raw_ostreamlsEPKc.exit65:               ; preds = %bb.k, %bb.j, %bb.h, %bb.g
  %i.au = load i64, ptr %i.b, align 8, !tbaa !33  ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_ZN4llvm11raw_ostreamlsEPKc.exit71, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit65
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !61, !nonnull !25, !align !60
  %i.ax = load ptr, ptr %6, align 8, !tbaa !18
  %i.ay = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef %i.ax, i64 noundef %i.au) #18 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !37
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !38 ; 2 uses
  %i.bd = icmp eq ptr %i.ba, %i.bc
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.be = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, ptr noundef nonnull @.str.34, i64 noundef 1) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit71

bb.n:                                             ; preds = %bb.l
  store i8 44, ptr %i.bc, align 1
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !38
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store ptr %i.bg, ptr %i.bb, align 8, !tbaa !38
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit71

_ZN4llvm11raw_ostreamlsEPKc.exit71:               ; preds = %bb.n, %bb.m, %_ZN4llvm11raw_ostreamlsEPKc.exit65
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !61, !nonnull !25, !align !60 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !37
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !38 ; 2 uses
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = icmp ult i64 %i.bo, 6
  br i1 %i.bp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit71
  %i.bq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bh, ptr noundef nonnull @.str.35, i64 noundef 6) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit74

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bl, ptr noundef nonnull align 1 dereferenceable(6) @.str.35, i64 6, i1 false)
  %i.br = load ptr, ptr %i.bk, align 8, !tbaa !38
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 6
  store ptr %i.bs, ptr %i.bk, align 8, !tbaa !38
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit74

_ZN4llvm11raw_ostreamlsEPKc.exit74:               ; preds = %bb.o, %bb.p
  %i.bt = load i8, ptr %i.ab, align 8, !tbaa !58, !range !24, !noundef !25
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.q, label %bb.x

bb.q:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit74
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !142 ; 2 uses
  %.not219 = icmp eq i32 %i.bw, 0
  br i1 %.not219, label %._crit_edge, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %bb.q
  %12 = zext i32 %i.bw to i64                     ; 2 uses
  %13 = add nuw nsw i64 %12, 2305843009213693951
  %n.vec251 = and i64 %13, 2305843009213693951
  %umin = call i64 @llvm.umin.i64(i64 %n.vec251, i64 63) ; 2 uses
  %14 = add nuw nsw i64 %umin, 1
  %15 = add nuw nsw i64 %umin, 1
  %.exit = icmp ne i64 %15, %12
  %16 = zext i1 %.exit to i64
  %17 = add nuw nsw i64 %14, %16
  br label %._crit_edge

._crit_edge:                                      ; preds = %vec.epilog.ph, %bb.q
  %spec.select = phi i64 [ 1, %bb.q ], [ %17, %vec.epilog.ph ]
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !61, !nonnull !25, !align !60 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !37
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 32 ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !38 ; 2 uses
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = icmp ult i64 %i.ce, 49
  br i1 %i.cf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge
  %i.cg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bx, ptr noundef nonnull @.str.36, i64 noundef 49) #18 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !38
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit77

bb.s:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.cb, ptr noundef nonnull align 1 dereferenceable(49) @.str.36, i64 49, i1 false)
  %i.ch = load ptr, ptr %i.ca, align 8, !tbaa !38
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 49 ; 2 uses
  store ptr %i.ci, ptr %i.ca, align 8, !tbaa !38
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit77

_ZN4llvm11raw_ostreamlsEPKc.exit77:               ; preds = %bb.r, %bb.s
  %i.cj = phi ptr [ %.pre, %bb.r ], [ %i.ci, %bb.s ] ; 2 uses
  %.0.i.i76 = phi ptr [ %i.cg, %bb.r ], [ %i.bx, %bb.s ] ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i.i76, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !37
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = icmp ult i64 %i.co, 47
  br i1 %i.cp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit77
  %i.cq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i76, ptr noundef nonnull @.str.37, i64 noundef 47) #18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit80

bb.u:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit77
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i.i76, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.cj, ptr noundef nonnull align 1 dereferenceable(47) @.str.37, i64 47, i1 false)
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !38
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 47
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !38
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit80

_ZN4llvm11raw_ostreamlsEPKc.exit80:               ; preds = %bb.t, %bb.u
  %.0.i.i79 = phi ptr [ %i.cq, %bb.t ], [ %.0.i.i76, %bb.u ]
  %i.cu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i79, i64 noundef %spec.select) #18 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !37
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 32 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !38 ; 2 uses
  %i.cz = ptrtoint ptr %i.cw to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = icmp ult i64 %i.db, 2
  br i1 %i.dc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit80
  %i.dd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.cu, ptr noundef nonnull @.str.38, i64 noundef 2) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit83

bb.w:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit80
  store i16 15906, ptr %i.cy, align 1
  %i.de = load ptr, ptr %i.cx, align 8, !tbaa !38
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 2
  store ptr %i.df, ptr %i.cx, align 8, !tbaa !38
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit83

bb.x:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit74
  %i.dg = load ptr, ptr %i.c, align 8, !tbaa !61, !nonnull !25, !align !60 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !37
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 32 ; 3 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !38 ; 2 uses
  %i.dl = ptrtoint ptr %i.di to i64
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = icmp ult i64 %i.dn, 2
  br i1 %i.do, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dg, ptr noundef nonnull @.str.39, i64 noundef 2) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit83

bb.z:                                             ; preds = %bb.x
  store i16 31522, ptr %i.dk, align 1
  %i.dq = load ptr, ptr %i.dj, align 8, !tbaa !38
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  store ptr %i.dr, ptr %i.dj, align 8, !tbaa !38
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit83

_ZN4llvm11raw_ostreamlsEPKc.exit83:               ; preds = %bb.v, %bb.w, %bb.y, %bb.z
  %i.ds = load i8, ptr %i.ab, align 8, !tbaa !58, !range !24, !noundef !25
  %i.dt = trunc nuw i8 %i.ds to i1
  %i.du = load ptr, ptr %i.c, align 8, !tbaa !61, !nonnull !25, !align !60 ; 2 uses
  br i1 %i.dt, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit83
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !143, !range !24, !noalias !144, !noundef !25
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN4llvm21SimpleNodeLabelStringINS_17MachineBasicBlockEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef %1)
  br label %_ZN4llvm14DOTGraphTraitsIPNS_18DOTMachineFuncInfoEE12getNodeLabelB5cxx11EPKNS_17MachineBasicBlockES2_.exit

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !144
  %i.dy = ptrtoint ptr %5 to i64
  call void @_ZN4llvm23CompleteNodeLabelStringINS_17MachineBasicBlockEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_NS_12function_refIFvRNS_18raw_string_ostreamERS9_EEENSB_IFvRS7_RjjEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef %1, ptr nonnull @_ZN4llvm12function_refIFvRNS_18raw_string_ostreamERKNS_17MachineBasicBlockEEE11callback_fnIZNS_14DOTGraphTraitsIPNS_18DOTMachineFuncInfoEE20getCompleteNodeLabelEPS4_SB_S7_NS0_IFvRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERjjEEEEd0_UlS2_S5_E_EEvlS2_S5_, i64 %i.dy, ptr nonnull @_ZN4llvm12function_refIFvRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERjjEE11callback_fnIS9_EEvlS7_S8_j, i64 ptrtoint (ptr @_ZN4llvm14DOTGraphTraitsIPNS_18DOTMachineFuncInfoEE12eraseCommentERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERjj to i64))
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !144
  br label %_ZN4llvm14DOTGraphTraitsIPNS_18DOTMachineFuncInfoEE12getNodeLabelB5cxx11EPKNS_17MachineBasicBlockES2_.exit

_ZN4llvm14DOTGraphTraitsIPNS_18DOTMachineFuncInfoEE12getNodeLabelB5cxx11EPKNS_17MachineBasicBlockES2_.exit: ; preds = %bb.ab, %bb.ac
  %i.dz = load ptr, ptr %7, align 8, !tbaa !18
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !33
  %i.ec = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.du, ptr noundef %i.dz, i64 noundef %i.eb) #18 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !37
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 32 ; 3 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !38 ; 2 uses
  %i.eh = ptrtoint ptr %i.ee to i64
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = icmp ult i64 %i.ej, 5
  br i1 %i.ek, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN4llvm14DOTGraphTraitsIPNS_18DOTMachineFuncInfoEE12getNodeLabelB5cxx11EPKNS_17MachineBasicBlockES2_.exit
  %i.el = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ec, ptr noundef nonnull @.str.40, i64 noundef 5) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit89

bb.ae:                                            ; preds = %_ZN4llvm14DOTGraphTraitsIPNS_18DOTMachineFuncInfoEE12getNodeLabelB5cxx11EPKNS_17MachineBasicBlockES2_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.eg, ptr noundef nonnull align 1 dereferenceable(5) @.str.40, i64 5, i1 false)
  %i.em = load ptr, ptr %i.ef, align 8, !tbaa !38
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 5
  store ptr %i.en, ptr %i.ef, align 8, !tbaa !38
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit89

_ZN4llvm11raw_ostreamlsEPKc.exit89:               ; preds = %bb.ad, %bb.ae
  %i.eo = load ptr, ptr %7, align 8, !tbaa !18    ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit89
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !19
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.es) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.ai

bb.af:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit83
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !143, !range !24, !noalias !145, !noundef !25
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @_ZN4llvm21SimpleNodeLabelStringINS_17MachineBasicBlockEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %1)
  br label %_ZN4llvm14DOTGraphTraitsIPNS_18DOTMachineFuncInfoEE12getNodeLabelB5cxx11EPKNS_17MachineBasicBlockES2_.exit90

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !145
  %i.ew = ptrtoint ptr %4 to i64
  call void @_ZN4llvm23CompleteNodeLabelStringINS_17MachineBasicBlockEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_NS_12function_refIFvRNS_18raw_string_ostreamERS9_EEENSB_IFvRS7_RjjEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %1, ptr nonnull @_ZN4llvm12function_refIFvRNS_18raw_string_ostreamERKNS_17MachineBasicBlockEEE11callback_fnIZNS_14DOTGraphTraitsIPNS_18DOTMachineFuncInfoEE20getCompleteNodeLabelEPS4_SB_S7_NS0_IFvRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERjjEEEEd0_UlS2_S5_E_EEvlS2_S5_, i64 %i.ew, ptr nonnull @_ZN4llvm12function_refIFvRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERjjEE11callback_fnIS9_EEvlS7_S8_j, i64 ptrtoint (ptr @_ZN4llvm14DOTGraphTraitsIPNS_18DOTMachineFuncInfoEE12eraseCommentERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERjj to i64))
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !145
  br label %_ZN4llvm14DOTGraphTraitsIPNS_18DOTMachineFuncInfoEE12getNodeLabelB5cxx11EPKNS_17MachineBasicBlockES2_.exit90

_ZN4llvm14DOTGraphTraitsIPNS_18DOTMachineFuncInfoEE12getNodeLabelB5cxx11EPKNS_17MachineBasicBlockES2_.exit90: ; preds = %bb.ag, %bb.ah
  call void @_ZN4llvm3DOT12EscapeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9) #18
  %i.ex = load ptr, ptr %8, align 8, !tbaa !18
  %i.ey = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !33
  %i.fa = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.du, ptr noundef %i.ex, i64 noundef %i.ez) #18 ; 0 uses
  %i.fb = load ptr, ptr %8, align 8, !tbaa !18    ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZN4llvm14DOTGraphTraitsIPNS_18DOTMachineFuncInfoEE12getNodeLabelB5cxx11EPKNS_17MachineBasicBlockES2_.exit90
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !19
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ff) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZN4llvm14DOTGraphTraitsIPNS_18DOTMachineFuncInfoEE12getNodeLabelB5cxx11EPKNS_17MachineBasicBlockES2_.exit90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  %i.fg = load ptr, ptr %9, align 8, !tbaa !18    ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !19
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fk) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.fl = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.fl, ptr %10, align 8, !tbaa !39
  %i.fm = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.fm, align 8, !tbaa !33
  store i8 0, ptr %i.fl, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 0, ptr %i.fn, align 8, !tbaa !62
  %i.fo = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i8 0, ptr %i.fo, align 8, !tbaa !63
  %i.fp = getelementptr inbounds nuw i8, ptr %11, i64 44
  store i32 1, ptr %i.fp, align 4, !tbaa !64
  %i.fq = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fq, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %11, align 8, !tbaa !10
  %i.fr = getelementptr inbounds nuw i8, ptr %11, i64 48
  store ptr %10, ptr %i.fr, align 8, !tbaa !66
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef null, i64 noundef 0, i32 noundef 0) #18
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.fu = load i8, ptr %i.ab, align 8, !tbaa !58, !range !24, !noundef !25
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.aj, label %_ZN4llvm15GraphWriterBaseIPNS_18DOTMachineFuncInfoENS_11GraphWriterIS2_EEE19getEdgeSourceLabelsERNS_11raw_ostreamEPKNS_17MachineBasicBlockE.exit

bb.aj:                                            ; preds = %bb.ai
  %i.fw = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !37
  %i.fy = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !38 ; 2 uses
  %i.ga = ptrtoint ptr %i.fx to i64
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = icmp ult i64 %i.gc, 9
  br i1 %i.gd, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ge = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str.53, i64 noundef 9) #18 ; 0 uses
  br label %_ZN4llvm15GraphWriterBaseIPNS_18DOTMachineFuncInfoENS_11GraphWriterIS2_EEE19getEdgeSourceLabelsERNS_11raw_ostreamEPKNS_17MachineBasicBlockE.exit

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.fz, ptr noundef nonnull align 1 dereferenceable(9) @.str.53, i64 9, i1 false)
  %i.gf = load ptr, ptr %i.fy, align 8, !tbaa !38
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 9
  store ptr %i.gg, ptr %i.fy, align 8, !tbaa !38
  br label %_ZN4llvm15GraphWriterBaseIPNS_18DOTMachineFuncInfoENS_11GraphWriterIS2_EEE19getEdgeSourceLabelsERNS_11raw_ostreamEPKNS_17MachineBasicBlockE.exit

_ZN4llvm15GraphWriterBaseIPNS_18DOTMachineFuncInfoENS_11GraphWriterIS2_EEE19getEdgeSourceLabelsERNS_11raw_ostreamEPKNS_17MachineBasicBlockE.exit: ; preds = %bb.ai, %bb.ak, %bb.al
  %i.gh = load i8, ptr %i.ab, align 8, !tbaa !58, !range !24, !noundef !25
  %i.gi = trunc nuw i8 %i.gh to i1
  %i.gj = load ptr, ptr %i.c, align 8, !tbaa !61, !nonnull !25, !align !60 ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !37
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 32 ; 5 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !38 ; 3 uses
  %i.go = ptrtoint ptr %i.gl to i64
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = sub i64 %i.go, %i.gp                    ; 2 uses
  br i1 %i.gi, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %_ZN4llvm15GraphWriterBaseIPNS_18DOTMachineFuncInfoENS_11GraphWriterIS2_EEE19getEdgeSourceLabelsERNS_11raw_ostreamEPKNS_17MachineBasicBlockE.exit
  %i.gr = icmp ult i64 %i.gq, 14
  br i1 %i.gr, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.gs = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.gj, ptr noundef nonnull @.str.48, i64 noundef 14) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit188

bb.ao:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.gn, ptr noundef nonnull align 1 dereferenceable(14) @.str.48, i64 14, i1 false)
  %i.gt = load ptr, ptr %i.gm, align 8, !tbaa !38
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 14
  store ptr %i.gu, ptr %i.gm, align 8, !tbaa !38
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit188

bb.ap:                                            ; preds = %_ZN4llvm15GraphWriterBaseIPNS_18DOTMachineFuncInfoENS_11GraphWriterIS2_EEE19getEdgeSourceLabelsERNS_11raw_ostreamEPKNS_17MachineBasicBlockE.exit
  %i.gv = icmp ult i64 %i.gq, 2
  br i1 %i.gv, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.gw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.gj, ptr noundef nonnull @.str.49, i64 noundef 2) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit188

bb.ar:                                            ; preds = %bb.ap
  store i16 8829, ptr %i.gn, align 1
  %i.gx = load ptr, ptr %i.gm, align 8, !tbaa !38
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 2
  store ptr %i.gy, ptr %i.gm, align 8, !tbaa !38
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit188

_ZN4llvm11raw_ostreamlsEPKc.exit188:              ; preds = %bb.ar, %bb.aq, %bb.ao, %bb.an
  %i.gz = load ptr, ptr %i.c, align 8, !tbaa !61, !nonnull !25, !align !60 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !37
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 32 ; 3 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !38 ; 2 uses
  %i.he = ptrtoint ptr %i.hb to i64
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = sub i64 %i.he, %i.hf
  %i.hh = icmp ult i64 %i.hg, 3
  br i1 %i.hh, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit188
  %i.hi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.gz, ptr noundef nonnull @.str.50, i64 noundef 3) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit194

bb.at:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.hd, ptr noundef nonnull align 1 dereferenceable(3) @.str.50, i64 3, i1 false)
  %i.hj = load ptr, ptr %i.hc, align 8, !tbaa !38
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 3
  store ptr %i.hk, ptr %i.hc, align 8, !tbaa !38
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit194

_ZN4llvm11raw_ostreamlsEPKc.exit194:              ; preds = %bb.as, %bb.at
  %i.hl = load ptr, ptr %i.fs, align 8, !tbaa !28 ; 3 uses
  %i.hm = load i32, ptr %i.ft, align 8, !tbaa !142 ; 2 uses
  %i.hn = zext i32 %i.hm to i64
  %.idx221 = shl nuw nsw i64 %i.hn, 3
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.idx221 ; 3 uses
  %.not220 = icmp eq i32 %i.hm, 0
  br i1 %.not220, label %.preheader, label %.lr.ph213

.lr.ph213:                                        ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit194
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.au

.preheader:                                       ; preds = %_ZN4llvm15GraphWriterBaseIPNS_18DOTMachineFuncInfoENS_11GraphWriterIS2_EEE9writeEdgeEPKNS_17MachineBasicBlockEjPKPS6_.exit, %_ZN4llvm11raw_ostreamlsEPKc.exit194
  %.052.lcssa = phi ptr [ %i.hl, %_ZN4llvm11raw_ostreamlsEPKc.exit194 ], [ %i.hy, %_ZN4llvm15GraphWriterBaseIPNS_18DOTMachineFuncInfoENS_11GraphWriterIS2_EEE9writeEdgeEPKNS_17MachineBasicBlockEjPKPS6_.exit ] ; 2 uses
  %.not215 = icmp eq ptr %.052.lcssa, %i.ho
  br i1 %.not215, label %._crit_edge218, label %.lr.ph217

.lr.ph217:                                        ; preds = %.preheader
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.av

bb.au:                                            ; preds = %.lr.ph213, %_ZN4llvm15GraphWriterBaseIPNS_18DOTMachineFuncInfoENS_11GraphWriterIS2_EEE9writeEdgeEPKNS_17MachineBasicBlockEjPKPS6_.exit
  %.0212 = phi i32 [ 0, %.lr.ph213 ], [ %i.hz, %_ZN4llvm15GraphWriterBaseIPNS_18DOTMachineFuncInfoENS_11GraphWriterIS2_EEE9writeEdgeEPKNS_17MachineBasicBlockEjPKPS6_.exit ]
  %.052211 = phi ptr [ %i.hl, %.lr.ph213 ], [ %i.hy, %_ZN4llvm15GraphWriterBaseIPNS_18DOTMachineFuncInfoENS_11GraphWriterIS2_EEE9writeEdgeEPKNS_17MachineBasicBlockEjPKPS6_.exit ] ; 2 uses
  %i.ht = load ptr, ptr %.052211, align 8, !tbaa !147 ; 2 uses
  %.not.i195 = icmp eq ptr %i.ht, null
  br i1 %.not.i195, label %_ZN4llvm15GraphWriterBaseIPNS_18DOTMachineFuncInfoENS_11GraphWriterIS2_EEE9writeEdgeEPKNS_17MachineBasicBlockEjPKPS6_.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr %i.hp, ptr %3, align 8, !tbaa !39, !alias.scope !148
  store i64 0, ptr %i.hq, align 8, !tbaa !33, !alias.scope !148
  store i8 0, ptr %i.hp, align 8, !tbaa !19, !alias.scope !148
  call void @_ZN4llvm15GraphWriterBaseIPNS_18DOTMachineFuncInfoENS_11GraphWriterIS2_EEE8emitEdgeEPKviS7_iRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef %1, i32 noundef -1, ptr noundef nonnull %i.ht, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.hu = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.hv = icmp eq ptr %i.hu, %i.hp
  br i1 %i.hv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.hw = load i64, ptr %i.hp, align 8, !tbaa !19
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.hu, i64 noundef %i.hx) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN4llvm15GraphWriterBaseIPNS_18DOTMachineFuncInfoENS_11GraphWriterIS2_EEE9writeEdgeEPKNS_17MachineBasicBlockEjPKPS6_.exit

_ZN4llvm15GraphWriterBaseIPNS_18DOTMachineFuncInfoENS_11GraphWriterIS2_EEE9writeEdgeEPKNS_17MachineBasicBlockEjPKPS6_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i, %bb.au
  %i.hy = getelementptr inbounds nuw i8, ptr %.052211, i64 8 ; 3 uses
  %i.hz = add nuw nsw i32 %.0212, 1               ; 2 uses
  %i.ia = icmp ne ptr %i.hy, %i.ho
  %i.ib = icmp ne i32 %i.hz, 64
  %i.ic = select i1 %i.ia, i1 %i.ib, i1 false
  br i1 %i.ic, label %bb.au, label %.preheader, !llvm.loop !137

bb.av:                                            ; preds = %.lr.ph217, %_ZN4llvm15GraphWriterBaseIPNS_18DOTMachineFuncInfoENS_11GraphWriterIS2_EEE9writeEdgeEPKNS_17MachineBasicBlockEjPKPS6_.exit201
  %.1216 = phi ptr [ %.052.lcssa, %.lr.ph217 ], [ %i.ii, %_ZN4llvm15GraphWriterBaseIPNS_18DOTMachineFuncInfoENS_11GraphWriterIS2_EEE9writeEdgeEPKNS_17MachineBasicBlockEjPKPS6_.exit201 ] ; 2 uses
  %i.id = load ptr, ptr %.1216, align 8, !tbaa !147 ; 2 uses
  %.not.i196 = icmp eq ptr %i.id, null
  br i1 %.not.i196, label %_ZN4llvm15GraphWriterBaseIPNS_18DOTMachineFuncInfoENS_11GraphWriterIS2_EEE9writeEdgeEPKNS_17MachineBasicBlockEjPKPS6_.exit201, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i197

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i197: ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr %i.hr, ptr %2, align 8, !tbaa !39, !alias.scope !149
  store i64 0, ptr %i.hs, align 8, !tbaa !33, !alias.scope !149
  store i8 0, ptr %i.hr, align 8, !tbaa !19, !alias.scope !149
  call void @_ZN4llvm15GraphWriterBaseIPNS_18DOTMachineFuncInfoENS_11GraphWriterIS2_EEE8emitEdgeEPKviS7_iRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef %1, i32 noundef -1, ptr noundef nonnull %i.id, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.ie = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.hr
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i198: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i197
  %i.ig = load i64, ptr %i.hr, align 8, !tbaa !19
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ih) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i199

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i199: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i197, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i198
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %_ZN4llvm15GraphWriterBaseIPNS_18DOTMachineFuncInfoENS_11GraphWriterIS2_EEE9writeEdgeEPKNS_17MachineBasicBlockEjPKPS6_.exit201

_ZN4llvm15GraphWriterBaseIPNS_18DOTMachineFuncInfoENS_11GraphWriterIS2_EEE9writeEdgeEPKNS_17MachineBasicBlockEjPKPS6_.exit201: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i199, %bb.av
  %i.ii = getelementptr inbounds nuw i8, ptr %.1216, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ii, %i.ho
  br i1 %.not, label %._crit_edge218, label %bb.av, !llvm.loop !140

._crit_edge218:                                   ; preds = %_ZN4llvm15GraphWriterBaseIPNS_18DOTMachineFuncInfoENS_11GraphWriterIS2_EEE9writeEdgeEPKNS_17MachineBasicBlockEjPKPS6_.exit201, %.preheader
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.ij = load ptr, ptr %10, align 8, !tbaa !18   ; 2 uses
  %i.ik = icmp eq ptr %i.ij, %i.fl
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202: ; preds = %._crit_edge218
  %i.il = load i64, ptr %i.fl, align 8, !tbaa !19
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.im) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204: ; preds = %._crit_edge218, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.in = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.io = icmp eq ptr %i.in, %i.a
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204
  %i.ip = load i64, ptr %i.a, align 8, !tbaa !19
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.iq) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm14DOTGraphTraitsIPNS_18DOTMachineFuncInfoEE12eraseCommentERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERjj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2) #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !68
  %i.b = zext i32 %i.a to i64                     ; 4 uses
  %i.c = zext i32 %2 to i64                       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !33
  %i.f = icmp samesign eq i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  store i64 %i.b, ptr %i.d, align 8, !tbaa !33
  store i8 0, ptr %i.h, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit

bb.c:                                             ; preds = %bb.a
  %gepdiff = sub nsw i64 %i.c, %i.b
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef %gepdiff) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit: ; preds = %bb.b, %bb.c
  %i.i = load i32, ptr %1, align 4, !tbaa !68
  %i.j = add i32 %i.i, -1
  store i32 %i.j, ptr %1, align 4, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm21SimpleNodeLabelStringINS_17MachineBasicBlockEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %i.b = tail call { ptr, i64 } @_ZNK4llvm17MachineBasicBlock7getNameEv(ptr noundef nonnull align 8 dereferenceable(360) %1) #18
  %i.c = extractvalue { ptr, i64 } %i.b, 1
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { ptr, i64 } @_ZNK4llvm17MachineBasicBlock7getNameEv(ptr noundef nonnull align 8 dereferenceable(360) %1) #18 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0        ; 3 uses
  %i.g = extractvalue { ptr, i64 } %i.e, 1        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %.not.i = icmp eq ptr %i.f, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !39, !alias.scope !152
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !33, !alias.scope !152
  store i8 0, ptr %i.h, align 8, !tbaa !19, !alias.scope !152
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18, !noalias !152
  store i64 %i.g, ptr %i.a, align 8, !tbaa !32, !noalias !152
  %i.j = icmp ugt i64 %i.g, 15
  br i1 %i.j, label %bb.e, label %._crit_edge.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #18 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !18, !alias.scope !152
  %i.l = load i64, ptr %i.a, align 8, !tbaa !32, !noalias !152
  store i64 %i.l, ptr %i.h, align 8, !tbaa !19, !alias.scope !152
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.e, %bb.d
  %i.m = phi ptr [ %i.k, %bb.e ], [ %i.h, %bb.d ] ; 2 uses
  switch i64 %i.g, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %i.f, align 1, !tbaa !19
  store i8 %i.n, ptr %i.m, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %i.f, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !32, !noalias !152 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !33, !alias.scope !152
  %i.q = load ptr, ptr %0, align 8, !tbaa !18, !alias.scope !152
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18, !noalias !152
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.h:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !39
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !33
  store i8 0, ptr %i.s, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !62
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 0, ptr %i.v, align 8, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 1, ptr %i.w, align 4, !tbaa !64
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %2, align 8, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %0, ptr %i.y, align 8, !tbaa !66
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef null, i64 noundef 0, i32 noundef 0) #18
  call void @_ZNK4llvm17MachineBasicBlock14printAsOperandERNS_11raw_ostreamEb(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i1 noundef zeroext false) #18
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i, %bb.c, %bb.h
  ret void
}

declare { ptr, i64 } @_ZNK4llvm17MachineBasicBlock7getNameEv(ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #4

declare void @_ZNK4llvm17MachineBasicBlock14printAsOperandERNS_11raw_ostreamEb(ptr noundef nonnull align 8 dereferenceable(360), ptr noundef nonnull align 8 dereferenceable(48), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm23CompleteNodeLabelStringINS_17MachineBasicBlockEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_NS_12function_refIFvRNS_18raw_string_ostreamERS9_EEENSB_IFvRS7_RjjEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr %2, i64 %3, ptr %4, i64 %5) local_unnamed_addr #3 comdat {
bb.a:
  %6 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.c, align 8, !tbaa !33
  store i8 0, ptr %i.b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.d, align 8, !tbaa !62
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i8 0, ptr %i.e, align 8, !tbaa !63
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 1, ptr %i.f, align 4, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %6, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %0, ptr %i.h, align 8, !tbaa !66
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef null, i64 noundef 0, i32 noundef 0) #18
  call void %2(i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(360) %1) #18, !inline_history !153
  %i.i = load ptr, ptr %0, align 8, !tbaa !18
  %i.j = load i8, ptr %i.i, align 1, !tbaa !19
  %i.k = icmp eq i8 %i.j, 37
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 1) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext 10, i64 noundef 0) #18
  %i.m = add i64 %i.l, 1                          ; 3 uses
  %i.n = load i64, ptr %i.c, align 8, !tbaa !33   ; 2 uses
  %i.o = icmp ugt i64 %i.m, %i.n
  br i1 %i.o, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i64 noundef %i.m, i64 noundef %i.n) #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit: ; preds = %bb.c
  %i.p = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.m, i64 noundef 0, ptr noundef nonnull @.str.51, i64 noundef 2) #18 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !68
  %i.q = load i64, ptr %i.c, align 8, !tbaa !33   ; 2 uses
  %.not23 = icmp eq i64 %i.q, 0
  br i1 %.not23, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !18
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %i.r = phi ptr [ %i.ao, %bb.k ], [ %.pre, %.lr.ph.preheader ]
  %i.s = phi i64 [ %i.au, %bb.k ], [ %i.q, %.lr.ph.preheader ] ; 2 uses
  %i.t = phi i64 [ %i.at, %bb.k ], [ 0, %.lr.ph.preheader ]
  %.026 = phi i32 [ %.1, %bb.k ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.0825 = phi i32 [ %spec.select11, %bb.k ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %storemerge24 = phi i32 [ %i.as, %bb.k ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !19
  switch i8 %i.v, label %bb.g [
    i8 10, label %bb.e
    i8 59, label %bb.f
  ]

bb.e:                                             ; preds = %.lr.ph
  store i8 92, ptr %i.u, align 1, !tbaa !19
  %i.w = load i32, ptr %i.a, align 4, !tbaa !68
  %i.x = zext i32 %i.w to i64
  %i.y = add nuw nsw i64 %i.x, 1
  %i.z = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.y, i64 noundef 0, i64 noundef 1, i8 noundef signext 108) #18 ; 0 uses
  br label %bb.k

bb.f:                                             ; preds = %.lr.ph
  %i.aa = add i32 %storemerge24, 1
  %i.ab = zext i32 %i.aa to i64
  %i.ac = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext 10, i64 noundef %i.ab) #18
  %i.ad = trunc i64 %i.ac to i32
  call void %4(i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.ad) #18, !inline_history !154
  br label %bb.k

bb.g:                                             ; preds = %.lr.ph
  %i.ae = icmp eq i32 %.026, 80
  br i1 %i.ae, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not10 = icmp eq i32 %.0825, 0
  %spec.select = select i1 %.not10, i32 %storemerge24, i32 %.0825 ; 2 uses
  %i.af = zext i32 %spec.select to i64            ; 3 uses
  %i.ag = icmp ult i64 %i.s, %i.af
  br i1 %i.ag, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit12

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i64 noundef %i.af, i64 noundef %i.s) #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit12: ; preds = %bb.h
  %i.ah = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.af, i64 noundef 0, ptr noundef nonnull @.str.52, i64 noundef 5) #18 ; 0 uses
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !68  ; 2 uses
  %i.aj = sub i32 %i.ai, %spec.select
  %i.ak = add i32 %i.ai, 3
  store i32 %i.ak, ptr %i.a, align 4, !tbaa !68
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.al = add i32 %.026, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit12, %bb.e
  %.2 = phi i32 [ 0, %bb.e ], [ %.0825, %bb.f ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit12 ], [ %.0825, %bb.j ]
  %.1 = phi i32 [ 0, %bb.e ], [ %.026, %bb.f ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit12 ], [ %i.al, %bb.j ]
  %i.am = load i32, ptr %i.a, align 4, !tbaa !68  ; 3 uses
  %i.an = zext i32 %i.am to i64
  %i.ao = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !19
  %i.ar = icmp eq i8 %i.aq, 32
  %spec.select11 = select i1 %i.ar, i32 %i.am, i32 %.2
  %i.as = add i32 %i.am, 1                        ; 3 uses
  store i32 %i.as, ptr %i.a, align 4, !tbaa !68
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = load i64, ptr %i.c, align 8, !tbaa !33  ; 2 uses
  %.not = icmp eq i64 %i.au, %i.at
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !155
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #8

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRNS_18raw_string_ostreamERKNS_17MachineBasicBlockEEE11callback_fnIZNS_14DOTGraphTraitsIPNS_18DOTMachineFuncInfoEE20getCompleteNodeLabelEPS4_SB_S7_NS0_IFvRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERjjEEEEd0_UlS2_S5_E_EEvlS2_S5_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) #3 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvmlsERNS_11raw_ostreamERKNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) #18 ; 0 uses
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvmlsERNS_11raw_ostreamERKNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERjjEE11callback_fnIS9_EEvlS7_S8_j(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3) #3 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  tail call void %i.a(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3) #18
  ret void
}

declare void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15GraphWriterBaseIPNS_18DOTMachineFuncInfoENS_11GraphWriterIS2_EEE8emitEdgeEPKviS7_iRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %2, 64
  br i1 %i.a, label %_ZN4llvm11raw_ostreamlsEPKc.exit24, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61, !nonnull !25, !align !60 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38   ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ult i64 %i.j, 5
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull @.str.30, i64 noundef 5) #18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.g, ptr noundef nonnull align 1 dereferenceable(5) @.str.30, i64 5, i1 false)
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 5
  store ptr %i.n, ptr %i.f, align 8, !tbaa !38
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.l, %bb.c ], [ %i.c, %bb.d ]
  %i.o = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %1) #18 ; 0 uses
  %i.p = icmp sgt i32 %2, -1
  br i1 %i.p, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !61, !nonnull !25, !align !60 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !38   ; 2 uses
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ult i64 %i.x, 2
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull @.str.58, i64 noundef 2) #18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit9

bb.g:                                             ; preds = %bb.e
  store i16 29498, ptr %i.u, align 1
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !38
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  store ptr %i.ab, ptr %i.t, align 8, !tbaa !38
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit9

_ZN4llvm11raw_ostreamlsEPKc.exit9:                ; preds = %bb.f, %bb.g
  %.0.i.i8 = phi ptr [ %i.z, %bb.f ], [ %i.q, %bb.g ]
  %i.ac = zext nneg i32 %2 to i64
  %i.ad = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i8, i64 noundef %i.ac) #18 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit9, %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !61, !nonnull !25, !align !60 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !37
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !38 ; 2 uses
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = icmp ult i64 %i.al, 8
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull @.str.59, i64 noundef 8) #18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit12

bb.j:                                             ; preds = %bb.h
  store i64 7306086876840865056, ptr %i.ai, align 1
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !38
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ap, ptr %i.ah, align 8, !tbaa !38
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit12

_ZN4llvm11raw_ostreamlsEPKc.exit12:               ; preds = %bb.i, %bb.j
  %.0.i.i11 = phi ptr [ %i.an, %bb.i ], [ %i.ae, %bb.j ]
  %i.aq = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i11, ptr noundef %3) #18 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !33
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_ZN4llvm11raw_ostreamlsEPKc.exit21, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit12
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !61, !nonnull !25, !align !60 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !37
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !38 ; 2 uses
  %i.az = icmp eq ptr %i.aw, %i.ay
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ba = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.au, ptr noundef nonnull @.str.61, i64 noundef 1) #18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit18

bb.m:                                             ; preds = %bb.k
  store i8 91, ptr %i.ay, align 1
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !38
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store ptr %i.bc, ptr %i.ax, align 8, !tbaa !38
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit18

_ZN4llvm11raw_ostreamlsEPKc.exit18:               ; preds = %bb.l, %bb.m
  %.0.i.i17 = phi ptr [ %i.ba, %bb.l ], [ %i.au, %bb.m ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !18
  %i.be = load i64, ptr %i.ar, align 8, !tbaa !33
  %i.bf = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i17, ptr noundef %i.bd, i64 noundef %i.be) #18 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !37
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 32 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !38 ; 2 uses
  %i.bk = icmp eq ptr %i.bh, %i.bj
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit18
  %i.bl = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bf, ptr noundef nonnull @.str.62, i64 noundef 1) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit21

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit18
  store i8 93, ptr %i.bj, align 1
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !38
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  store ptr %i.bn, ptr %i.bi, align 8, !tbaa !38
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit21

_ZN4llvm11raw_ostreamlsEPKc.exit21:               ; preds = %bb.o, %bb.n, %_ZN4llvm11raw_ostreamlsEPKc.exit12
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !61, !nonnull !25, !align !60 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !37
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 32 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !38 ; 2 uses
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = icmp ult i64 %i.bv, 2
  br i1 %i.bw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit21
  %i.bx = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bo, ptr noundef nonnull @.str.63, i64 noundef 2) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit24

bb.q:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit21
  store i16 2619, ptr %i.bs, align 1
  %i.by = load ptr, ptr %i.br, align 8, !tbaa !38
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  store ptr %i.bz, ptr %i.br, align 8, !tbaa !38
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit24

_ZN4llvm11raw_ostreamlsEPKc.exit24:               ; preds = %bb.q, %bb.p, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #4

declare void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef) unnamed_addr #4

declare void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120), ptr, i64) local_unnamed_addr #4

declare void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !69, !range !24, !noundef !25
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !69, !range !24, !noundef !25
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !24
  %i.j = load i8, ptr %i.d, align 8, !range !24
  %i.k = icmp eq i8 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @__once_proxy() #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv() #1 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158, !nonnull !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !159, !nonnull !25, !align !60
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !162
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(160) %i.f) #18, !inline_history !156
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_MachineCFGPrinter.cpp() #13 section ".text.startup" {
bb.a:
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL12MCFGFuncNameB5cxx11, i32 noundef 0, i32 noundef 0) #18
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL12MCFGFuncNameB5cxx11, i64 136), ptr getelementptr inbounds nuw (i8, ptr @_ZL12MCFGFuncNameB5cxx11, i64 120), align 8, !tbaa !39
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL12MCFGFuncNameB5cxx11, i64 128), align 8, !tbaa !33
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL12MCFGFuncNameB5cxx11, i64 136), align 8, !tbaa !19
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL12MCFGFuncNameB5cxx11, i64 176), ptr getelementptr inbounds nuw (i8, ptr @_ZL12MCFGFuncNameB5cxx11, i64 160), align 8, !tbaa !39
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL12MCFGFuncNameB5cxx11, i64 168), align 8, !tbaa !33
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL12MCFGFuncNameB5cxx11, i64 176), align 8, !tbaa !19
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL12MCFGFuncNameB5cxx11, i64 192), align 8, !tbaa !52
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL12MCFGFuncNameB5cxx11, i64 152), align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserIS7_EEEE, i64 16), ptr @_ZL12MCFGFuncNameB5cxx11, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL12MCFGFuncNameB5cxx11, i64 200), align 8, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL12MCFGFuncNameB5cxx11, i64 208), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(240) @_ZL12MCFGFuncNameB5cxx11, ptr nonnull align 1 dereferenceable(15) @.str, i64 14) #18
  %i.a = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL12MCFGFuncNameB5cxx11, i64 10), align 2
  %i.b = and i16 %i.a, -97
  %i.c = or disjoint i16 %i.b, 32
  store i16 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZL12MCFGFuncNameB5cxx11, i64 10), align 2
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZL12MCFGFuncNameB5cxx11, i64 32), align 8, !tbaa !31
  store i64 70, ptr getelementptr inbounds nuw (i8, ptr @_ZL12MCFGFuncNameB5cxx11, i64 40), align 8, !tbaa !32
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(240) @_ZL12MCFGFuncNameB5cxx11) #18
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserIS7_EEED2Ev, ptr nonnull @_ZL12MCFGFuncNameB5cxx11, ptr nonnull @__dso_handle) #18 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL21MCFGDotFilenamePrefixB5cxx11, i32 noundef 0, i32 noundef 0) #18
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL21MCFGDotFilenamePrefixB5cxx11, i64 136), ptr getelementptr inbounds nuw (i8, ptr @_ZL21MCFGDotFilenamePrefixB5cxx11, i64 120), align 8, !tbaa !39
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL21MCFGDotFilenamePrefixB5cxx11, i64 128), align 8, !tbaa !33
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL21MCFGDotFilenamePrefixB5cxx11, i64 136), align 8, !tbaa !19
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL21MCFGDotFilenamePrefixB5cxx11, i64 176), ptr getelementptr inbounds nuw (i8, ptr @_ZL21MCFGDotFilenamePrefixB5cxx11, i64 160), align 8, !tbaa !39
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL21MCFGDotFilenamePrefixB5cxx11, i64 168), align 8, !tbaa !33
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL21MCFGDotFilenamePrefixB5cxx11, i64 176), align 8, !tbaa !19
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL21MCFGDotFilenamePrefixB5cxx11, i64 192), align 8, !tbaa !52
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL21MCFGDotFilenamePrefixB5cxx11, i64 152), align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserIS7_EEEE, i64 16), ptr @_ZL21MCFGDotFilenamePrefixB5cxx11, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL21MCFGDotFilenamePrefixB5cxx11, i64 200), align 8, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL21MCFGDotFilenamePrefixB5cxx11, i64 208), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(240) @_ZL21MCFGDotFilenamePrefixB5cxx11, ptr nonnull align 1 dereferenceable(25) @.str.3, i64 24) #18
  %i.e = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL21MCFGDotFilenamePrefixB5cxx11, i64 10), align 2
  %i.f = and i16 %i.e, -97
  %i.g = or disjoint i16 %i.f, 32
  store i16 %i.g, ptr getelementptr inbounds nuw (i8, ptr @_ZL21MCFGDotFilenamePrefixB5cxx11, i64 10), align 2
  store ptr @.str.4, ptr getelementptr inbounds nuw (i8, ptr @_ZL21MCFGDotFilenamePrefixB5cxx11, i64 32), align 8, !tbaa !31
  store i64 51, ptr getelementptr inbounds nuw (i8, ptr @_ZL21MCFGDotFilenamePrefixB5cxx11, i64 40), align 8, !tbaa !32
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(240) @_ZL21MCFGDotFilenamePrefixB5cxx11) #18
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserIS7_EEED2Ev, ptr nonnull @_ZL21MCFGDotFilenamePrefixB5cxx11, ptr nonnull @__dso_handle) #18 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL7CFGOnly, i32 noundef 0, i32 noundef 0) #18
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL7CFGOnly, i64 120), align 8, !tbaa !50
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL7CFGOnly, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL7CFGOnly, i64 128), align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL7CFGOnly, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL7CFGOnly, i64 144), align 8, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL7CFGOnly, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL7CFGOnly, ptr nonnull align 1 dereferenceable(14) @.str.6, i64 13) #18
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL7CFGOnly, i64 120), align 8, !tbaa !50
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL7CFGOnly, i64 137), align 1, !tbaa !69
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL7CFGOnly, i64 136), align 8, !tbaa !163
  %i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL7CFGOnly, i64 10), align 2
  %i.j = and i16 %i.i, -97
  %i.k = or disjoint i16 %i.j, 32
  store i16 %i.k, ptr getelementptr inbounds nuw (i8, ptr @_ZL7CFGOnly, i64 10), align 2
  store ptr @.str.7, ptr getelementptr inbounds nuw (i8, ptr @_ZL7CFGOnly, i64 32), align 8, !tbaa !31
  store i64 38, ptr getelementptr inbounds nuw (i8, ptr @_ZL7CFGOnly, i64 40), align 8, !tbaa !32
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL7CFGOnly) #18
  %i.l = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL7CFGOnly, ptr nonnull @__dso_handle) #18 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { builtin nounwind allocsize(0) }
attributes #22 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"_ZTSSt14_Function_base", !5, i64 0, !11, i64 16}
!13 = !{!12, !11, i64 16}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !16, i64 8, !5, i64 16}
!18 = !{!17, !14, i64 0}
!19 = !{!5, !5, i64 0}
!20 = !{!"any p2 pointer", !11, i64 0}
!21 = !{!"bool", !5, i64 0}
!22 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !20, i64 0, !6, i64 8, !6, i64 12, !21, i64 16}
!23 = !{!22, !21, i64 16}
!24 = !{i8 0, i8 2}
!25 = !{}
!26 = !{!22, !20, i64 0}
!27 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !11, i64 0, !6, i64 8, !6, i64 12}
!28 = !{!27, !11, i64 0}
!29 = !{!11, !11, i64 0}
!30 = !{!"p1 _ZTSSt17reference_wrapperIN4llvm12PassRegistryEE", !11, i64 0}
!31 = !{!14, !14, i64 0}
!32 = !{!16, !16, i64 0}
!33 = !{!17, !16, i64 8}
!34 = !{!"_ZTSN4llvm11raw_ostream11OStreamKindE", !5, i64 0}
!35 = !{!"_ZTSN4llvm11raw_ostream10BufferKindE", !5, i64 0}
!36 = !{!"_ZTSN4llvm11raw_ostreamE", !34, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !21, i64 40, !35, i64 44}
!37 = !{!36, !14, i64 24}
!38 = !{!36, !14, i64 32}
!39 = !{!15, !14, i64 0}
!40 = !{!"p1 _ZTSN4llvm15MachineFunctionE", !11, i64 0}
!41 = !{!"_ZTSN4llvm18DOTMachineFuncInfoE", !40, i64 0}
!42 = !{!41, !40, i64 0}
!43 = !{!"p1 _ZTSN4llvm18DOTMachineFuncInfoE", !11, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"_ZTSN4llvm2cl18GenericOptionValueE"}
!46 = !{!"_ZTSN4llvm2cl15OptionValueCopyIbEE", !45, i64 0, !21, i64 8, !21, i64 9}
!47 = !{!"_ZTSN4llvm2cl15OptionValueBaseIbLb0EEE", !46, i64 0}
!48 = !{!"_ZTSN4llvm2cl11OptionValueIbEE", !47, i64 0}
!49 = !{!"_ZTSN4llvm2cl11opt_storageIbLb0ELb0EEE", !21, i64 0, !48, i64 8}
!50 = !{!49, !21, i64 0}
!51 = !{!"_ZTSN4llvm2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !45, i64 0, !17, i64 8, !21, i64 40}
!52 = !{!51, !21, i64 40}
!53 = !{!"p1 _ZTSN4llvm11raw_ostreamE", !11, i64 0}
!54 = !{!"p2 _ZTSN4llvm18DOTMachineFuncInfoE", !20, i64 0}
!55 = !{!"_ZTSN4llvm21DefaultDOTGraphTraitsE", !21, i64 0}
!56 = !{!"_ZTSN4llvm14DOTGraphTraitsIPNS_18DOTMachineFuncInfoEEE", !55, i64 0}
!57 = !{!"_ZTSN4llvm15GraphWriterBaseIPNS_18DOTMachineFuncInfoENS_11GraphWriterIS2_EEEE", !53, i64 8, !54, i64 16, !21, i64 24, !56, i64 25}
!58 = !{!57, !21, i64 24}
!59 = !{!57, !54, i64 16}
!60 = !{i64 8}
!61 = !{!57, !53, i64 8}
!62 = !{!36, !34, i64 8}
!63 = !{!36, !21, i64 40}
!64 = !{!36, !35, i64 44}
!65 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!6, !6, i64 0}
!69 = !{!46, !21, i64 9}
!70 = !{!30, !30, i64 0}
!71 = !{!"_ZTSN4llvm9StringRefE", !14, i64 0, !16, i64 8}
!72 = !{!"_ZTSN4llvm8PassInfoE", !71, i64 0, !71, i64 16, !11, i64 32, !21, i64 40, !21, i64 41, !11, i64 48}
!73 = !{!72, !11, i64 32}
!74 = !{!72, !21, i64 40}
!75 = !{!72, !21, i64 41}
!76 = !{!72, !11, i64 48}
!77 = !{!22, !6, i64 8}
!78 = !{!22, !6, i64 12}
!79 = distinct !{!79, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!80 = distinct !{!80, !79, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!81 = distinct !{!81, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!82 = distinct !{!82, !81, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!83 = distinct !{!83, i1 true, !"_ZN4llvmplERKNS_5TwineES2_"}
!84 = distinct !{!84, !83, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!85 = distinct !{!85, i1 true, !"_ZNK4llvm5Twine6concatERKS0_"}
!86 = distinct !{!86, !85, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!87 = distinct !{!87, i1 true, !"_ZN4llvmplERKNS_5TwineES2_"}
!88 = distinct !{!88, !87, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!89 = distinct !{!89, i1 true, !"_ZNK4llvm5Twine6concatERKS0_"}
!90 = distinct !{!90, !89, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!91 = !{!80}
!92 = !{!82, !80}
!93 = !{!86, !84}
!94 = !{!"_ZTSN4llvm5Twine8NodeKindE", !5, i64 0}
!95 = !{!"_ZTSN4llvm5TwineE", !5, i64 0, !5, i64 16, !94, i64 32, !94, i64 33}
!96 = !{!95, !94, i64 32}
!97 = !{!95, !94, i64 33}
!98 = !{!90, !88}
!99 = !{!"p1 _ZTSNSt3_V214error_categoryE", !11, i64 0}
!100 = !{!"_ZTSSt10error_code", !6, i64 0, !99, i64 8}
!101 = !{!100, !6, i64 0}
!102 = !{!100, !99, i64 8}
!103 = !{!"p1 _ZTSN4llvm16AnalysisResolverE", !11, i64 0}
!104 = !{!"_ZTSN4llvm8PassKindE", !5, i64 0}
!105 = !{!"_ZTSN4llvm4PassE", !103, i64 8, !11, i64 16, !104, i64 24}
!106 = !{!105, !103, i64 8}
!107 = !{!105, !11, i64 16}
!108 = !{!105, !104, i64 24}
!109 = distinct !{!109, i1 true, !"_ZN4llvm5nodesIPNS_18DOTMachineFuncInfoEEENS_14iterator_rangeINS_11GraphTraitsIT_E14nodes_iteratorEEERKS5_"}
!110 = distinct !{!110, !109, !"_ZN4llvm5nodesIPNS_18DOTMachineFuncInfoEEENS_14iterator_rangeINS_11GraphTraitsIT_E14nodes_iteratorEEERKS5_: argument 0"}
!111 = !{!53, !53, i64 0}
!112 = !{!54, !54, i64 0}
!113 = !{!110}
!114 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0EvEE", !11, i64 0}
!115 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0EvEELb0EEE", !114, i64 0, !114, i64 8}
!116 = !{!115, !114, i64 8}
!117 = distinct !{!117, i1 true, !"_ZN4llvm21DefaultDOTGraphTraits18getGraphPropertiesIPNS_18DOTMachineFuncInfoEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_"}
!118 = distinct !{!118, !117, !"_ZN4llvm21DefaultDOTGraphTraits18getGraphPropertiesIPNS_18DOTMachineFuncInfoEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_: argument 0"}
!119 = !{!118}
!120 = distinct !{!120, i1 true, !"_ZNK4llvm9StringRef3strB5cxx11Ev"}
!121 = distinct !{!121, !120, !"_ZNK4llvm9StringRef3strB5cxx11Ev: argument 0"}
!122 = distinct !{!122, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!123 = distinct !{!123, !122, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!124 = distinct !{!124, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!125 = distinct !{!125, !124, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!126 = !{!121}
!127 = !{!123}
!128 = !{!125}
!129 = distinct !{!129, i1 true, !"_ZN4llvm21DefaultDOTGraphTraits17getNodeAttributesIPNS_18DOTMachineFuncInfoEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvRKT_"}
!130 = distinct !{!130, !129, !"_ZN4llvm21DefaultDOTGraphTraits17getNodeAttributesIPNS_18DOTMachineFuncInfoEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvRKT_: argument 0"}
!131 = distinct !{!131, i1 true, !"_ZN4llvm14DOTGraphTraitsIPNS_18DOTMachineFuncInfoEE12getNodeLabelB5cxx11EPKNS_17MachineBasicBlockES2_"}
!132 = distinct !{!132, !131, !"_ZN4llvm14DOTGraphTraitsIPNS_18DOTMachineFuncInfoEE12getNodeLabelB5cxx11EPKNS_17MachineBasicBlockES2_: argument 0"}
!133 = distinct !{!133, i1 true, !"_ZN4llvm14DOTGraphTraitsIPNS_18DOTMachineFuncInfoEE12getNodeLabelB5cxx11EPKNS_17MachineBasicBlockES2_"}
!134 = distinct !{!134, !133, !"_ZN4llvm14DOTGraphTraitsIPNS_18DOTMachineFuncInfoEE12getNodeLabelB5cxx11EPKNS_17MachineBasicBlockES2_: argument 0"}
!135 = distinct !{!135, i1 true, !"_ZN4llvm21DefaultDOTGraphTraits17getEdgeAttributesIPKPNS_17MachineBasicBlockEPNS_18DOTMachineFuncInfoEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvT_RKT0_"}
!136 = distinct !{!136, !135, !"_ZN4llvm21DefaultDOTGraphTraits17getEdgeAttributesIPKPNS_17MachineBasicBlockEPNS_18DOTMachineFuncInfoEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvT_RKT0_: argument 0"}
!137 = distinct !{!137, !67}
!138 = distinct !{!138, i1 true, !"_ZN4llvm21DefaultDOTGraphTraits17getEdgeAttributesIPKPNS_17MachineBasicBlockEPNS_18DOTMachineFuncInfoEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvT_RKT0_"}
!139 = distinct !{!139, !138, !"_ZN4llvm21DefaultDOTGraphTraits17getEdgeAttributesIPKPNS_17MachineBasicBlockEPNS_18DOTMachineFuncInfoEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvT_RKT0_: argument 0"}
!140 = distinct !{!140, !67}
!141 = !{!130}
!142 = !{!27, !6, i64 8}
!143 = !{!55, !21, i64 0}
!144 = !{!132}
!145 = !{!134}
!146 = !{!"p1 _ZTSN4llvm17MachineBasicBlockE", !11, i64 0}
!147 = !{!146, !146, i64 0}
!148 = !{!136}
!149 = !{!139}
!150 = distinct !{!150, i1 true, !"_ZNK4llvm9StringRef3strB5cxx11Ev"}
!151 = distinct !{!151, !150, !"_ZNK4llvm9StringRef3strB5cxx11Ev: argument 0"}
!152 = !{!151}
!153 = distinct !{null}
!154 = distinct !{null}
!155 = distinct !{!155, !67}
!156 = distinct !{null, null, null, null}
!157 = !{!"_ZTSZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS1_EEEvRSt9once_flagOT_DpOT0_EUlvE_", !11, i64 0, !30, i64 8}
!158 = !{!157, !11, i64 0}
!159 = !{!157, !30, i64 8}
!160 = !{!"p1 _ZTSN4llvm12PassRegistryE", !11, i64 0}
!161 = !{!"_ZTSSt17reference_wrapperIN4llvm12PassRegistryEE", !160, i64 0}
!162 = !{!161, !160, i64 0}
!163 = !{!46, !21, i64 8}
end_hunk_0
