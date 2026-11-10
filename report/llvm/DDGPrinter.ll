Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DDGPrinter?download=true
inline.NumInlined: 828
inline.NumDeleted: 393
begin_hunk_0_@_ZN4llvm15GraphWriterBaseIPKNS_19DataDependenceGraphENS_11GraphWriterIS3_EEE11writeHeaderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit46
  %i.fq = load i64, ptr %i.fo, align 8, !tbaa !29
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fr) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE12getGraphNameB5cxx11ES3_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !38   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !39
  %i.g = icmp eq ptr %i.c, null
  %i.h = icmp ne i64 %i.e, 0
  %or.cond.i.i.i = and i1 %i.g, %i.h
  br i1 %or.cond.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.35) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.e, ptr %i.a, align 8, !tbaa !77
  %i.i = icmp ugt i64 %i.e, 15
  br i1 %i.i, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #18 ; 2 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !28
  %i.k = load i64, ptr %i.a, align 8, !tbaa !77
  store i64 %i.k, ptr %i.f, align 8, !tbaa !29
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %bb.c
  %i.l = phi ptr [ %i.j, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  switch i64 %i.e, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %i.c, align 1, !tbaa !29
  store i8 %i.m, ptr %i.l, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.e, %bb.f
  %i.n = load i64, ptr %i.a, align 8, !tbaa !77   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !38
  %i.p = load ptr, ptr %4, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.r = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.31, i64 noundef 9) #18, !noalias !141 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.s, ptr %3, align 8, !tbaa !39, !alias.scope !141
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !28   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 7 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.thread, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !38   ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.x, ptr %i.ab, align 8, !tbaa !38, !alias.scope !141
  store ptr %i.u, ptr %i.r, align 8, !tbaa !28
  store i64 0, ptr %i.aa, align 8, !tbaa !38
  store i8 0, ptr %i.u, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  store ptr %i.t, ptr %3, align 8, !tbaa !28, !alias.scope !141
  %i.ac = load i64, ptr %i.u, align 8, !tbaa !29
  store i64 %i.ac, ptr %i.s, align 8, !tbaa !29, !alias.scope !141
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !38 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.pre.i, ptr %i.ae, align 8, !tbaa !38, !alias.scope !141
  store ptr %i.u, ptr %i.r, align 8, !tbaa !28
  store i64 0, ptr %i.ad, align 8, !tbaa !38
  store i8 0, ptr %i.u, align 8, !tbaa !29
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.af = icmp eq i64 %.pre.i, 4611686018427387903
  br i1 %i.af, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.g:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #20, !noalias !142
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.thread, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.ag = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.32, i64 noundef 1) #18, !noalias !142 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !39, !alias.scope !142
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !28 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !38 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.ai, ptr %0, align 8, !tbaa !28, !alias.scope !142
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !29
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !29, !alias.scope !142
  %.phi.trans.insert.i2 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.pre.i3 = load i64, ptr %.phi.trans.insert.i2, align 8, !tbaa !38
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.aq = phi i64 [ %i.am, %bb.h ], [ %.pre.i3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !38, !alias.scope !142
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !28
  store i64 0, ptr %i.ar, align 8, !tbaa !38
  store i8 0, ptr %i.aj, align 8, !tbaa !29
  %i.at = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.s
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.av = load i64, ptr %i.s, align 8, !tbaa !29
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.ax = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.f
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.az = load i64, ptr %i.f, align 8, !tbaa !29
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void
}

declare void @_ZN4llvm3DOT12EscapeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15GraphWriterBaseIPKNS_19DataDependenceGraphENS_11GraphWriterIS3_EEE9writeNodeEPKNS_7DDGNodeE(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.llvm::raw_string_ostream", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load i32, ptr %i.d, align 8, !tbaa !70, !noalias !155
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !39, !alias.scope !155
  switch i32 %i.e, label %._crit_edge.i.i3.i [
    i32 3, label %._crit_edge.i.i.i
    i32 2, label %._crit_edge.i.i1.i
  ]

._crit_edge.i.i.i:                                ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18, !noalias !155
  store i64 86, ptr %i.b, align 8, !tbaa !77, !noalias !155
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #18 ; 3 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !28, !alias.scope !155
  %i.h = load i64, ptr %i.b, align 8, !tbaa !77, !noalias !155 ; 3 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !29, !alias.scope !155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(86) %i.g, ptr noundef nonnull align 1 dereferenceable(86) @.str.6, i64 86, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !38, !alias.scope !155
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  store i8 0, ptr %i.j, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18, !noalias !155
  br label %_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE17getNodeAttributesB5cxx11EPKNS_7DDGNodeES3_.exit

._crit_edge.i.i1.i:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18, !noalias !155
  store i64 33, ptr %i.a, align 8, !tbaa !77, !noalias !155
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #18 ; 3 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !28, !alias.scope !155
  %i.l = load i64, ptr %i.a, align 8, !tbaa !77, !noalias !155 ; 3 uses
  store i64 %i.l, ptr %i.f, align 8, !tbaa !29, !alias.scope !155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.k, ptr noundef nonnull align 1 dereferenceable(33) @.str.7, i64 33, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !38, !alias.scope !155
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  store i8 0, ptr %i.n, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18, !noalias !155
  br label %_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE17getNodeAttributesB5cxx11EPKNS_7DDGNodeES3_.exit

._crit_edge.i.i3.i:                               ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !38, !alias.scope !155
  store i8 0, ptr %i.f, align 8, !tbaa !29, !alias.scope !155
  br label %_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE17getNodeAttributesB5cxx11EPKNS_7DDGNodeES3_.exit

_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE17getNodeAttributesB5cxx11EPKNS_7DDGNodeES3_.exit: ; preds = %._crit_edge.i.i.i, %._crit_edge.i.i1.i, %._crit_edge.i.i3.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !94, !nonnull !20, !align !76 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !43
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !44   ; 2 uses
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ult i64 %i.x, 5
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE17getNodeAttributesB5cxx11EPKNS_7DDGNodeES3_.exit
  %i.z = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull @.str.36, i64 noundef 5) #18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE17getNodeAttributesB5cxx11EPKNS_7DDGNodeES3_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.u, ptr noundef nonnull align 1 dereferenceable(5) @.str.36, i64 5, i1 false)
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !44
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 5
  store ptr %i.ab, ptr %i.t, align 8, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.z, %bb.b ], [ %i.q, %bb.c ]
  %i.ac = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef nonnull %1) #18 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !44 ; 2 uses
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = icmp ult i64 %i.aj, 8
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.al = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef nonnull @.str.37, i64 noundef 8) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit45

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i64 4424065772627909408, ptr %i.ag, align 1
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !44
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.an, ptr %i.af, align 8, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit45

_ZN4llvm11raw_ostreamlsEPKc.exit45:               ; preds = %bb.d, %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !50, !range !19, !noundef !20
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = load ptr, ptr %i.p, align 8, !tbaa !94, !nonnull !20, !align !76 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !43
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 5 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !44 ; 3 uses
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 2 uses
  br i1 %i.aq, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit45
  %i.az = icmp ult i64 %i.ay, 5
  br i1 %i.az, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ba = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef nonnull @.str.38, i64 noundef 5) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit48

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.av, ptr noundef nonnull align 1 dereferenceable(5) @.str.38, i64 5, i1 false)
  %i.bb = load ptr, ptr %i.au, align 8, !tbaa !44
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 5
  store ptr %i.bc, ptr %i.au, align 8, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit48

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit45
  %i.bd = icmp ult i64 %i.ay, 7
  br i1 %i.bd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.be = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef nonnull @.str.39, i64 noundef 7) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit48

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.av, ptr noundef nonnull align 1 dereferenceable(7) @.str.39, i64 7, i1 false)
  %i.bf = load ptr, ptr %i.au, align 8, !tbaa !44
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 7
  store ptr %i.bg, ptr %i.au, align 8, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit48

_ZN4llvm11raw_ostreamlsEPKc.exit48:               ; preds = %bb.k, %bb.j, %bb.h, %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !38 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_ZN4llvm11raw_ostreamlsEPKc.exit54, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit48
  %i.bk = load ptr, ptr %i.p, align 8, !tbaa !94, !nonnull !20, !align !76
  %i.bl = load ptr, ptr %4, align 8, !tbaa !28
  %i.bm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bk, ptr noundef %i.bl, i64 noundef %i.bi) #18 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !43
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 32 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !44 ; 2 uses
  %i.br = icmp eq ptr %i.bo, %i.bq
  br i1 %i.br, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bs = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bm, ptr noundef nonnull @.str.40, i64 noundef 1) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit54

bb.n:                                             ; preds = %bb.l
  store i8 44, ptr %i.bq, align 1
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !44
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  store ptr %i.bu, ptr %i.bp, align 8, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit54

_ZN4llvm11raw_ostreamlsEPKc.exit54:               ; preds = %bb.n, %bb.m, %_ZN4llvm11raw_ostreamlsEPKc.exit48
  %i.bv = load ptr, ptr %i.p, align 8, !tbaa !94, !nonnull !20, !align !76 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !43
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 32 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !44 ; 2 uses
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = icmp ult i64 %i.cc, 6
  br i1 %i.cd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit54
  %i.ce = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bv, ptr noundef nonnull @.str.41, i64 noundef 6) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit57

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bz, ptr noundef nonnull align 1 dereferenceable(6) @.str.41, i64 6, i1 false)
  %i.cf = load ptr, ptr %i.by, align 8, !tbaa !44
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 6
  store ptr %i.cg, ptr %i.by, align 8, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit57

_ZN4llvm11raw_ostreamlsEPKc.exit57:               ; preds = %bb.o, %bb.p
  %i.ch = load i8, ptr %i.ao, align 8, !tbaa !50, !range !19, !noundef !20
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.q, label %bb.x

bb.q:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit57
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !71 ; 2 uses
  %.not235 = icmp eq i32 %i.ck, 0
  br i1 %.not235, label %._crit_edge, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %bb.q
  %10 = zext i32 %i.ck to i64                     ; 2 uses
  %11 = add nuw nsw i64 %10, 2305843009213693951
  %n.vec292 = and i64 %11, 2305843009213693951
  %umin = call i64 @llvm.umin.i64(i64 %n.vec292, i64 63)
  %12 = add nuw nsw i64 %umin, 1                  ; 2 uses
  %.exit = icmp ne i64 %12, %10
  %13 = zext i1 %.exit to i64
  %14 = add nuw nsw i64 %12, %13
  br label %._crit_edge

._crit_edge:                                      ; preds = %vec.epilog.ph, %bb.q
  %spec.select = phi i64 [ 1, %bb.q ], [ %14, %vec.epilog.ph ]
  %i.cl = load ptr, ptr %i.p, align 8, !tbaa !94, !nonnull !20, !align !76 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !43
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 32 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !44 ; 2 uses
  %i.cq = ptrtoint ptr %i.cn to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = icmp ult i64 %i.cs, 49
  br i1 %i.ct, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge
  %i.cu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.cl, ptr noundef nonnull @.str.42, i64 noundef 49) #18 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit62

bb.s:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.cp, ptr noundef nonnull align 1 dereferenceable(49) @.str.42, i64 49, i1 false)
  %i.cv = load ptr, ptr %i.co, align 8, !tbaa !44
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 49 ; 2 uses
  store ptr %i.cw, ptr %i.co, align 8, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit62

_ZN4llvm11raw_ostreamlsEPKc.exit62:               ; preds = %bb.r, %bb.s
  %i.cx = phi ptr [ %.pre, %bb.r ], [ %i.cw, %bb.s ] ; 2 uses
  %.0.i.i61 = phi ptr [ %i.cu, %bb.r ], [ %i.cl, %bb.s ] ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i.i61, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !43
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = icmp ult i64 %i.dc, 47
  br i1 %i.dd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit62
  %i.de = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i61, ptr noundef nonnull @.str.43, i64 noundef 47) #18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit65

bb.u:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit62
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i.i61, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.cx, ptr noundef nonnull align 1 dereferenceable(47) @.str.43, i64 47, i1 false)
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !44
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 47
  store ptr %i.dh, ptr %i.df, align 8, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit65

_ZN4llvm11raw_ostreamlsEPKc.exit65:               ; preds = %bb.t, %bb.u
  %.0.i.i64 = phi ptr [ %i.de, %bb.t ], [ %.0.i.i61, %bb.u ]
  %i.di = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i64, i64 noundef %spec.select) #18 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !43
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 32 ; 3 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !44 ; 2 uses
  %i.dn = ptrtoint ptr %i.dk to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = icmp ult i64 %i.dp, 2
  br i1 %i.dq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit65
  %i.dr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.di, ptr noundef nonnull @.str.44, i64 noundef 2) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit68

bb.w:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit65
  store i16 15906, ptr %i.dm, align 1
  %i.ds = load ptr, ptr %i.dl, align 8, !tbaa !44
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  store ptr %i.dt, ptr %i.dl, align 8, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit68

bb.x:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit57
  %i.du = load ptr, ptr %i.p, align 8, !tbaa !94, !nonnull !20, !align !76 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !43
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 32 ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !44 ; 2 uses
  %i.dz = ptrtoint ptr %i.dw to i64
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = icmp ult i64 %i.eb, 2
  br i1 %i.ec, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ed = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.du, ptr noundef nonnull @.str.45, i64 noundef 2) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit68

bb.z:                                             ; preds = %bb.x
  store i16 31522, ptr %i.dy, align 1
  %i.ee = load ptr, ptr %i.dx, align 8, !tbaa !44
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 2
  store ptr %i.ef, ptr %i.dx, align 8, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit68

_ZN4llvm11raw_ostreamlsEPKc.exit68:               ; preds = %bb.v, %bb.w, %bb.y, %bb.z
  %i.eg = load i8, ptr %i.ao, align 8, !tbaa !50, !range !19, !noundef !20
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = load ptr, ptr %i.p, align 8, !tbaa !94, !nonnull !20, !align !76 ; 2 uses
  br i1 %i.eh, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit68
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !51, !range !19, !noalias !156, !noundef !20
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE18getSimpleNodeLabelB5cxx11EPKNS_7DDGNodeES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull readonly %1, ptr readnone poison)
  br label %_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE12getNodeLabelB5cxx11EPKNS_7DDGNodeES3_.exit

bb.ac:                                            ; preds = %bb.aa
  %i.em = load ptr, ptr %i.c, align 8, !tbaa !93, !nonnull !20, !align !76
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !31
  call void @_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE19getVerboseNodeLabelB5cxx11EPKNS_7DDGNodeES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull readonly %1, ptr noundef readnone %i.en)
  br label %_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE12getNodeLabelB5cxx11EPKNS_7DDGNodeES3_.exit

_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE12getNodeLabelB5cxx11EPKNS_7DDGNodeES3_.exit: ; preds = %bb.ab, %bb.ac
  %i.eo = load ptr, ptr %5, align 8, !tbaa !28
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !38
  %i.er = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ei, ptr noundef %i.eo, i64 noundef %i.eq) #18 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !43
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 32 ; 3 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !44 ; 2 uses
  %i.ew = ptrtoint ptr %i.et to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = icmp ult i64 %i.ey, 5
  br i1 %i.ez, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE12getNodeLabelB5cxx11EPKNS_7DDGNodeES3_.exit
  %i.fa = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.er, ptr noundef nonnull @.str.46, i64 noundef 5) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit74

bb.ae:                                            ; preds = %_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE12getNodeLabelB5cxx11EPKNS_7DDGNodeES3_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ev, ptr noundef nonnull align 1 dereferenceable(5) @.str.46, i64 5, i1 false)
  %i.fb = load ptr, ptr %i.eu, align 8, !tbaa !44
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 5
  store ptr %i.fc, ptr %i.eu, align 8, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit74

_ZN4llvm11raw_ostreamlsEPKc.exit74:               ; preds = %bb.ad, %bb.ae
  %i.fd = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit74
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !29
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.ai

bb.af:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit68
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !51, !range !19, !noalias !157, !noundef !20
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE18getSimpleNodeLabelB5cxx11EPKNS_7DDGNodeES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull readonly %1, ptr readnone poison)
  br label %_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE12getNodeLabelB5cxx11EPKNS_7DDGNodeES3_.exit75

bb.ah:                                            ; preds = %bb.af
  %i.fl = load ptr, ptr %i.c, align 8, !tbaa !93, !nonnull !20, !align !76
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !31
  call void @_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE19getVerboseNodeLabelB5cxx11EPKNS_7DDGNodeES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull readonly %1, ptr noundef readnone %i.fm)
  br label %_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE12getNodeLabelB5cxx11EPKNS_7DDGNodeES3_.exit75

_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE12getNodeLabelB5cxx11EPKNS_7DDGNodeES3_.exit75: ; preds = %bb.ag, %bb.ah
  call void @_ZN4llvm3DOT12EscapeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7) #18
  %i.fn = load ptr, ptr %6, align 8, !tbaa !28
  %i.fo = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !38
  %i.fq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ei, ptr noundef %i.fn, i64 noundef %i.fp) #18 ; 0 uses
  %i.fr = load ptr, ptr %6, align 8, !tbaa !28    ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ft = icmp eq ptr %i.fr, %i.fs
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE12getNodeLabelB5cxx11EPKNS_7DDGNodeES3_.exit75
  %i.fu = load i64, ptr %i.fs, align 8, !tbaa !29
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fv) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE12getNodeLabelB5cxx11EPKNS_7DDGNodeES3_.exit75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  %i.fw = load ptr, ptr %7, align 8, !tbaa !28    ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !29
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.ga) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.gb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.gb, ptr %8, align 8, !tbaa !39
  %i.gc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.gc, align 8, !tbaa !38
  store i8 0, ptr %i.gb, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.gd = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.gd, align 8, !tbaa !52
  %i.ge = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i8 0, ptr %i.ge, align 8, !tbaa !53
  %i.gf = getelementptr inbounds nuw i8, ptr %9, i64 44
  store i32 1, ptr %i.gf, align 4, !tbaa !54
  %i.gg = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gg, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %9, align 8, !tbaa !11
  %i.gh = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %8, ptr %i.gh, align 8, !tbaa !56
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef null, i64 noundef 0, i32 noundef 0) #18
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gk = load i8, ptr %i.ao, align 8, !tbaa !50, !range !19, !noundef !20
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.aj, label %_ZN4llvm15GraphWriterBaseIPKNS_19DataDependenceGraphENS_11GraphWriterIS3_EEE19getEdgeSourceLabelsERNS_11raw_ostreamEPKNS_7DDGNodeE.exit

bb.aj:                                            ; preds = %bb.ai
  %i.gm = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !43
  %i.go = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !44 ; 2 uses
  %i.gq = ptrtoint ptr %i.gn to i64
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = sub i64 %i.gq, %i.gr
  %i.gt = icmp ult i64 %i.gs, 9
  br i1 %i.gt, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.57, i64 noundef 9) #18 ; 0 uses
  br label %_ZN4llvm15GraphWriterBaseIPKNS_19DataDependenceGraphENS_11GraphWriterIS3_EEE19getEdgeSourceLabelsERNS_11raw_ostreamEPKNS_7DDGNodeE.exit

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.gp, ptr noundef nonnull align 1 dereferenceable(9) @.str.57, i64 9, i1 false)
  %i.gv = load ptr, ptr %i.go, align 8, !tbaa !44
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 9
  store ptr %i.gw, ptr %i.go, align 8, !tbaa !44
  br label %_ZN4llvm15GraphWriterBaseIPKNS_19DataDependenceGraphENS_11GraphWriterIS3_EEE19getEdgeSourceLabelsERNS_11raw_ostreamEPKNS_7DDGNodeE.exit

_ZN4llvm15GraphWriterBaseIPKNS_19DataDependenceGraphENS_11GraphWriterIS3_EEE19getEdgeSourceLabelsERNS_11raw_ostreamEPKNS_7DDGNodeE.exit: ; preds = %bb.ai, %bb.ak, %bb.al
  %i.gx = load i8, ptr %i.ao, align 8, !tbaa !50, !range !19, !noundef !20
  %i.gy = trunc nuw i8 %i.gx to i1
  %i.gz = load ptr, ptr %i.p, align 8, !tbaa !94, !nonnull !20, !align !76 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !43
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 32 ; 5 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !44 ; 3 uses
  %i.he = ptrtoint ptr %i.hb to i64
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = sub i64 %i.he, %i.hf                    ; 2 uses
  br i1 %i.gy, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %_ZN4llvm15GraphWriterBaseIPKNS_19DataDependenceGraphENS_11GraphWriterIS3_EEE19getEdgeSourceLabelsERNS_11raw_ostreamEPKNS_7DDGNodeE.exit
  %i.hh = icmp ult i64 %i.hg, 14
  br i1 %i.hh, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.hi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.gz, ptr noundef nonnull @.str.54, i64 noundef 14) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit179

bb.ao:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.hd, ptr noundef nonnull align 1 dereferenceable(14) @.str.54, i64 14, i1 false)
  %i.hj = load ptr, ptr %i.hc, align 8, !tbaa !44
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 14
  store ptr %i.hk, ptr %i.hc, align 8, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit179

bb.ap:                                            ; preds = %_ZN4llvm15GraphWriterBaseIPKNS_19DataDependenceGraphENS_11GraphWriterIS3_EEE19getEdgeSourceLabelsERNS_11raw_ostreamEPKNS_7DDGNodeE.exit
  %i.hl = icmp ult i64 %i.hg, 2
  br i1 %i.hl, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.hm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.gz, ptr noundef nonnull @.str.55, i64 noundef 2) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit179

bb.ar:                                            ; preds = %bb.ap
  store i16 8829, ptr %i.hd, align 1
  %i.hn = load ptr, ptr %i.hc, align 8, !tbaa !44
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 2
  store ptr %i.ho, ptr %i.hc, align 8, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit179

_ZN4llvm11raw_ostreamlsEPKc.exit179:              ; preds = %bb.ar, %bb.aq, %bb.ao, %bb.an
  %i.hp = load ptr, ptr %i.p, align 8, !tbaa !94, !nonnull !20, !align !76 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !43
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 32 ; 3 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !44 ; 2 uses
  %i.hu = ptrtoint ptr %i.hr to i64
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = sub i64 %i.hu, %i.hv
  %i.hx = icmp ult i64 %i.hw, 3
  br i1 %i.hx, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit179
  %i.hy = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.hp, ptr noundef nonnull @.str.56, i64 noundef 3) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit185

bb.at:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ht, ptr noundef nonnull align 1 dereferenceable(3) @.str.56, i64 3, i1 false)
  %i.hz = load ptr, ptr %i.hs, align 8, !tbaa !44
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 3
  store ptr %i.ia, ptr %i.hs, align 8, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit185

_ZN4llvm11raw_ostreamlsEPKc.exit185:              ; preds = %bb.as, %bb.at
  %i.ib = load ptr, ptr %i.gi, align 8, !tbaa !23 ; 3 uses
  %i.ic = load i32, ptr %i.gj, align 8, !tbaa !71 ; 2 uses
  %i.id = zext i32 %i.ic to i64
  %.idx237 = shl nuw nsw i64 %i.id, 3
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 %.idx237 ; 3 uses
  %.not236 = icmp eq i32 %i.ic, 0
  br i1 %.not236, label %.preheader, label %.lr.ph229

.lr.ph229:                                        ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit185
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.au

.preheader:                                       ; preds = %_ZN4llvm15GraphWriterBaseIPKNS_19DataDependenceGraphENS_11GraphWriterIS3_EEE9writeEdgeEPKNS_7DDGNodeEjNS_15mapped_iteratorIPKPNS_7DDGEdgeEPFS9_PKNS_6DGEdgeIS7_SB_EEES9_EE.exit, %_ZN4llvm11raw_ostreamlsEPKc.exit185
  %.sroa.0207.0.lcssa = phi ptr [ %i.ib, %_ZN4llvm11raw_ostreamlsEPKc.exit185 ], [ %i.je, %_ZN4llvm15GraphWriterBaseIPKNS_19DataDependenceGraphENS_11GraphWriterIS3_EEE9writeEdgeEPKNS_7DDGNodeEjNS_15mapped_iteratorIPKPNS_7DDGEdgeEPFS9_PKNS_6DGEdgeIS7_SB_EEES9_EE.exit ] ; 2 uses
  %.not231 = icmp eq ptr %.sroa.0207.0.lcssa, %i.ie
  br i1 %.not231, label %._crit_edge234, label %.lr.ph233

.lr.ph233:                                        ; preds = %.preheader
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.ay

bb.au:                                            ; preds = %.lr.ph229, %_ZN4llvm15GraphWriterBaseIPKNS_19DataDependenceGraphENS_11GraphWriterIS3_EEE9writeEdgeEPKNS_7DDGNodeEjNS_15mapped_iteratorIPKPNS_7DDGEdgeEPFS9_PKNS_6DGEdgeIS7_SB_EEES9_EE.exit
  %.040228 = phi i32 [ 0, %.lr.ph229 ], [ %i.jf, %_ZN4llvm15GraphWriterBaseIPKNS_19DataDependenceGraphENS_11GraphWriterIS3_EEE9writeEdgeEPKNS_7DDGNodeEjNS_15mapped_iteratorIPKPNS_7DDGEdgeEPFS9_PKNS_6DGEdgeIS7_SB_EEES9_EE.exit ]
  %.sroa.0207.0227 = phi ptr [ %i.ib, %.lr.ph229 ], [ %i.je, %_ZN4llvm15GraphWriterBaseIPKNS_19DataDependenceGraphENS_11GraphWriterIS3_EEE9writeEdgeEPKNS_7DDGNodeEjNS_15mapped_iteratorIPKPNS_7DDGEdgeEPFS9_PKNS_6DGEdgeIS7_SB_EEES9_EE.exit ] ; 4 uses
  %i.ij = load ptr, ptr %.sroa.0207.0227, align 8, !tbaa !81
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !86, !nonnull !20, !align !76 ; 2 uses
  %i.il = load ptr, ptr %i.c, align 8, !tbaa !93, !nonnull !20, !align !76
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !31
  %i.in = load i8, ptr %i.if, align 1, !tbaa !51, !range !19, !noundef !20
  %i.io = trunc nuw i8 %i.in to i1
  br i1 %i.io, label %bb.av, label %_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE12isNodeHiddenEPKNS_7DDGNodeES3_.exit

bb.av:                                            ; preds = %bb.au
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ik, i64 48
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !70
  %i.ir = icmp eq i32 %i.iq, 4
  br i1 %i.ir, label %_ZN4llvm15GraphWriterBaseIPKNS_19DataDependenceGraphENS_11GraphWriterIS3_EEE9writeEdgeEPKNS_7DDGNodeEjNS_15mapped_iteratorIPKPNS_7DDGEdgeEPFS9_PKNS_6DGEdgeIS7_SB_EEES9_EE.exit, label %_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE12isNodeHiddenEPKNS_7DDGNodeES3_.exit

_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE12isNodeHiddenEPKNS_7DDGNodeES3_.exit: ; preds = %bb.au, %bb.av
  %i.is = call noundef ptr @_ZNK4llvm19DataDependenceGraph10getPiBlockERKNS_7DDGNodeE(ptr noundef nonnull align 8 dereferenceable(216) %i.im, ptr noundef nonnull align 8 dereferenceable(52) %i.ik) #18
  %.not223 = icmp eq ptr %i.is, null
  br i1 %.not223, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZN4llvm15GraphWriterBaseIPKNS_19DataDependenceGraphENS_11GraphWriterIS3_EEE9writeEdgeEPKNS_7DDGNodeEjNS_15mapped_iteratorIPKPNS_7DDGEdgeEPFS9_PKNS_6DGEdgeIS7_SB_EEES9_EE.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE12isNodeHiddenEPKNS_7DDGNodeES3_.exit
  %i.it = load ptr, ptr %.sroa.0207.0227, align 8, !tbaa !81
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !86, !nonnull !20, !align !76
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.iv = load ptr, ptr %.sroa.0207.0227, align 8, !tbaa !81, !noalias !158 ; 2 uses
  %i.iw = load i8, ptr %i.if, align 1, !tbaa !51, !range !19, !noalias !158, !noundef !20
  %i.ix = trunc nuw i8 %i.iw to i1
  br i1 %i.ix, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE23getSimpleEdgeAttributesB5cxx11EPKNS_7DDGNodeEPKNS_7DDGEdgeES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull poison, ptr noundef %i.iv, ptr poison)
  br label %_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE17getEdgeAttributesB5cxx11EPKNS_7DDGNodeENS_15mapped_iteratorIPKPNS_7DDGEdgeEPFS7_PKNS_6DGEdgeIS5_S9_EEES7_EES3_.exit.i

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.iy = load ptr, ptr %i.c, align 8, !tbaa !93, !nonnull !20, !align !76
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !31
  call void @_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE24getVerboseEdgeAttributesB5cxx11EPKNS_7DDGNodeEPKNS_7DDGEdgeES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull %1, ptr noundef %i.iv, ptr noundef %i.iz)
  br label %_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE17getEdgeAttributesB5cxx11EPKNS_7DDGNodeENS_15mapped_iteratorIPKPNS_7DDGEdgeEPFS7_PKNS_6DGEdgeIS5_S9_EEES7_EES3_.exit.i

_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE17getEdgeAttributesB5cxx11EPKNS_7DDGNodeENS_15mapped_iteratorIPKPNS_7DDGEdgeEPFS7_PKNS_6DGEdgeIS5_S9_EEES7_EES3_.exit.i: ; preds = %bb.ax, %bb.aw
  call void @_ZN4llvm15GraphWriterBaseIPKNS_19DataDependenceGraphENS_11GraphWriterIS3_EEE8emitEdgeEPKviS8_iRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef nonnull %1, i32 noundef -1, ptr noundef nonnull %i.iu, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.ja = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.ig
  br i1 %i.jb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i: ; preds = %_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE17getEdgeAttributesB5cxx11EPKNS_7DDGNodeENS_15mapped_iteratorIPKPNS_7DDGEdgeEPFS7_PKNS_6DGEdgeIS5_S9_EEES7_EES3_.exit.i
  %i.jc = load i64, ptr %i.ig, align 8, !tbaa !29
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.jd) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i: ; preds = %_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE17getEdgeAttributesB5cxx11EPKNS_7DDGNodeENS_15mapped_iteratorIPKPNS_7DDGEdgeEPFS7_PKNS_6DGEdgeIS5_S9_EEES7_EES3_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN4llvm15GraphWriterBaseIPKNS_19DataDependenceGraphENS_11GraphWriterIS3_EEE9writeEdgeEPKNS_7DDGNodeEjNS_15mapped_iteratorIPKPNS_7DDGEdgeEPFS9_PKNS_6DGEdgeIS7_SB_EEES9_EE.exit

_ZN4llvm15GraphWriterBaseIPKNS_19DataDependenceGraphENS_11GraphWriterIS3_EEE9writeEdgeEPKNS_7DDGNodeEjNS_15mapped_iteratorIPKPNS_7DDGEdgeEPFS9_PKNS_6DGEdgeIS7_SB_EEES9_EE.exit: ; preds = %bb.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i, %_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE12isNodeHiddenEPKNS_7DDGNodeES3_.exit
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0207.0227, i64 8 ; 3 uses
  %i.jf = add nuw nsw i32 %.040228, 1             ; 2 uses
  %i.jg = icmp ne ptr %i.je, %i.ie
  %i.jh = icmp ne i32 %i.jf, 64
  %i.ji = select i1 %i.jg, i1 %i.jh, i1 false
  br i1 %i.ji, label %bb.au, label %.preheader, !llvm.loop !151

bb.ay:                                            ; preds = %.lr.ph233, %_ZN4llvm15GraphWriterBaseIPKNS_19DataDependenceGraphENS_11GraphWriterIS3_EEE9writeEdgeEPKNS_7DDGNodeEjNS_15mapped_iteratorIPKPNS_7DDGEdgeEPFS9_PKNS_6DGEdgeIS7_SB_EEES9_EE.exit199
  %.sroa.0207.1232 = phi ptr [ %.sroa.0207.0.lcssa, %.lr.ph233 ], [ %i.kd, %_ZN4llvm15GraphWriterBaseIPKNS_19DataDependenceGraphENS_11GraphWriterIS3_EEE9writeEdgeEPKNS_7DDGNodeEjNS_15mapped_iteratorIPKPNS_7DDGEdgeEPFS9_PKNS_6DGEdgeIS7_SB_EEES9_EE.exit199 ] ; 3 uses
  %i.jj = load ptr, ptr %.sroa.0207.1232, align 8, !tbaa !81
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !86, !nonnull !20, !align !76 ; 2 uses
  %i.jl = load ptr, ptr %i.c, align 8, !tbaa !93, !nonnull !20, !align !76
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !31
  %i.jn = load i8, ptr %i.ih, align 1, !tbaa !51, !range !19, !noundef !20
  %i.jo = trunc nuw i8 %i.jn to i1
  br i1 %i.jo, label %bb.az, label %_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE12isNodeHiddenEPKNS_7DDGNodeES3_.exit192

bb.az:                                            ; preds = %bb.ay
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jk, i64 48
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !70
  %i.jr = icmp eq i32 %i.jq, 4
  br i1 %i.jr, label %_ZN4llvm15GraphWriterBaseIPKNS_19DataDependenceGraphENS_11GraphWriterIS3_EEE9writeEdgeEPKNS_7DDGNodeEjNS_15mapped_iteratorIPKPNS_7DDGEdgeEPFS9_PKNS_6DGEdgeIS7_SB_EEES9_EE.exit199, label %_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE12isNodeHiddenEPKNS_7DDGNodeES3_.exit192

_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE12isNodeHiddenEPKNS_7DDGNodeES3_.exit192: ; preds = %bb.ay, %bb.az
  %i.js = call noundef ptr @_ZNK4llvm19DataDependenceGraph10getPiBlockERKNS_7DDGNodeE(ptr noundef nonnull align 8 dereferenceable(216) %i.jm, ptr noundef nonnull align 8 dereferenceable(52) %i.jk) #18
  %.not222 = icmp eq ptr %i.js, null
  br i1 %.not222, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i194, label %_ZN4llvm15GraphWriterBaseIPKNS_19DataDependenceGraphENS_11GraphWriterIS3_EEE9writeEdgeEPKNS_7DDGNodeEjNS_15mapped_iteratorIPKPNS_7DDGEdgeEPFS9_PKNS_6DGEdgeIS7_SB_EEES9_EE.exit199

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i194: ; preds = %_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE12isNodeHiddenEPKNS_7DDGNodeES3_.exit192
  %i.jt = load ptr, ptr %.sroa.0207.1232, align 8, !tbaa !81 ; 3 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !86, !nonnull !20, !align !76
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.jv = load i8, ptr %i.ih, align 1, !tbaa !51, !range !19, !noalias !159, !noundef !20
  %i.jw = trunc nuw i8 %i.jv to i1
  br i1 %i.jw, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i194
  call void @_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE23getSimpleEdgeAttributesB5cxx11EPKNS_7DDGNodeEPKNS_7DDGEdgeES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr nonnull poison, ptr noundef nonnull %i.jt, ptr poison)
  br label %_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE17getEdgeAttributesB5cxx11EPKNS_7DDGNodeENS_15mapped_iteratorIPKPNS_7DDGEdgeEPFS7_PKNS_6DGEdgeIS5_S9_EEES7_EES3_.exit.i195

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i194
  %i.jx = load ptr, ptr %i.c, align 8, !tbaa !93, !nonnull !20, !align !76
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !31
  call void @_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE24getVerboseEdgeAttributesB5cxx11EPKNS_7DDGNodeEPKNS_7DDGEdgeES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull %1, ptr noundef nonnull %i.jt, ptr noundef %i.jy)
  br label %_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE17getEdgeAttributesB5cxx11EPKNS_7DDGNodeENS_15mapped_iteratorIPKPNS_7DDGEdgeEPFS7_PKNS_6DGEdgeIS5_S9_EEES7_EES3_.exit.i195

_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE17getEdgeAttributesB5cxx11EPKNS_7DDGNodeENS_15mapped_iteratorIPKPNS_7DDGEdgeEPFS7_PKNS_6DGEdgeIS5_S9_EEES7_EES3_.exit.i195: ; preds = %bb.bb, %bb.ba
  call void @_ZN4llvm15GraphWriterBaseIPKNS_19DataDependenceGraphENS_11GraphWriterIS3_EEE8emitEdgeEPKviS8_iRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef nonnull %1, i32 noundef -1, ptr noundef nonnull %i.ju, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.jz = load ptr, ptr %2, align 8, !tbaa !28    ; 2 uses
  %i.ka = icmp eq ptr %i.jz, %i.ii
  br i1 %i.ka, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i196: ; preds = %_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE17getEdgeAttributesB5cxx11EPKNS_7DDGNodeENS_15mapped_iteratorIPKPNS_7DDGEdgeEPFS7_PKNS_6DGEdgeIS5_S9_EEES7_EES3_.exit.i195
  %i.kb = load i64, ptr %i.ii, align 8, !tbaa !29
  %i.kc = add i64 %i.kb, 1
  call void @_ZdlPvm(ptr noundef %i.jz, i64 noundef %i.kc) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i197

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i197: ; preds = %_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE17getEdgeAttributesB5cxx11EPKNS_7DDGNodeENS_15mapped_iteratorIPKPNS_7DDGEdgeEPFS7_PKNS_6DGEdgeIS5_S9_EEES7_EES3_.exit.i195, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i196
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %_ZN4llvm15GraphWriterBaseIPKNS_19DataDependenceGraphENS_11GraphWriterIS3_EEE9writeEdgeEPKNS_7DDGNodeEjNS_15mapped_iteratorIPKPNS_7DDGEdgeEPFS9_PKNS_6DGEdgeIS7_SB_EEES9_EE.exit199

_ZN4llvm15GraphWriterBaseIPKNS_19DataDependenceGraphENS_11GraphWriterIS3_EEE9writeEdgeEPKNS_7DDGNodeEjNS_15mapped_iteratorIPKPNS_7DDGEdgeEPFS9_PKNS_6DGEdgeIS7_SB_EEES9_EE.exit199: ; preds = %bb.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i197, %_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE12isNodeHiddenEPKNS_7DDGNodeES3_.exit192
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.0207.1232, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.kd, %i.ie
  br i1 %.not, label %._crit_edge234, label %bb.ay, !llvm.loop !154

._crit_edge234:                                   ; preds = %_ZN4llvm15GraphWriterBaseIPKNS_19DataDependenceGraphENS_11GraphWriterIS3_EEE9writeEdgeEPKNS_7DDGNodeEjNS_15mapped_iteratorIPKPNS_7DDGEdgeEPFS9_PKNS_6DGEdgeIS7_SB_EEES9_EE.exit199, %.preheader
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.ke = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.kf = icmp eq ptr %i.ke, %i.gb
  br i1 %i.kf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200: ; preds = %._crit_edge234
  %i.kg = load i64, ptr %i.gb, align 8, !tbaa !29
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.ke, i64 noundef %i.kh) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202: ; preds = %._crit_edge234, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.ki = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.kj = icmp eq ptr %i.ki, %i.f
  br i1 %i.kj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202
  %i.kk = load i64, ptr %i.f, align 8, !tbaa !29
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.ki, i64 noundef %i.kl) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15GraphWriterBaseIPKNS_19DataDependenceGraphENS_11GraphWriterIS3_EEE8emitEdgeEPKviS8_iRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %2, 64
  br i1 %i.a, label %_ZN4llvm11raw_ostreamlsEPKc.exit24, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !94, !nonnull !20, !align !76 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44   ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ult i64 %i.j, 5
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull @.str.36, i64 noundef 5) #18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.g, ptr noundef nonnull align 1 dereferenceable(5) @.str.36, i64 5, i1 false)
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 5
  store ptr %i.n, ptr %i.f, align 8, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.l, %bb.c ], [ %i.c, %bb.d ]
  %i.o = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %1) #18 ; 0 uses
  %i.p = icmp sgt i32 %2, -1
  br i1 %i.p, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !94, !nonnull !20, !align !76 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !43
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !44   ; 2 uses
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ult i64 %i.x, 2
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull @.str.62, i64 noundef 2) #18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit9

bb.g:                                             ; preds = %bb.e
  store i16 29498, ptr %i.u, align 1
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !44
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  store ptr %i.ab, ptr %i.t, align 8, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit9

_ZN4llvm11raw_ostreamlsEPKc.exit9:                ; preds = %bb.f, %bb.g
  %.0.i.i8 = phi ptr [ %i.z, %bb.f ], [ %i.q, %bb.g ]
  %i.ac = zext nneg i32 %2 to i64
  %i.ad = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i8, i64 noundef %i.ac) #18 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit9, %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !94, !nonnull !20, !align !76 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !43
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !44 ; 2 uses
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = icmp ult i64 %i.al, 8
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull @.str.63, i64 noundef 8) #18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit12

bb.j:                                             ; preds = %bb.h
  store i64 7306086876840865056, ptr %i.ai, align 1
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !44
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ap, ptr %i.ah, align 8, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit12

_ZN4llvm11raw_ostreamlsEPKc.exit12:               ; preds = %bb.i, %bb.j
  %.0.i.i11 = phi ptr [ %i.an, %bb.i ], [ %i.ae, %bb.j ]
  %i.aq = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i11, ptr noundef %3) #18 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !38
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_ZN4llvm11raw_ostreamlsEPKc.exit21, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit12
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !94, !nonnull !20, !align !76 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !43
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !44 ; 2 uses
  %i.az = icmp eq ptr %i.aw, %i.ay
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ba = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.au, ptr noundef nonnull @.str.65, i64 noundef 1) #18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit18

bb.m:                                             ; preds = %bb.k
  store i8 91, ptr %i.ay, align 1
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !44
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store ptr %i.bc, ptr %i.ax, align 8, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit18

_ZN4llvm11raw_ostreamlsEPKc.exit18:               ; preds = %bb.l, %bb.m
  %.0.i.i17 = phi ptr [ %i.ba, %bb.l ], [ %i.au, %bb.m ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !28
  %i.be = load i64, ptr %i.ar, align 8, !tbaa !38
  %i.bf = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i17, ptr noundef %i.bd, i64 noundef %i.be) #18 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !43
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 32 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !44 ; 2 uses
  %i.bk = icmp eq ptr %i.bh, %i.bj
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit18
  %i.bl = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bf, ptr noundef nonnull @.str.66, i64 noundef 1) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit21

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit18
  store i8 93, ptr %i.bj, align 1
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !44
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  store ptr %i.bn, ptr %i.bi, align 8, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit21

_ZN4llvm11raw_ostreamlsEPKc.exit21:               ; preds = %bb.o, %bb.n, %_ZN4llvm11raw_ostreamlsEPKc.exit12
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !94, !nonnull !20, !align !76 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !43
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 32 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !44 ; 2 uses
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = icmp ult i64 %i.bv, 2
  br i1 %i.bw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit21
  %i.bx = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bo, ptr noundef nonnull @.str.67, i64 noundef 2) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit24

bb.q:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit21
  store i16 2619, ptr %i.bs, align 1
  %i.by = load ptr, ptr %i.br, align 8, !tbaa !44
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  store ptr %i.bz, ptr %i.br, align 8, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit24

_ZN4llvm11raw_ostreamlsEPKc.exit24:               ; preds = %bb.q, %bb.p, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #4

declare void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZNK4llvm5Value5printERNS_11raw_ostreamEb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(48), i1 noundef zeroext) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !160, !range !19, !noundef !20
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !160, !range !19, !noundef !20
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !19
  %i.j = load i8, ptr %i.d, align 8, !range !19
  %i.k = icmp eq i8 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120), ptr, i64) local_unnamed_addr #4

declare void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm2cl11initializerIA4_cE5applyINS0_3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserISB_EEEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(240) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.b = load ptr, ptr %0, align 8, !tbaa !162, !nonnull !20 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !39
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.d, ptr %i.a, align 8, !tbaa !77
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #18 ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !28
  %i.g = load i64, ptr %i.a, align 8, !tbaa !77
  store i64 %i.g, ptr %i.c, align 8, !tbaa !29
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.h = phi ptr [ %i.f, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %i.b, align 1, !tbaa !29
  store i8 %i.i, ptr %i.h, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.j = load i64, ptr %i.a, align 8, !tbaa !77   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !38
  %i.l = load ptr, ptr %2, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(80) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i8 1, ptr %i.o, align 8, !tbaa !92
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 160
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  %i.q = load ptr, ptr %2, align 8, !tbaa !28     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !29
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm15AnalysisManagerINS_4LoopEJRNS_27LoopStandardAnalysisResultsEEE13getResultImplEPNS_11AnalysisKeyERS1_S3_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4llvm19DependenceGraphInfoINS_7DDGNodeEE15getDependenciesERKS1_S4_RNS_11SmallVectorISt10unique_ptrINS_10DependenceESt14default_deleteIS7_EELj1EEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(52) %1, ptr noundef nonnull align 8 dereferenceable(52) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.llvm::SmallVector.54", align 8 ; 9 uses
  %5 = alloca %"class.llvm::SmallVector.54", align 8 ; 9 uses
  %6 = alloca %class.anon.56, align 1             ; 3 uses
  %7 = alloca %"class.llvm::function_ref", align 8 ; 5 uses
  %8 = alloca %"class.llvm::function_ref", align 8 ; 5 uses
  %9 = alloca %"class.std::unique_ptr.57", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !71
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 8, ptr %i.d, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.e, ptr %5, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 8, ptr %i.g, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store ptr @_ZN4llvm12function_refIFbPNS_11InstructionEEE11callback_fnIZNKS_19DependenceGraphInfoINS_7DDGNodeEE15getDependenciesERKS7_SA_RNS_11SmallVectorISt10unique_ptrINS_10DependenceESt14default_deleteISD_EELj1EEEEUlPKS1_E_EEblS2_, ptr %7, align 8, !tbaa !171
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.i = ptrtoint ptr %6 to i64                   ; 2 uses
  store i64 %i.i, ptr %i.h, align 8, !tbaa !172
  %i.j = call noundef zeroext i1 @_ZNK4llvm7DDGNode19collectInstructionsERKNS_12function_refIFbPNS_11InstructionEEEERNS_15SmallVectorImplIS3_EE(ptr noundef nonnull align 8 dereferenceable(52) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %4) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  store ptr @_ZN4llvm12function_refIFbPNS_11InstructionEEE11callback_fnIZNKS_19DependenceGraphInfoINS_7DDGNodeEE15getDependenciesERKS7_SA_RNS_11SmallVectorISt10unique_ptrINS_10DependenceESt14default_deleteISD_EELj1EEEEUlPKS1_E_EEblS2_, ptr %8, align 8, !tbaa !171
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.i, ptr %i.k, align 8, !tbaa !172
  %i.l = call noundef zeroext i1 @_ZNK4llvm7DDGNode19collectInstructionsERKNS_12function_refIFbPNS_11InstructionEEEERNS_15SmallVectorImplIS3_EE(ptr noundef nonnull align 8 dereferenceable(52) %2, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %5) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.m = load ptr, ptr %4, align 8, !tbaa !23     ; 2 uses
  %i.n = load i32, ptr %i.c, align 8, !tbaa !71   ; 2 uses
  %i.o = zext i32 %i.n to i64
  %.idx = shl nuw nsw i64 %i.o, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %.not28 = icmp eq i32 %i.n, 0
  br i1 %.not28, label %._crit_edge32, label %.lr.ph31

.lr.ph31:                                         ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = ptrtoint ptr %9 to i64
  br label %bb.d

._crit_edge32:                                    ; preds = %._crit_edge, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.x = load ptr, ptr %5, align 8, !tbaa !23     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.e
  br i1 %i.y, label %_ZN4llvm11SmallVectorIPNS_11InstructionELj8EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge32
  call void @free(ptr noundef %i.x) #18
  br label %_ZN4llvm11SmallVectorIPNS_11InstructionELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_11InstructionELj8EED2Ev.exit: ; preds = %._crit_edge32, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.z = load ptr, ptr %4, align 8, !tbaa !23     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.b
  br i1 %i.aa, label %_ZN4llvm11SmallVectorIPNS_11InstructionELj8EED2Ev.exit21, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_11InstructionELj8EED2Ev.exit
  call void @free(ptr noundef %i.z) #18
  br label %_ZN4llvm11SmallVectorIPNS_11InstructionELj8EED2Ev.exit21

_ZN4llvm11SmallVectorIPNS_11InstructionELj8EED2Ev.exit21: ; preds = %_ZN4llvm11SmallVectorIPNS_11InstructionELj8EED2Ev.exit, %bb.c
  %.not.i = icmp ne i32 %i.w, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i1 %.not.i

bb.d:                                             ; preds = %.lr.ph31, %._crit_edge
  %.01929 = phi ptr [ %i.m, %.lr.ph31 ], [ %i.ag, %._crit_edge ] ; 2 uses
  %i.ab = load ptr, ptr %.01929, align 8, !tbaa !73
  %i.ac = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.ad = load i32, ptr %i.f, align 8, !tbaa !71  ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %.idx33 = shl nuw nsw i64 %i.ae, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx33
  %.not2026 = icmp eq i32 %i.ad, 0
  br i1 %.not2026, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN4llvm10DependenceESt14default_deleteIS1_EED2Ev.exit, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.01929, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ag, %i.p
  br i1 %.not, label %._crit_edge32, label %bb.d

.lr.ph:                                           ; preds = %bb.d, %_ZNSt10unique_ptrIN4llvm10DependenceESt14default_deleteIS1_EED2Ev.exit
  %.027 = phi ptr [ %i.cg, %_ZNSt10unique_ptrIN4llvm10DependenceESt14default_deleteIS1_EED2Ev.exit ], [ %i.ac, %bb.d ] ; 2 uses
  %i.ah = load ptr, ptr %.027, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @_ZN4llvm14DependenceInfo7dependsEPNS_11InstructionES2_b(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.57") align 8 %9, ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef %i.ab, ptr noundef %i.ah, i1 noundef zeroext false) #18
  %i.ai = load ptr, ptr %9, align 8, !tbaa !89
  %.not25 = icmp eq ptr %i.ai, null
  br i1 %.not25, label %_ZNSt10unique_ptrIN4llvm10DependenceESt14default_deleteIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.aj = load i32, ptr %i.r, align 8, !tbaa !71  ; 2 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %i.am = load i32, ptr %i.s, align 4, !tbaa !87
  %.not.i.i.not.i = icmp ult i32 %i.aj, %i.am
  %.pre3.i = load ptr, ptr %3, align 8, !tbaa !23 ; 4 uses
  br i1 %.not.i.i.not.i, label %bb.i, label %bb.f, !prof !173

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.pre3.i, i64 %i.ak
  %i.ao = icmp uge ptr %9, %.pre3.i
  %i.ap = icmp ult ptr %9, %i.an
  %spec.select.i.i.i.i.i = and i1 %i.ao, %i.ap
  br i1 %spec.select.i.i.i.i.i, label %bb.g, label %.critedge.i.i.i, !prof !174

bb.g:                                             ; preds = %bb.f
  %i.aq = ptrtoint ptr %.pre3.i to i64
  %i.ar = sub i64 %i.u, %i.aq
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10DependenceESt14default_deleteIS2_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.al)
  %i.as = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.ar
  br label %bb.i

.critedge.i.i.i:                                  ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.au = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.t, i64 noundef %i.al, i64 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #18 ; 8 uses
  %i.av = load ptr, ptr %3, align 8, !tbaa !23    ; 8 uses
  %i.aw = load i32, ptr %i.r, align 8, !tbaa !71  ; 2 uses
  %i.ax = zext i32 %i.aw to i64
  %.idx.i.i = shl nuw nsw i64 %i.ax, 3            ; 3 uses
  %i.ay = getelementptr i8, ptr %i.av, i64 %.idx.i.i ; 3 uses
  %.not7.i.i.i.i.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10DependenceESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.critedge.i.i.i
  %i.az = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.ba = lshr exact i64 %i.az, 3
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.az, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader44, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bc = getelementptr i8, ptr %i.au, i64 %.idx.i.i
  %bound0 = icmp ult ptr %i.au, %i.ay
  %bound1 = icmp ult ptr %i.av, %i.bc
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader44, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bb, 4611686018427387900     ; 3 uses
  %i.bd = shl i64 %n.vec, 3                       ; 2 uses
  %i.be = getelementptr i8, ptr %i.au, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.av, i64 %i.bd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bg = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.au, i64 %i.bg ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.av, i64 %i.bg ; 4 uses
  %i.bh = getelementptr i8, ptr %next.gep41, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep41, align 8, !tbaa !89, !alias.scope !175
  %wide.load42 = load <2 x i64>, ptr %i.bh, align 8, !tbaa !89, !alias.scope !175
  %i.bi = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !89, !alias.scope !176, !noalias !175
  store <2 x i64> %wide.load42, ptr %i.bi, align 8, !tbaa !89, !alias.scope !176, !noalias !175
  %i.bj = getelementptr i8, ptr %next.gep41, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep41, align 8, !tbaa !89, !alias.scope !175
  store <2 x ptr> splat (ptr null), ptr %i.bj, align 8, !tbaa !89, !alias.scope !175
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !166

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i.i.i.i.i.i.i.preheader44

.lr.ph.i.i.i.i.i.i.i.preheader44:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.i.i.ph = phi ptr [ %i.au, %vector.memcheck ], [ %i.au, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.be, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.i.ph = phi ptr [ %i.av, %vector.memcheck ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bf, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader44, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader44 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader44 ] ; 3 uses
  %i.bl = load i64, ptr %.sroa.04.08.i.i.i.i.i.i.i, align 8, !tbaa !89
  store i64 %i.bl, ptr %.09.i.i.i.i.i.i.i, align 8, !tbaa !89
  store ptr null, ptr %.sroa.04.08.i.i.i.i.i.i.i, align 8, !tbaa !89
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.ay
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !167

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZNSt10unique_ptrIN4llvm10DependenceESt14default_deleteIS1_EED2Ev.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bo, %_ZNSt10unique_ptrIN4llvm10DependenceESt14default_deleteIS1_EED2Ev.exit.i.i.i ], [ %i.ay, %.lr.ph.i.i.i.preheader ]
  %i.bo = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -8 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm10DependenceESt14default_deleteIS1_EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIN4llvm10DependenceEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm10DependenceEEclEPS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !11
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(224) %i.bp) #18, !inline_history !168
  br label %_ZNSt10unique_ptrIN4llvm10DependenceESt14default_deleteIS1_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN4llvm10DependenceESt14default_deleteIS1_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm10DependenceEEclEPS1_.exit.i.i.i.i, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.av, %i.bo
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10DependenceESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10DependenceESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit.loopexit.i: ; preds = %_ZNSt10unique_ptrIN4llvm10DependenceESt14default_deleteIS1_EED2Ev.exit.i.i.i
  %.pre.i23 = load ptr, ptr %3, align 8, !tbaa !23
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10DependenceESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10DependenceESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10DependenceESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit.loopexit.i, %.critedge.i.i.i
  %i.bt = phi ptr [ %.pre.i23, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10DependenceESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit.loopexit.i ], [ %i.av, %.critedge.i.i.i ] ; 2 uses
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !77
  %i.bv = icmp eq ptr %i.bt, %i.t
  br i1 %i.bv, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10DependenceESt14default_deleteIS2_EELb0EE4growEm.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10DependenceESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit.i
  call void @free(ptr noundef %i.bt) #18
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10DependenceESt14default_deleteIS2_EELb0EE4growEm.exit

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10DependenceESt14default_deleteIS2_EELb0EE4growEm.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10DependenceESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit.i, %bb.h
  store ptr %i.au, ptr %3, align 8, !tbaa !23
  %i.bw = trunc i64 %i.bu to i32
  store i32 %i.bw, ptr %i.s, align 4, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10DependenceESt14default_deleteIS2_EELb0EE4growEm.exit, %bb.g, %bb.e
  %i.bx = phi ptr [ %.pre3.i, %bb.e ], [ %i.as, %bb.g ], [ %i.au, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10DependenceESt14default_deleteIS2_EELb0EE4growEm.exit ]
  %.016.i.i.i = phi ptr [ %9, %bb.e ], [ %i.at, %bb.g ], [ %9, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10DependenceESt14default_deleteIS2_EELb0EE4growEm.exit ] ; 2 uses
  %i.by = load i32, ptr %i.r, align 8, !tbaa !71  ; 2 uses
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bz
  %i.cb = load i64, ptr %.016.i.i.i, align 8, !tbaa !89
  store i64 %i.cb, ptr %i.ca, align 8, !tbaa !89
  store ptr null, ptr %.016.i.i.i, align 8, !tbaa !89
  %i.cc = add i32 %i.by, 1
  store i32 %i.cc, ptr %i.r, align 8, !tbaa !71
  %.pr = load ptr, ptr %9, align 8, !tbaa !89     ; 3 uses
  %.not.i22 = icmp eq ptr %.pr, null
  br i1 %.not.i22, label %_ZNSt10unique_ptrIN4llvm10DependenceESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm10DependenceEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm10DependenceEEclEPS1_.exit.i: ; preds = %bb.i
  %i.cd = load ptr, ptr %.pr, align 8, !tbaa !11
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(224) %.pr) #18, !inline_history !169
  br label %_ZNSt10unique_ptrIN4llvm10DependenceESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm10DependenceESt14default_deleteIS1_EED2Ev.exit: ; preds = %.lr.ph, %bb.i, %_ZNKSt14default_deleteIN4llvm10DependenceEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.cg = getelementptr inbounds nuw i8, ptr %.027, i64 8 ; 2 uses
  %.not20 = icmp eq ptr %i.cg, %i.af
  br i1 %.not20, label %._crit_edge, label %.lr.ph
}

declare noundef zeroext i1 @_ZNK4llvm7DDGNode19collectInstructionsERKNS_12function_refIFbPNS_11InstructionEEEERNS_15SmallVectorImplIS3_EE(ptr noundef nonnull align 8 dereferenceable(52), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare void @_ZN4llvm14DependenceInfo7dependsEPNS_11InstructionES2_b(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.57") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12function_refIFbPNS_11InstructionEEE11callback_fnIZNKS_19DependenceGraphInfoINS_7DDGNodeEE15getDependenciesERKS7_SA_RNS_11SmallVectorISt10unique_ptrINS_10DependenceESt14default_deleteISD_EELj1EEEEUlPKS1_E_EEblS2_(i64 noundef %0, ptr noundef %1) #3 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm11Instruction17mayReadFromMemoryEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #22
  br i1 %i.a, label %_ZZNK4llvm19DependenceGraphInfoINS_7DDGNodeEE15getDependenciesERKS1_S4_RNS_11SmallVectorISt10unique_ptrINS_10DependenceESt14default_deleteIS7_EELj1EEEENKUlPKNS_11InstructionEE_clESF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK4llvm11Instruction16mayWriteToMemoryEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #22
  br label %_ZZNK4llvm19DependenceGraphInfoINS_7DDGNodeEE15getDependenciesERKS1_S4_RNS_11SmallVectorISt10unique_ptrINS_10DependenceESt14default_deleteIS7_EELj1EEEENKUlPKNS_11InstructionEE_clESF_.exit

_ZZNK4llvm19DependenceGraphInfoINS_7DDGNodeEE15getDependenciesERKS1_S4_RNS_11SmallVectorISt10unique_ptrINS_10DependenceESt14default_deleteIS7_EELj1EEEENKUlPKNS_11InstructionEE_clESF_.exit: ; preds = %bb.a, %bb.b
  %i.c = phi i1 [ true, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK4llvm11Instruction17mayReadFromMemoryEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK4llvm11Instruction16mayWriteToMemoryEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10DependenceESt14default_deleteIS2_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef %1, i64 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #18 ; 7 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !23     ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !71   ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i = shl nuw nsw i64 %i.g, 3               ; 3 uses
  %i.h = getelementptr i8, ptr %i.d, i64 %.idx.i  ; 3 uses
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10DependenceESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.a
  %i.i = add nsw i64 %.idx.i, -8                  ; 2 uses
  %i.j = lshr exact i64 %i.i, 3
  %i.k = add nuw nsw i64 %i.j, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader9, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.l = getelementptr i8, ptr %i.c, i64 %.idx.i
  %bound0 = icmp ult ptr %i.c, %i.h
  %bound1 = icmp ult ptr %i.d, %i.l
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader9, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.k, 4611686018427387900      ; 3 uses
  %i.m = shl i64 %n.vec, 3                        ; 2 uses
  %i.n = getelementptr i8, ptr %i.c, i64 %i.m
  %i.o = getelementptr i8, ptr %i.d, i64 %i.m
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.p ; 2 uses
  %next.gep6 = getelementptr i8, ptr %i.d, i64 %i.p ; 4 uses
  %i.q = getelementptr i8, ptr %next.gep6, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep6, align 8, !tbaa !89, !alias.scope !183
  %wide.load7 = load <2 x i64>, ptr %i.q, align 8, !tbaa !89, !alias.scope !183
  %i.r = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !89, !alias.scope !184, !noalias !183
  store <2 x i64> %wide.load7, ptr %i.r, align 8, !tbaa !89, !alias.scope !184, !noalias !183
  %i.s = getelementptr i8, ptr %next.gep6, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep6, align 8, !tbaa !89, !alias.scope !183
  store <2 x ptr> splat (ptr null), ptr %i.s, align 8, !tbaa !89, !alias.scope !183
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !180

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.preheader, label %.lr.ph.i.i.i.i.i.i.preheader9

.lr.ph.i.i.i.i.i.i.preheader9:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.n, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader9, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader9 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader9 ] ; 3 uses
  %i.u = load i64, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !89
  store i64 %i.u, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !89
  store ptr null, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !89
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.v, %i.h
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.preheader, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !181

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZNSt10unique_ptrIN4llvm10DependenceESt14default_deleteIS1_EED2Ev.exit.i.i
  %.05.i.i = phi ptr [ %i.x, %_ZNSt10unique_ptrIN4llvm10DependenceESt14default_deleteIS1_EED2Ev.exit.i.i ], [ %i.h, %.lr.ph.i.i.preheader ]
  %i.x = getelementptr inbounds i8, ptr %.05.i.i, i64 -8 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !89   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN4llvm10DependenceESt14default_deleteIS1_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN4llvm10DependenceEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm10DependenceEEclEPS1_.exit.i.i.i: ; preds = %.lr.ph.i.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(224) %i.y) #18, !inline_history !182
  br label %_ZNSt10unique_ptrIN4llvm10DependenceESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN4llvm10DependenceESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm10DependenceEEclEPS1_.exit.i.i.i, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.d, %i.x
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10DependenceESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10DependenceESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit.loopexit: ; preds = %_ZNSt10unique_ptrIN4llvm10DependenceESt14default_deleteIS1_EED2Ev.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !23
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10DependenceESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10DependenceESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10DependenceESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit.loopexit, %bb.a
  %i.ac = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10DependenceESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit.loopexit ], [ %i.d, %bb.a ] ; 2 uses
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !77
  %i.ae = icmp eq ptr %i.ac, %i.b
  br i1 %i.ae, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10DependenceESt14default_deleteIS2_EELb0EE21takeAllocationForGrowEPS5_m.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10DependenceESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit
  call void @free(ptr noundef %i.ac) #18
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10DependenceESt14default_deleteIS2_EELb0EE21takeAllocationForGrowEPS5_m.exit

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10DependenceESt14default_deleteIS2_EELb0EE21takeAllocationForGrowEPS5_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10DependenceESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit, %bb.b
  store ptr %i.c, ptr %0, align 8, !tbaa !23
  %i.af = trunc i64 %i.ad to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

declare noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare void @_ZNK4llvm10Dependence4dumpERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_DDGPrinter.cpp() #13 section ".text.startup" {
bb.a:
  %0 = alloca %"struct.llvm::cl::initializer", align 8 ; 4 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL7DotOnly, i32 noundef 0, i32 noundef 0) #18
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL7DotOnly, i64 120), align 8, !tbaa !37
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL7DotOnly, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL7DotOnly, i64 128), align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL7DotOnly, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL7DotOnly, i64 144), align 8, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL7DotOnly, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL7DotOnly, ptr nonnull align 1 dereferenceable(13) @.str, i64 12) #18
  %i.a = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL7DotOnly, i64 10), align 2
  %i.b = and i16 %i.a, -97
  %i.c = or disjoint i16 %i.b, 32
  store i16 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZL7DotOnly, i64 10), align 2
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZL7DotOnly, i64 32), align 8, !tbaa !185
  store i64 20, ptr getelementptr inbounds nuw (i8, ptr @_ZL7DotOnly, i64 40), align 8, !tbaa !77
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL7DotOnly) #18
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL7DotOnly, ptr nonnull @__dso_handle) #18 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  store ptr @.str.4, ptr %0, align 8
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL20DDGDotFilenamePrefixB5cxx11, i32 noundef 0, i32 noundef 0) #18
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL20DDGDotFilenamePrefixB5cxx11, i64 136), ptr getelementptr inbounds nuw (i8, ptr @_ZL20DDGDotFilenamePrefixB5cxx11, i64 120), align 8, !tbaa !39
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL20DDGDotFilenamePrefixB5cxx11, i64 128), align 8, !tbaa !38
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL20DDGDotFilenamePrefixB5cxx11, i64 136), align 8, !tbaa !29
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL20DDGDotFilenamePrefixB5cxx11, i64 176), ptr getelementptr inbounds nuw (i8, ptr @_ZL20DDGDotFilenamePrefixB5cxx11, i64 160), align 8, !tbaa !39
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL20DDGDotFilenamePrefixB5cxx11, i64 168), align 8, !tbaa !38
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL20DDGDotFilenamePrefixB5cxx11, i64 176), align 8, !tbaa !29
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL20DDGDotFilenamePrefixB5cxx11, i64 192), align 8, !tbaa !92
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL20DDGDotFilenamePrefixB5cxx11, i64 152), align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserIS7_EEEE, i64 16), ptr @_ZL20DDGDotFilenamePrefixB5cxx11, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL20DDGDotFilenamePrefixB5cxx11, i64 200), align 8, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL20DDGDotFilenamePrefixB5cxx11, i64 208), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(240) @_ZL20DDGDotFilenamePrefixB5cxx11, ptr nonnull align 1 dereferenceable(24) @.str.3, i64 23) #18
  call void @_ZNK4llvm2cl11initializerIA4_cE5applyINS0_3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserISB_EEEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(240) @_ZL20DDGDotFilenamePrefixB5cxx11)
  %i.e = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL20DDGDotFilenamePrefixB5cxx11, i64 10), align 2
  %i.f = and i16 %i.e, -97
  %i.g = or disjoint i16 %i.f, 32
  store i16 %i.g, ptr getelementptr inbounds nuw (i8, ptr @_ZL20DDGDotFilenamePrefixB5cxx11, i64 10), align 2
  store ptr @.str.5, ptr getelementptr inbounds nuw (i8, ptr @_ZL20DDGDotFilenamePrefixB5cxx11, i64 32), align 8, !tbaa !185
  store i64 43, ptr getelementptr inbounds nuw (i8, ptr @_ZL20DDGDotFilenamePrefixB5cxx11, i64 40), align 8, !tbaa !77
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(240) @_ZL20DDGDotFilenamePrefixB5cxx11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  %i.h = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserIS7_EEED2Ev, ptr nonnull @_ZL20DDGDotFilenamePrefixB5cxx11, ptr nonnull @__dso_handle) #18 ; 0 uses
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
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind willreturn memory(none) }
attributes #22 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = distinct !{!1, !90}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"vtable pointer", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"_ZTSSt14_Function_base", !6, i64 0, !12, i64 16}
!14 = !{!13, !12, i64 16}
!15 = !{!"any p2 pointer", !12, i64 0}
!16 = !{!"bool", !6, i64 0}
!17 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !15, i64 0, !7, i64 8, !7, i64 12, !16, i64 16}
!18 = !{!17, !16, i64 16}
!19 = !{i8 0, i8 2}
!20 = !{}
!21 = !{!17, !15, i64 0}
!22 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !12, i64 0, !7, i64 8, !7, i64 12}
!23 = !{!22, !12, i64 0}
!24 = !{!"p1 omnipotent char", !12, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !24, i64 0}
!26 = !{!"long", !6, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !26, i64 8, !6, i64 16}
!28 = !{!27, !24, i64 0}
!29 = !{!6, !6, i64 0}
!30 = !{!"p1 _ZTSN4llvm19DataDependenceGraphE", !12, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!"_ZTSN4llvm2cl18GenericOptionValueE"}
!33 = !{!"_ZTSN4llvm2cl15OptionValueCopyIbEE", !32, i64 0, !16, i64 8, !16, i64 9}
!34 = !{!"_ZTSN4llvm2cl15OptionValueBaseIbLb0EEE", !33, i64 0}
!35 = !{!"_ZTSN4llvm2cl11OptionValueIbEE", !34, i64 0}
!36 = !{!"_ZTSN4llvm2cl11opt_storageIbLb0ELb0EEE", !16, i64 0, !35, i64 8}
!37 = !{!36, !16, i64 0}
!38 = !{!27, !26, i64 8}
!39 = !{!25, !24, i64 0}
!40 = !{!"_ZTSN4llvm11raw_ostream11OStreamKindE", !6, i64 0}
!41 = !{!"_ZTSN4llvm11raw_ostream10BufferKindE", !6, i64 0}
!42 = !{!"_ZTSN4llvm11raw_ostreamE", !40, i64 8, !24, i64 16, !24, i64 24, !24, i64 32, !16, i64 40, !41, i64 44}
!43 = !{!42, !24, i64 24}
!44 = !{!42, !24, i64 32}
!45 = !{!"p1 _ZTSN4llvm11raw_ostreamE", !12, i64 0}
!46 = !{!"p2 _ZTSN4llvm19DataDependenceGraphE", !15, i64 0}
!47 = !{!"_ZTSN4llvm21DefaultDOTGraphTraitsE", !16, i64 0}
!48 = !{!"_ZTSN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEEE", !47, i64 0}
!49 = !{!"_ZTSN4llvm15GraphWriterBaseIPKNS_19DataDependenceGraphENS_11GraphWriterIS3_EEEE", !45, i64 8, !46, i64 16, !16, i64 24, !48, i64 25}
!50 = !{!49, !16, i64 24}
!51 = !{!47, !16, i64 0}
!52 = !{!42, !40, i64 8}
!53 = !{!42, !16, i64 40}
!54 = !{!42, !41, i64 44}
!55 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!"p1 _ZTSN4llvm6detail12DenseSetPairIPNS_7DDGEdgeEEE", !12, i64 0}
!58 = !{!"p1 int", !12, i64 0}
!59 = !{!"_ZTSN4llvm8DenseMapIPNS_7DDGEdgeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEE", !57, i64 0, !58, i64 8, !7, i64 16, !7, i64 20}
!60 = !{!"_ZTSN4llvm6detail12DenseSetImplIPNS_7DDGEdgeENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEEE", !59, i64 0}
!61 = !{!"_ZTSN4llvm8DenseSetIPNS_7DDGEdgeENS_12DenseMapInfoIS2_vEEEE", !60, i64 0}
!62 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_7DDGEdgeEvEE", !22, i64 0}
!63 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_7DDGEdgeELb1EEE", !62, i64 0}
!64 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_7DDGEdgeEEE", !63, i64 0}
!65 = !{!"_ZTSN4llvm11SmallVectorIPNS_7DDGEdgeELj0EEE", !64, i64 0}
!66 = !{!"_ZTSN4llvm9SetVectorIPNS_7DDGEdgeENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EEE", !61, i64 0, !65, i64 24}
!67 = !{!"_ZTSN4llvm6DGNodeINS_7DDGNodeENS_7DDGEdgeEEE", !66, i64 0}
!68 = !{!"_ZTSN4llvm7DDGNode8NodeKindE", !6, i64 0}
!69 = !{!"_ZTSN4llvm7DDGNodeE", !67, i64 8, !68, i64 48}
!70 = !{!69, !68, i64 48}
!71 = !{!22, !7, i64 8}
!72 = !{!"p1 _ZTSN4llvm11InstructionE", !12, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!"_ZTSN4llvm18raw_string_ostreamE", !42, i64 0, !55, i64 48}
!75 = !{!74, !55, i64 48}
!76 = !{i64 8}
!77 = !{!26, !26, i64 0}
!78 = !{!"p1 _ZTSN4llvm7DDGNodeE", !12, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!"p1 _ZTSN4llvm7DDGEdgeE", !12, i64 0}
!81 = !{!80, !80, i64 0}
!82 = !{!"_ZTSN4llvm6DGEdgeINS_7DDGNodeENS_7DDGEdgeEEE", !78, i64 0}
!83 = !{!"_ZTSN4llvm7DDGEdge8EdgeKindE", !6, i64 0}
!84 = !{!"_ZTSN4llvm7DDGEdgeE", !82, i64 0, !83, i64 8}
!85 = !{!84, !83, i64 8}
!86 = !{!82, !78, i64 0}
!87 = !{!22, !7, i64 12}
!88 = !{!"p1 _ZTSN4llvm10DependenceE", !12, i64 0}
!89 = !{!88, !88, i64 0}
!90 = !{!"llvm.loop.mustprogress"}
!91 = !{!"_ZTSN4llvm2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !32, i64 0, !27, i64 8, !16, i64 40}
!92 = !{!91, !16, i64 40}
!93 = !{!49, !46, i64 16}
!94 = !{!49, !45, i64 8}
!95 = !{!"llvm.loop.isvectorized", i32 1}
!96 = !{!"llvm.loop.unroll.runtime.disable"}
!97 = distinct !{!97, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!98 = distinct !{!98, !97, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!99 = distinct !{!99, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!100 = distinct !{!100, !99, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!101 = distinct !{!101, i1 true, !"_ZN4llvmplERKNS_5TwineES2_"}
!102 = distinct !{!102, !101, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!103 = distinct !{!103, i1 true, !"_ZNK4llvm5Twine6concatERKS0_"}
!104 = distinct !{!104, !103, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!105 = distinct !{!105, i1 true, !"_ZN4llvmplERKNS_5TwineES2_"}
!106 = distinct !{!106, !105, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!107 = distinct !{!107, i1 true, !"_ZNK4llvm5Twine6concatERKS0_"}
!108 = distinct !{!108, !107, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!109 = distinct !{!109, i1 true, !"_ZN4llvm17PreservedAnalyses3allEv"}
!110 = distinct !{!110, !109, !"_ZN4llvm17PreservedAnalyses3allEv: argument 0"}
!111 = distinct !{!111, i1 true, !"_ZN4llvm15SmallPtrSetImplIPvE6insertES1_"}
!112 = distinct !{!112, !111, !"_ZN4llvm15SmallPtrSetImplIPvE6insertES1_: argument 0"}
!113 = !{!98}
!114 = !{!100, !98}
!115 = !{!104, !102}
!116 = !{!"_ZTSN4llvm5Twine8NodeKindE", !6, i64 0}
!117 = !{!"_ZTSN4llvm5TwineE", !6, i64 0, !6, i64 16, !116, i64 32, !116, i64 33}
!118 = !{!117, !116, i64 32}
!119 = !{!117, !116, i64 33}
!120 = !{!108, !106}
!121 = !{!"p1 _ZTSNSt3_V214error_categoryE", !12, i64 0}
!122 = !{!"_ZTSSt10error_code", !7, i64 0, !121, i64 8}
!123 = !{!122, !7, i64 0}
!124 = !{!122, !121, i64 8}
!125 = !{!45, !45, i64 0}
!126 = !{!46, !46, i64 0}
!127 = !{!110}
!128 = !{!17, !7, i64 8}
!129 = !{!17, !7, i64 12}
!130 = !{!112}
!131 = !{!12, !12, i64 0}
!132 = distinct !{!132, !90}
!133 = distinct !{null, null, null, null}
!134 = distinct !{!134, i1 true, !"_ZN4llvm21DefaultDOTGraphTraits18getGraphPropertiesIPKNS_19DataDependenceGraphEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_"}
!135 = distinct !{!135, !134, !"_ZN4llvm21DefaultDOTGraphTraits18getGraphPropertiesIPKNS_19DataDependenceGraphEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_: argument 0"}
!136 = !{!135}
!137 = distinct !{!137, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!138 = distinct !{!138, !137, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!139 = distinct !{!139, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!140 = distinct !{!140, !139, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!141 = !{!138}
!142 = !{!140}
!143 = distinct !{!143, i1 true, !"_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE17getNodeAttributesB5cxx11EPKNS_7DDGNodeES3_"}
!144 = distinct !{!144, !143, !"_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE17getNodeAttributesB5cxx11EPKNS_7DDGNodeES3_: argument 0"}
!145 = distinct !{!145, i1 true, !"_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE12getNodeLabelB5cxx11EPKNS_7DDGNodeES3_"}
!146 = distinct !{!146, !145, !"_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE12getNodeLabelB5cxx11EPKNS_7DDGNodeES3_: argument 0"}
!147 = distinct !{!147, i1 true, !"_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE12getNodeLabelB5cxx11EPKNS_7DDGNodeES3_"}
!148 = distinct !{!148, !147, !"_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE12getNodeLabelB5cxx11EPKNS_7DDGNodeES3_: argument 0"}
!149 = distinct !{!149, i1 true, !"_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE17getEdgeAttributesB5cxx11EPKNS_7DDGNodeENS_15mapped_iteratorIPKPNS_7DDGEdgeEPFS7_PKNS_6DGEdgeIS5_S9_EEES7_EES3_"}
!150 = distinct !{!150, !149, !"_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE17getEdgeAttributesB5cxx11EPKNS_7DDGNodeENS_15mapped_iteratorIPKPNS_7DDGEdgeEPFS7_PKNS_6DGEdgeIS5_S9_EEES7_EES3_: argument 0"}
!151 = distinct !{!151, !90}
!152 = distinct !{!152, i1 true, !"_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE17getEdgeAttributesB5cxx11EPKNS_7DDGNodeENS_15mapped_iteratorIPKPNS_7DDGEdgeEPFS7_PKNS_6DGEdgeIS5_S9_EEES7_EES3_"}
!153 = distinct !{!153, !152, !"_ZN4llvm14DOTGraphTraitsIPKNS_19DataDependenceGraphEE17getEdgeAttributesB5cxx11EPKNS_7DDGNodeENS_15mapped_iteratorIPKPNS_7DDGEdgeEPFS7_PKNS_6DGEdgeIS5_S9_EEES7_EES3_: argument 0"}
!154 = distinct !{!154, !90}
!155 = !{!144}
!156 = !{!146}
!157 = !{!148}
!158 = !{!150}
!159 = !{!153}
!160 = !{!33, !16, i64 9}
!161 = !{!"_ZTSN4llvm2cl11initializerIA4_cEE", !24, i64 0}
!162 = !{!161, !24, i64 0}
!163 = distinct !{!163, i1 false, !"LVerDomain"}
!164 = distinct !{!164, !163}
!165 = distinct !{!165, !163}
!166 = distinct !{!166, !90, !95, !96}
!167 = distinct !{!167, !90, !95}
!168 = distinct !{ptr @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10DependenceESt14default_deleteIS2_EELb0EE4growEm, null, null, null, null}
!169 = distinct !{null, null}
!170 = !{!"_ZTSN4llvm12function_refIFbPNS_11InstructionEEEE", !12, i64 0, !26, i64 8}
!171 = !{!170, !12, i64 0}
!172 = !{!170, !26, i64 8}
!173 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!174 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!175 = !{!164}
!176 = !{!165}
!177 = distinct !{!177, i1 false, !"LVerDomain"}
!178 = distinct !{!178, !177}
!179 = distinct !{!179, !177}
!180 = distinct !{!180, !90, !95, !96}
!181 = distinct !{!181, !90, !95}
!182 = distinct !{null, null, null, null}
!183 = !{!178}
!184 = !{!179}
!185 = !{!24, !24, i64 0}
end_hunk_0
