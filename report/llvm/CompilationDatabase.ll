Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CompilationDatabase?download=true
inline.NumInlined: 1702
inline.NumDeleted: 929
begin_hunk_0_@_ZN5clang7tooling19CompilationDatabase20autoDetectFromSourceEN4llvm9StringRefERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %3, ptr %i.ad, align 8, !alias.scope !142
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 2, ptr %i.ae, align 8, !tbaa !57, !alias.scope !142
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 4, ptr %i.af, align 1, !tbaa !58, !alias.scope !142
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(34) %7) #19
  %i.ag = load ptr, ptr %3, align 8, !tbaa !48    ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  %i.aj = load ptr, ptr %6, align 8, !tbaa !48    ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.al = icmp eq ptr %i.aj, %i.ak                ; 2 uses
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit27
  br i1 %i.al, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit27
  br i1 %i.al, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !41 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.ao)
  switch i64 %i.an, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.ap = load i8, ptr %i.aj, align 1, !tbaa !42
  store i8 %i.ap, ptr %i.ag, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.aj, i64 %i.an, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.aq = load i64, ptr %i.am, align 8, !tbaa !41 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !41
  %i.as = load ptr, ptr %3, align 8, !tbaa !48
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !42
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.aj, ptr %3, align 8, !tbaa !48
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aw = load <2 x i64>, ptr %i.av, align 8, !tbaa !42
  store <2 x i64> %i.aw, ptr %i.au, align 8, !tbaa !42
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ax = load i64, ptr %i.ah, align 8, !tbaa !42
  store ptr %i.aj, ptr %3, align 8, !tbaa !48
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ba = load <2 x i64>, ptr %i.ay, align 8, !tbaa !42
  store <2 x i64> %i.ba, ptr %i.az, align 8, !tbaa !42
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ag, ptr %6, align 8, !tbaa !48
  store i64 %i.ax, ptr %i.ak, align 8, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ak, ptr %6, align 8, !tbaa !48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.bb = phi ptr [ %i.ag, %bb.f ], [ %i.ak, %bb.g ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.bc, align 8, !tbaa !41
  store i8 0, ptr %i.bb, align 1, !tbaa !42
  %i.bd = load ptr, ptr %6, align 8, !tbaa !48    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !42
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.bi = load ptr, ptr %4, align 8, !tbaa !52    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.d
  br i1 %i.bj, label %_ZN4llvm11SmallVectorIcLj1024EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.bi) #19
  br label %_ZN4llvm11SmallVectorIcLj1024EED2Ev.exit

_ZN4llvm11SmallVectorIcLj1024EED2Ev.exit:         ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void
}

declare void @_ZN5clang7tooling15getAbsolutePathB5cxx11EN4llvm9StringRefE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64) local_unnamed_addr #6

declare { ptr, i64 } @_ZN4llvm3sys4path11parent_pathENS_9StringRefENS1_5StyleE(ptr, i64, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL36findCompilationDatabaseFromDirectoryN4llvm9StringRefERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %0, ptr %1, i64 %2, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(32) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 32 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.b) #19
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.b, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 344
  store ptr null, ptr %i.c, align 8, !tbaa !164
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 352
  store i8 0, ptr %i.d, align 8, !tbaa !165
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 353
  store i8 0, ptr %i.e, align 1, !tbaa !166
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !34
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.i = getelementptr i8, ptr %i.g, i64 -24      ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %4, i64 %i.j
  store ptr %i.h, ptr %i.k, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !168
  %i.m = load ptr, ptr %4, align 8, !tbaa !34
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %4, i64 %i.o
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.p, ptr noundef null) #19
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !34
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.t = getelementptr i8, ptr %i.r, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 %i.u
  store ptr %i.s, ptr %i.v, align 8, !tbaa !34
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !34
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %i.q, i64 %i.y
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.z, ptr noundef null) #19
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.aa, ptr %4, align 8, !tbaa !34
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.ac = getelementptr i8, ptr %i.aa, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %4, i64 %i.ad
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !34
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %4, align 8, !tbaa !34
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.b, align 8, !tbaa !34
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.q, align 8, !tbaa !34
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.af, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ah) #19
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.af, align 8, !tbaa !34
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i32 24, ptr %i.ai, align 8, !tbaa !172
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 4 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !38
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i64 0, ptr %i.al, align 8, !tbaa !41
  store i8 0, ptr %i.ak, align 8, !tbaa !42
  %i.am = load ptr, ptr %4, align 8, !tbaa !34
  %i.an = getelementptr i8, ptr %i.am, i64 -24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds i8, ptr %4, i64 %i.ao
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ap, ptr noundef nonnull %i.af) #19
  %i.aq = icmp eq i64 %2, 0
  br i1 %i.aq, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %i.ar, ptr %5, align 8, !tbaa !38
  store i64 0, ptr %i.as, align 8, !tbaa !41
  store i8 0, ptr %i.ar, align 8, !tbaa !42
  call void @_ZN5clang7tooling19CompilationDatabase17loadFromDirectoryEN4llvm9StringRefERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(32) %5)
  %i.av = load ptr, ptr %0, align 8, !tbaa !45
  %.not.peel = icmp eq ptr %i.av, null
  br i1 %.not.peel, label %_ZNSt10unique_ptrIN5clang7tooling19CompilationDatabaseESt14default_deleteIS2_EED2Ev.exit.peel, label %.critedge11

_ZNSt10unique_ptrIN5clang7tooling19CompilationDatabaseESt14default_deleteIS2_EED2Ev.exit.peel: ; preds = %.lr.ph
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.11, i64 noundef 33) #19 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %.not.i12.peel = icmp eq ptr %1, null
  store ptr %i.at, ptr %6, align 8, !tbaa !38, !alias.scope !173
  br i1 %.not.i12.peel, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN5clang7tooling19CompilationDatabaseESt14default_deleteIS2_EED2Ev.exit.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !173
  store i64 %2, ptr %i.a, align 8, !tbaa !47, !noalias !173
  %i.ax = icmp ugt i64 %2, 15
  br i1 %i.ax, label %._crit_edge.i.i.i.peel.thread, label %._crit_edge.i.i.i.peel

._crit_edge.i.i.i.peel.thread:                    ; preds = %bb.b
  %i.ay = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #19 ; 2 uses
  store ptr %i.ay, ptr %6, align 8, !tbaa !48, !alias.scope !173
  %i.az = load i64, ptr %i.a, align 8, !tbaa !47, !noalias !173
  store i64 %i.az, ptr %i.at, align 8, !tbaa !42, !alias.scope !173
  br label %bb.c

._crit_edge.i.i.i.peel:                           ; preds = %bb.b
  %cond.peel = icmp eq i64 %2, 1
  br i1 %cond.peel, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i.i.peel.thread, %._crit_edge.i.i.i.peel
  %i.ba = phi ptr [ %i.ay, %._crit_edge.i.i.i.peel.thread ], [ %i.at, %._crit_edge.i.i.i.peel ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.peel

bb.d:                                             ; preds = %._crit_edge.i.i.i.peel
  %i.bb = load i8, ptr %1, align 1, !tbaa !42
  store i8 %i.bb, ptr %i.at, align 8, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.peel: ; preds = %bb.d, %bb.c
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !47, !noalias !173 ; 2 uses
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !41, !alias.scope !173
  %i.bd = load ptr, ptr %6, align 8, !tbaa !48, !alias.scope !173
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  store i8 0, ptr %i.be, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !173
  %.pre = load ptr, ptr %6, align 8, !tbaa !48
  %.pre35 = load i64, ptr %i.au, align 8, !tbaa !41
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.peel

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN5clang7tooling19CompilationDatabaseESt14default_deleteIS2_EED2Ev.exit.peel
  store i64 0, ptr %i.au, align 8, !tbaa !41, !alias.scope !173
  store i8 0, ptr %i.at, align 8, !tbaa !42, !alias.scope !173
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.peel

_ZNK4llvm9StringRef3strB5cxx11Ev.exit.peel:       ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.peel
  %i.bf = phi i64 [ 0, %bb.e ], [ %.pre35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.peel ]
  %i.bg = phi ptr [ %i.at, %bb.e ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.peel ]
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef %i.bg, i64 noundef %i.bf) #19 ; 2 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull @.str.12, i64 noundef 25) #19 ; 0 uses
  %i.bj = load ptr, ptr %5, align 8, !tbaa !48
  %i.bk = load i64, ptr %i.as, align 8, !tbaa !41
  %i.bl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef %i.bj, i64 noundef %i.bk) #19 ; 0 uses
  %i.bm = load ptr, ptr %6, align 8, !tbaa !48    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.at
  br i1 %i.bn, label %.critedge.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.peel
  %i.bo = load i64, ptr %i.at, align 8, !tbaa !42
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #21
  br label %.critedge.peel

.critedge.peel:                                   ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.bq = call { ptr, i64 } @_ZN4llvm3sys4path11parent_pathENS_9StringRefENS1_5StyleE(ptr %1, i64 %2, i32 noundef 0) #19 ; 2 uses
  %i.br = extractvalue { ptr, i64 } %i.bq, 1      ; 2 uses
  %i.bs = load ptr, ptr %5, align 8, !tbaa !48    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.ar
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.peel: ; preds = %.critedge.peel
  %i.bu = load i64, ptr %i.ar, align 8, !tbaa !42
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.peel: ; preds = %.critedge.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.bw = icmp eq i64 %i.br, 0
  br i1 %i.bw, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %.pn = phi { ptr, i64 } [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ], [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.peel ]
  %.sroa.5.027 = phi i64 [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.peel ] ; 2 uses
  %.sroa.0.030 = extractvalue { ptr, i64 } %.pn, 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %i.ar, ptr %5, align 8, !tbaa !38
  store i64 0, ptr %i.as, align 8, !tbaa !41
  store i8 0, ptr %i.ar, align 8, !tbaa !42
  call void @_ZN5clang7tooling19CompilationDatabase17loadFromDirectoryEN4llvm9StringRefERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %0, ptr %.sroa.0.030, i64 %.sroa.5.027, ptr noundef nonnull align 8 dereferenceable(32) %5)
  %i.bx = load ptr, ptr %0, align 8, !tbaa !45
  %.not = icmp eq ptr %i.bx, null
  br i1 %.not, label %.critedge, label %.critedge11

.critedge:                                        ; preds = %.peel.next
  %i.by = call { ptr, i64 } @_ZN4llvm3sys4path11parent_pathENS_9StringRefENS1_5StyleE(ptr %.sroa.0.030, i64 %.sroa.5.027, i32 noundef 0) #19 ; 2 uses
  %i.bz = extractvalue { ptr, i64 } %i.by, 1      ; 2 uses
  %i.ca = load ptr, ptr %5, align 8, !tbaa !48    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.ar
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %.critedge
  %i.cc = load i64, ptr %i.ar, align 8, !tbaa !42
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.ce = icmp eq i64 %i.bz, 0
  br i1 %i.ce, label %._crit_edge, label %.peel.next, !llvm.loop !145

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.peel, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  store ptr %i.cf, ptr %7, align 8, !tbaa !38, !alias.scope !177
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i64 0, ptr %i.cg, align 8, !tbaa !41, !alias.scope !177
  store i8 0, ptr %i.cf, align 8, !tbaa !42, !alias.scope !177
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !178, !noalias !177 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ci, null
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !177 ; 2 uses
  %i.cl = icmp ugt ptr %i.ci, %i.ck
  %.08.i.i.i = select i1 %i.cl, ptr %i.ci, ptr %i.ck ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !179, !noalias !177 ; 2 uses
  %i.co = ptrtoint ptr %.08.i.i.i to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.cn, i64 noundef %i.cq) #19 ; 0 uses
  br label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.g:                                             ; preds = %._crit_edge
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.aj) #19
  br label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.g
  %i.cs = load ptr, ptr %3, align 8, !tbaa !48    ; 6 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  %i.cv = load ptr, ptr %7, align 8, !tbaa !48    ; 5 uses
  %i.cw = icmp eq ptr %i.cv, %i.cf                ; 2 uses
  br i1 %i.cu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.cw, label %bb.h, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.cw, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cx = load i64, ptr %i.cg, align 8, !tbaa !41 ; 3 uses
  %i.cy = icmp ult i64 %i.cx, 16
  call void @llvm.assume(i1 %i.cy)
  switch i64 %i.cx, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.cz = load i8, ptr %i.cv, align 1, !tbaa !42
  store i8 %i.cz, ptr %i.cs, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cs, ptr align 1 %i.cv, i64 %i.cx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.da = load i64, ptr %i.cg, align 8, !tbaa !41 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.da, ptr %i.db, align 8, !tbaa !41
  %i.dc = load ptr, ptr %3, align 8, !tbaa !48
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.da
  store i8 0, ptr %i.dd, align 1, !tbaa !42
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cv, ptr %3, align 8, !tbaa !48
  %i.df = load <2 x i64>, ptr %i.cg, align 8, !tbaa !42
  store <2 x i64> %i.df, ptr %i.de, align 8, !tbaa !42
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.dg = load i64, ptr %i.ct, align 8, !tbaa !42
  store ptr %i.cv, ptr %3, align 8, !tbaa !48
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.di = load <2 x i64>, ptr %i.cg, align 8, !tbaa !42
  store <2 x i64> %i.di, ptr %i.dh, align 8, !tbaa !42
  %.not.i16 = icmp eq ptr %i.cs, null
  br i1 %.not.i16, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.cs, ptr %7, align 8, !tbaa !48
  store i64 %i.dg, ptr %i.cf, align 8, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.cf, ptr %7, align 8, !tbaa !48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.k, %bb.l
  %i.dj = phi ptr [ %i.cs, %bb.k ], [ %i.cf, %bb.l ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.cg, align 8, !tbaa !41
  store i8 0, ptr %i.dj, align 1, !tbaa !42
  %i.dk = load ptr, ptr %7, align 8, !tbaa !48    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cf
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.dm = load i64, ptr %i.cf, align 8, !tbaa !42
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  store ptr null, ptr %0, align 8, !tbaa !50
  br label %bb.m

.critedge11:                                      ; preds = %.peel.next, %.lr.ph
  %i.do = load ptr, ptr %5, align 8, !tbaa !48    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.ar
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %.critedge11
  %i.dq = load i64, ptr %i.ar, align 8, !tbaa !42
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %.critedge11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.ds = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ds, ptr %4, align 8, !tbaa !34
  %i.dt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.du = getelementptr i8, ptr %i.ds, i64 -24
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = getelementptr inbounds i8, ptr %4, i64 %i.dv
  store ptr %i.dt, ptr %i.dw, align 8, !tbaa !34
  %i.dx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.dx, ptr %i.q, align 8, !tbaa !34
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.af, align 8, !tbaa !34
  %i.dy = load ptr, ptr %i.aj, align 8, !tbaa !48 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.ak
  br i1 %i.dz, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ea = load i64, ptr %i.ak, align 8, !tbaa !42
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #21
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.af, align 8, !tbaa !34
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #19
  store ptr %i.g, ptr %4, align 8, !tbaa !34
  %i.ec = load i64, ptr %i.i, align 8
  %i.ed = getelementptr inbounds i8, ptr %4, i64 %i.ec
  store ptr %i.h, ptr %i.ed, align 8, !tbaa !34
  store i64 0, ptr %i.l, align 8, !tbaa !168
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
end_hunk_0
