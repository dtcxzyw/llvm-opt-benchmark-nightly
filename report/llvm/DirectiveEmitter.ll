Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DirectiveEmitter?download=true
inline.NumInlined: 3564
inline.NumDeleted: 1167
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4llvm19IncludeGuardEmitterC2ERNS_11raw_ostreamENS_9StringRefE:bb.a
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit14

bb.q:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit11
  %.not.i12 = icmp eq i64 %3, 0
  br i1 %.not.i12, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit14, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr align 1 %2, i64 %3, i1 false)
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !100
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %3 ; 2 uses
  store ptr %i.bm, ptr %i.bf, align 8, !tbaa !100
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit14

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit14:    ; preds = %bb.p, %bb.q, %bb.r
  %i.bn = phi ptr [ %.pre27, %bb.p ], [ %i.bm, %bb.r ], [ %i.bc, %bb.q ] ; 2 uses
  %.0.i13 = phi ptr [ %i.bk, %bb.p ], [ %.0.i.i10, %bb.r ], [ %.0.i.i10, %bb.q ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i13, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !99
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = icmp ult i64 %i.bs, 2
  br i1 %i.bt, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit14
  %i.bu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i13, ptr noundef nonnull @.str.153, i64 noundef 2) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit17

bb.t:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit14
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i13, i64 32 ; 2 uses
  store i16 2570, ptr %i.bn, align 1
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !100
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !100
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit17

_ZN4llvm11raw_ostreamlsEPKc.exit17:               ; preds = %bb.s, %bb.t
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16NamespaceEmitterC2ERNS_11raw_ostreamERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(34) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(34) %2) #22
  %i.b = load ptr, ptr %3, align 8, !tbaa !105    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !106  ; 5 uses
  %.not.i.i.i = icmp ult i64 %i.d, 2
  br i1 %.not.i.i.i, label %_ZN4llvm16NamespaceEmitter4trimENS_9StringRefE.exit, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i

_ZNK4llvm9StringRef11starts_withES0_.exit.i.i:    ; preds = %bb.a
  %i.e = load i16, ptr %i.b, align 1
  %i.f = icmp ne i16 %i.e, 14906
  %i.g = zext i1 %i.f to i32
  %i.h = icmp eq i32 %i.g, 0                      ; 2 uses
  %i.i = add i64 %i.d, -2
  %.sroa.01.0.i.ph.idx = select i1 %i.h, i64 2, i64 0
  %.sroa.01.0.i.ph = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.01.0.i.ph.idx ; 2 uses
  %.sroa.4.0.i.ph = select i1 %i.h, i64 %i.i, i64 %i.d ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !110, !alias.scope !697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !697
  store i64 %.sroa.4.0.i.ph, ptr %i.a, align 8, !tbaa !93, !noalias !697
  %i.k = icmp ugt i64 %.sroa.4.0.i.ph, 15
  br i1 %i.k, label %bb.b, label %._crit_edge.i.i.i

_ZN4llvm16NamespaceEmitter4trimENS_9StringRefE.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !697)
  %.not.i = icmp eq ptr %i.b, null
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !110, !alias.scope !697
  br i1 %.not.i, label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread, label %.thread

.thread:                                          ; preds = %_ZN4llvm16NamespaceEmitter4trimENS_9StringRefE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !697
  store i64 %i.d, ptr %i.a, align 8, !tbaa !93, !noalias !697
  br label %._crit_edge.i.i.i

_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread:     ; preds = %_ZN4llvm16NamespaceEmitter4trimENS_9StringRefE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !106, !alias.scope !697
  store i8 0, ptr %i.l, align 8, !tbaa !33, !alias.scope !697
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #22 ; 2 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !105, !alias.scope !697
  %i.p = load i64, ptr %i.a, align 8, !tbaa !93, !noalias !697
  store i64 %i.p, ptr %i.j, align 8, !tbaa !33, !alias.scope !697
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.thread, %bb.b, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i
  %.sroa.01.0.i1318 = phi ptr [ %.sroa.01.0.i.ph, %bb.b ], [ %.sroa.01.0.i.ph, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i ], [ %i.b, %.thread ] ; 2 uses
  %.sroa.4.0.i1417 = phi i64 [ %.sroa.4.0.i.ph, %bb.b ], [ %.sroa.4.0.i.ph, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i ], [ %i.d, %.thread ] ; 2 uses
  %i.q = phi ptr [ %i.o, %bb.b ], [ %i.j, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i ], [ %i.l, %.thread ] ; 2 uses
  switch i64 %.sroa.4.0.i1417, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %.sroa.01.0.i1318, align 1, !tbaa !33
  store i8 %i.r, ptr %i.q, align 1, !tbaa !33
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr nonnull align 1 %.sroa.01.0.i1318, i64 %.sroa.4.0.i1417, i1 false)
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.s = load i64, ptr %i.a, align 8, !tbaa !93, !noalias !697 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !106, !alias.scope !697
  %i.u = load ptr, ptr %0, align 8, !tbaa !105, !alias.scope !697
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !697
  %.pre = load ptr, ptr %3, align 8, !tbaa !105   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = icmp eq ptr %.pre, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  %i.y = phi ptr [ %i.n, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread ], [ %i.w, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit ]
  %i.z = phi ptr [ null, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread ], [ %.pre, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit ]
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !33
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ab) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.ac, align 8, !tbaa !139
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !106
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_ZN4llvm11raw_ostreamlsEPKc.exit6, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !99
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !100 ; 2 uses
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = icmp ult i64 %i.am, 10
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.197, i64 noundef 10) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.aj, ptr noundef nonnull align 1 dereferenceable(10) @.str.197, i64 10, i1 false)
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !100
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 10
  store ptr %i.aq, ptr %i.ai, align 8, !tbaa !100
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.f, %bb.g
  %.0.i.i = phi ptr [ %i.ao, %bb.f ], [ %1, %bb.g ]
  %i.ar = load ptr, ptr %0, align 8, !tbaa !105
  %i.as = load i64, ptr %i.ad, align 8, !tbaa !106
  %i.at = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %i.ar, i64 noundef %i.as) #22 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !99
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !100 ; 2 uses
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = icmp ult i64 %i.ba, 4
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.bc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.at, ptr noundef nonnull @.str.198, i64 noundef 4) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit6

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i32 168459040, ptr %i.ax, align 1
  %i.bd = load ptr, ptr %i.aw, align 8, !tbaa !100
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store ptr %i.be, ptr %i.aw, align 8, !tbaa !100
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit6

_ZN4llvm11raw_ostreamlsEPKc.exit6:                ; preds = %bb.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL17generateEnumClassN4llvm8ArrayRefIPKNS_6RecordEEERNS_11raw_ostreamENS_9StringRefES7_b(ptr nofree readonly captures(address) %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::StringRef") align 8 captures(none) %5, i1 noundef zeroext %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 30 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100  ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ult i64 %i.g, 11
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str.200, i64 noundef 11) #22 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !100
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.d, ptr noundef nonnull align 1 dereferenceable(11) @.str.200, i64 11, i1 false)
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 11 ; 2 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !100
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %i.l = phi ptr [ %.pre, %bb.b ], [ %i.k, %bb.c ] ; 3 uses
  %.0.i.i = phi ptr [ %i.i, %bb.b ], [ %2, %bb.c ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !99
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp ugt i64 %4, %i.r
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.t = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %3, i64 noundef %4) #22 ; 2 uses
  %.phi.trans.insert87 = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.pre88 = load ptr, ptr %.phi.trans.insert87, align 8, !tbaa !100
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %3, i64 %4, i1 false)
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !100
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %4 ; 2 uses
  store ptr %i.v, ptr %i.o, align 8, !tbaa !100
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.d, %bb.e, %bb.f
  %i.w = phi ptr [ %.pre88, %bb.d ], [ %i.v, %bb.f ], [ %i.l, %bb.e ] ; 2 uses
  %.0.i = phi ptr [ %i.t, %bb.d ], [ %.0.i.i, %bb.f ], [ %.0.i.i, %bb.e ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !99
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp ult i64 %i.ab, 3
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.ad = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i, ptr noundef nonnull @.str.73, i64 noundef 3) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit26

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.w, ptr noundef nonnull align 1 dereferenceable(3) @.str.73, i64 3, i1 false)
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !100
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 3
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !100
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit26

_ZN4llvm11raw_ostreamlsEPKc.exit26:               ; preds = %bb.g, %bb.h
  %i.ah = icmp eq i64 %1, 0                       ; 2 uses
  br i1 %i.ah, label %bb.aj, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  store ptr %i.ai, ptr %8, align 8, !tbaa !110
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 11 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !106
  store i8 0, ptr %i.ai, align 8, !tbaa !33
  %.idx = shl nuw nsw i64 %1, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 12 uses
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.an = load ptr, ptr %0, align 8, !tbaa !35
  %.sroa.05.0.copyload.peel = load ptr, ptr %5, align 8, !tbaa !92
  %.sroa.26.0.copyload.peel = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !93
  call fastcc void @_ZL17getIdentifierNameB5cxx11PKN4llvm6RecordENS_9StringRefE(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef %i.an, ptr %.sroa.05.0.copyload.peel, i64 %.sroa.26.0.copyload.peel)
  %10 = load ptr, ptr %8, align 8, !tbaa !105     ; 6 uses
  %11 = icmp eq ptr %10, %i.ai
  %i.ao = load ptr, ptr %9, align 8, !tbaa !105   ; 5 uses
  %i.ap = icmp eq ptr %i.ao, %i.al                ; 2 uses
  br i1 %11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.peel: ; preds = %.lr.ph
  br i1 %i.ap, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.peel
  %i.aq = load i64, ptr %i.ai, align 8, !tbaa !33
  store ptr %i.ao, ptr %8, align 8, !tbaa !105
  %i.ar = load <2 x i64>, ptr %i.am, align 8, !tbaa !33
  store <2 x i64> %i.ar, ptr %i.aj, align 8, !tbaa !33
  %.not.i33.peel = icmp eq ptr %10, null
  br i1 %.not.i33.peel, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.peel
  store ptr %10, ptr %9, align 8, !tbaa !105
  store i64 %i.aq, ptr %i.al, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.peel: ; preds = %.lr.ph
  br i1 %i.ap, label %bb.k, label %.thread.i.peel

.thread.i.peel:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.peel
  store ptr %i.ao, ptr %8, align 8, !tbaa !105
  %i.as = load <2 x i64>, ptr %i.am, align 8, !tbaa !33
  store <2 x i64> %i.as, ptr %i.aj, align 8, !tbaa !33
  br label %bb.j

bb.j:                                             ; preds = %.thread.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.peel
  store ptr %i.al, ptr %9, align 8, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.peel

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.peel
  %i.at = load i64, ptr %i.am, align 8, !tbaa !106 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.au)
  switch i64 %i.at, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.peel
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.av = load i8, ptr %i.ao, align 1, !tbaa !33
  store i8 %i.av, ptr %10, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.peel

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %i.ao, i64 %i.at, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.peel: ; preds = %bb.m, %bb.l, %bb.k
  %i.aw = load i64, ptr %i.am, align 8, !tbaa !106 ; 2 uses
  store i64 %i.aw, ptr %i.aj, align 8, !tbaa !106
  %i.ax = load ptr, ptr %8, align 8, !tbaa !105
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aw
  store i8 0, ptr %i.ay, align 1, !tbaa !33
  %.pre.i.peel = load ptr, ptr %9, align 8, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.peel, %bb.j, %bb.i
  %i.az = phi ptr [ %10, %bb.i ], [ %i.al, %bb.j ], [ %.pre.i.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.peel ]
  store i64 0, ptr %i.am, align 8, !tbaa !106
  store i8 0, ptr %i.az, align 1, !tbaa !33
  %i.ba = load ptr, ptr %9, align 8, !tbaa !105   ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.al
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.peel
  %i.bc = load i64, ptr %i.al, align 8, !tbaa !33
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !100 ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = icmp ult i64 %i.bi, 2
  br i1 %i.bj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.peel
  store i16 8224, ptr %i.bf, align 1
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  store ptr %i.bl, ptr %i.c, align 8, !tbaa !100
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit39.peel

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.peel
  %i.bm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str.201, i64 noundef 2) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit39.peel

_ZN4llvm11raw_ostreamlsEPKc.exit39.peel:          ; preds = %bb.o, %bb.n
  %.0.i.i38.peel = phi ptr [ %i.bm, %bb.o ], [ %2, %bb.n ]
  %i.bn = load ptr, ptr %8, align 8, !tbaa !105
  %i.bo = load i64, ptr %i.aj, align 8, !tbaa !106
  %i.bp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i38.peel, ptr noundef %i.bn, i64 noundef %i.bo) #22 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !99
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !100 ; 2 uses
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = icmp ult i64 %i.bw, 2
  br i1 %i.bx, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit39.peel
  store i16 2604, ptr %i.bt, align 1
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !100
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  store ptr %i.bz, ptr %i.bs, align 8, !tbaa !100
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit42.peel

bb.q:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit39.peel
  %i.ca = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bp, ptr noundef nonnull @.str.202, i64 noundef 2) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit42.peel

_ZN4llvm11raw_ostreamlsEPKc.exit42.peel:          ; preds = %bb.p, %bb.q
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.cc = load ptr, ptr %i.c, align 8, !tbaa !100 ; 2 uses
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = icmp ult i64 %i.cf, 11
  br i1 %i.cg, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit42.peel
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.cc, ptr noundef nonnull align 1 dereferenceable(11) @.str.203, i64 11, i1 false)
  %i.ch = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 11
  store ptr %i.ci, ptr %i.c, align 8, !tbaa !100
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit45.peel

bb.s:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit42.peel
  %i.cj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str.203, i64 noundef 11) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit45.peel

_ZN4llvm11raw_ostreamlsEPKc.exit45.peel:          ; preds = %bb.s, %bb.r
  %.0.i.i44.peel = phi ptr [ %i.cj, %bb.s ], [ %2, %bb.r ]
  %i.ck = load ptr, ptr %8, align 8, !tbaa !105
  %i.cl = load i64, ptr %i.aj, align 8, !tbaa !106
  %i.cm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i44.peel, ptr noundef %i.ck, i64 noundef %i.cl) #22 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !99
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 32 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !100 ; 2 uses
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = icmp ult i64 %i.ct, 2
  br i1 %i.cu, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit45.peel
  store i16 2604, ptr %i.cq, align 1
  %i.cv = load ptr, ptr %i.cp, align 8, !tbaa !100
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  store ptr %i.cw, ptr %i.cp, align 8, !tbaa !100
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit48.peel

bb.u:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit45.peel
  %i.cx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.cm, ptr noundef nonnull @.str.202, i64 noundef 2) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit48.peel

_ZN4llvm11raw_ostreamlsEPKc.exit48.peel:          ; preds = %bb.u, %bb.t
  %.not.peel = icmp eq i64 %1, 1
  br i1 %.not.peel, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit48.peel
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.05.0.copyload = load ptr, ptr %5, align 8, !tbaa !92
  %.sroa.26.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !93
  br label %bb.z

._crit_edge:                                      ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit48, %_ZN4llvm11raw_ostreamlsEPKc.exit48.peel
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.da = load ptr, ptr %i.c, align 8, !tbaa !100 ; 2 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = icmp ult i64 %i.dd, 10
  br i1 %i.de, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge
  %i.df = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str.204, i64 noundef 10) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit29

bb.w:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.da, ptr noundef nonnull align 1 dereferenceable(10) @.str.204, i64 10, i1 false)
  %i.dg = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 10
  store ptr %i.dh, ptr %i.c, align 8, !tbaa !100
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit29

_ZN4llvm11raw_ostreamlsEPKc.exit29:               ; preds = %bb.v, %bb.w
  %.0.i.i28 = phi ptr [ %i.df, %bb.v ], [ %2, %bb.w ]
  %i.di = load ptr, ptr %8, align 8, !tbaa !105
  %i.dj = load i64, ptr %i.aj, align 8, !tbaa !106
  %i.dk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i28, ptr noundef %i.di, i64 noundef %i.dj) #22 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !99
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 32 ; 3 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !100 ; 2 uses
  %i.dp = ptrtoint ptr %i.dm to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = icmp ult i64 %i.dr, 2
  br i1 %i.ds, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit29
  %i.dt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dk, ptr noundef nonnull @.str.202, i64 noundef 2) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit32

bb.y:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit29
  store i16 2604, ptr %i.do, align 1
  %i.du = load ptr, ptr %i.dn, align 8, !tbaa !100
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  store ptr %i.dv, ptr %i.dn, align 8, !tbaa !100
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit32

_ZN4llvm11raw_ostreamlsEPKc.exit32:               ; preds = %bb.x, %bb.y
  %i.dw = load ptr, ptr %8, align 8, !tbaa !105   ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.ai
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit32
  %i.dy = load i64, ptr %i.ai, align 8, !tbaa !33
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.aj

bb.z:                                             ; preds = %.peel.next, %_ZN4llvm11raw_ostreamlsEPKc.exit48
  %.sroa.073.084 = phi ptr [ %i.cy, %.peel.next ], [ %i.fq, %_ZN4llvm11raw_ostreamlsEPKc.exit48 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.ea = load ptr, ptr %.sroa.073.084, align 8, !tbaa !35
  call fastcc void @_ZL17getIdentifierNameB5cxx11PKN4llvm6RecordENS_9StringRefE(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef %i.ea, ptr %.sroa.05.0.copyload, i64 %.sroa.26.0.copyload)
  %i.eb = load ptr, ptr %8, align 8, !tbaa !105   ; 6 uses
  %i.ec = icmp eq ptr %i.eb, %i.ai
  %i.ed = load ptr, ptr %9, align 8, !tbaa !105   ; 5 uses
  %i.ee = icmp eq ptr %i.ed, %i.al                ; 2 uses
  br i1 %i.ec, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.z
  br i1 %i.ee, label %bb.aa, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.z
  br i1 %i.ee, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ef = load i64, ptr %i.am, align 8, !tbaa !106 ; 3 uses
  %i.eg = icmp ult i64 %i.ef, 16
  call void @llvm.assume(i1 %i.eg)
  switch i64 %i.ef, label %bb.ac [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.eh = load i8, ptr %i.ed, align 1, !tbaa !33
  store i8 %i.eh, ptr %i.eb, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eb, ptr align 1 %i.ed, i64 %i.ef, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.ei = load i64, ptr %i.am, align 8, !tbaa !106 ; 2 uses
end_hunk_0
