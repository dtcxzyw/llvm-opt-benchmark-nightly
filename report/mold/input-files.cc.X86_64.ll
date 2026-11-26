Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/input-files.cc.X86_64?download=true
inline.NumInlined: 5152
inline.NumDeleted: 2387
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN4mold10SharedFileINS_6X86_64EE15resolve_symbolsERNS_7ContextIS1_EE:bb.a
  br i1 %i.ew, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZN4moldL8get_rankINS_6X86_64EEEmRKNS_6SymbolIT_EE.exit63
  %i.ex = sub nsw i64 %i.h, %i.ds
  %i.ey = sdiv i64 %i.ex, 4
  %i.ez = trunc i64 %i.ey to i32
  store i32 %i.ez, ptr %i.dq, align 4, !tbaa !95
  %.not.i.i65 = icmp eq i64 %i.r, 0
  %i.fa = or i64 %i.r, 3
  %spec.select.i.i = select i1 %.not.i.i65, i64 0, i64 %i.fa
  store i64 %spec.select.i.i, ptr %i.ct, align 8, !tbaa !520
  %i.fb = trunc i64 %.067 to i32
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ct, i64 20
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !105
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ct, i64 33 ; 2 uses
  %i.fe = load i16, ptr %i.fd, align 1
  %i.ff = or i16 %i.fe, 2048
  store i16 %i.ff, ptr %i.fd, align 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZN4moldL8get_rankINS_6X86_64EEEmRKNS_6SymbolIT_EE.exit63
  store atomic i8 0, ptr %i.cu release, align 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.r
  store atomic i8 0, ptr %i.aa release, align 1
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !89
  %.pre69 = load ptr, ptr %i.a, align 8, !tbaa !88
  br label %bb.ai

bb.ai:                                            ; preds = %bb.b, %bb.c, %bb.ah
  %i.fg = phi ptr [ %i.k, %bb.b ], [ %i.k, %bb.c ], [ %.pre69, %bb.ah ] ; 2 uses
  %i.fh = phi ptr [ %i.l, %bb.b ], [ %i.l, %bb.c ], [ %.pre, %bb.ah ] ; 2 uses
  %i.fi = add nuw nsw i64 %.067, 1                ; 2 uses
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fg to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = ashr exact i64 %i.fl, 2
  %i.fn = icmp ult i64 %i.fi, %i.fm
  br i1 %i.fn, label %bb.b, label %._crit_edge, !llvm.loop !1003
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local { ptr, i64 } @_ZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.545, align 8            ; 4 uses
  %3 = alloca %class.anon.412, align 8            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr %0, ptr %3, align 8, !tbaa !649
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr %3, ptr %2, align 8, !tbaa !548
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %2, ptr %i.b, align 8, !tbaa !548
  %i.c = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZN4mold10SharedFileINS3_6X86_64EE14get_symbols_atEPNS3_6SymbolIS5_EEEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSC_ENUlvE_8__invokeEv, ptr %i.c, align 8, !tbaa !548
  %i.d = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull @__once_proxy) #14 ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZSt9call_onceIZN4mold10SharedFileINS0_6X86_64EE14get_symbols_atEPNS0_6SymbolIS2_EEEUlvE_JEEvRSt9once_flagOT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #29
  unreachable

_ZSt9call_onceIZN4mold10SharedFileINS0_6X86_64EE14get_symbols_atEPNS0_6SymbolIS2_EEEUlvE_JEEvRSt9once_flagOT_DpOT0_.exit: ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !548
  store ptr null, ptr %i.c, align 8, !tbaa !548
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.e = load ptr, ptr @_ZN4mold20discarded_comdat_symINS_6X86_64EEE, align 8, !tbaa !91
  %i.f = icmp eq ptr %1, %i.e
  br i1 %i.f, label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt9call_onceIZN4mold10SharedFileINS0_6X86_64EE14get_symbols_atEPNS0_6SymbolIS2_EEEUlvE_JEEvRSt9once_flagOT_DpOT0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !95
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sext i32 %i.h to i64
  %i.k = shl nsw i64 %i.j, 2
  %i.l = add nsw i64 %i.k, %i.i
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !105
  %i.q = sext i32 %i.p to i64
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !106
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.q
  br label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit

_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit:        ; preds = %_ZSt9call_onceIZN4mold10SharedFileINS0_6X86_64EE14get_symbols_atEPNS0_6SymbolIS2_EEEUlvE_JEEvRSt9once_flagOT_DpOT0_.exit, %bb.c
  %.0.i = phi ptr [ %i.s, %bb.c ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %_ZSt9call_onceIZN4mold10SharedFileINS0_6X86_64EE14get_symbols_atEPNS0_6SymbolIS2_EEEUlvE_JEEvRSt9once_flagOT_DpOT0_.exit ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !650
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !650
  %i.y = call { ptr, ptr } @_ZNKSt6ranges16__equal_range_fnclITkSt16forward_iteratorN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS4_6X86_64EEESt6vectorIS8_SaIS8_EEEETkSt12sentinel_forIT_ESD_NS4_7IntegerImLb1ELi8EEEZNS4_10SharedFileIS6_E14get_symbols_atES8_EUlS8_E_TkSt26indirect_strict_weak_orderIPKT1_NSt8__detail11__projectedISF_T2_E6__typeEENS_4lessEEENS_8subrangeISF_SF_Xqu18sized_sentinel_forISF_SF_ELNS_13subrange_kindE1ELSW_0EEEESF_T0_RSN_T3_SR_(ptr noundef nonnull align 1 dereferenceable(1) @_ZNSt6ranges11equal_rangeE, ptr %i.v, ptr %i.x, ptr noundef nonnull align 1 dereferenceable(8) %i.u) ; 2 uses
  %i.z = extractvalue { ptr, ptr } %i.y, 0        ; 2 uses
  %i.aa = extractvalue { ptr, ptr } %i.y, 1
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.z, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.ae, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local noundef i64 @_ZN4mold10SharedFileINS_6X86_64EE13get_alignmentEPNS_6SymbolIS1_EE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr @_ZN4mold20discarded_comdat_symINS_6X86_64EEE, align 8, !tbaa !91
  %i.c = icmp eq ptr %1, %i.b
  br i1 %i.c, label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !95
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sext i32 %i.e to i64
  %i.h = shl nsw i64 %i.g, 2
  %i.i = add nsw i64 %i.h, %i.f
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !105
  %i.n = sext i32 %i.m to i64
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !106
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.n
  br label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit

_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit:        ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.p, %bb.b ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i, i64 6
  %.0.copyload.i = load i16, ptr %i.q, align 1
  %i.r = zext i16 %.0.copyload.i to i64
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.t = getelementptr inbounds nuw [64 x i8], ptr %i.s, i64 %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %.0.copyload.i5 = load i64, ptr %i.u, align 1
  %.sroa.speculated9 = tail call i64 @llvm.smax.i64(i64 %.0.copyload.i5, i64 1) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !519  ; 3 uses
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit
  %neg = sub i64 0, %i.w
  %i.x = and i64 %i.w, %neg
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.x, i64 %.sroa.speculated9)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit
  %.0 = phi i64 [ %.sroa.speculated9, %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit ], [ %.sroa.speculated, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold10SharedFileINS_6X86_64EE13get_dt_neededERNS_7ContextIS1_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.103") align 8 %0, ptr noundef nonnull align 8 dereferenceable(480) %1, ptr noundef nonnull align 8 dereferenceable(14448) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !86   ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.d, 6
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_ZN4mold9InputFileINS_6X86_64EE12find_sectionEl.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.sroa.010.015.i = phi ptr [ %i.h, %bb.b ], [ %i.b, %bb.a ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i, i64 4
  %.0.copyload.i.i = load i32, ptr %i.g, align 1
  %.not.i = icmp eq i32 %.0.copyload.i.i, 6
  br i1 %.not.i, label %_ZN4mold9InputFileINS_6X86_64EE12find_sectionEl.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i, i64 64 ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.e
  br i1 %i.i, label %_ZN4mold9InputFileINS_6X86_64EE12find_sectionEl.exit.thread, label %.lr.ph.i

_ZN4mold9InputFileINS_6X86_64EE12find_sectionEl.exit: ; preds = %.lr.ph.i
  %i.j = tail call { ptr, i64 } @_ZN4mold9InputFileINS_6X86_64EE8get_dataINS_6ElfDynIS1_EEEESt4spanIT_Lm18446744073709551615EERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE(ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(14448) %2, ptr noundef nonnull align 1 dereferenceable(64) %.sroa.010.015.i) ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0        ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.j, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.l, 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  %i.n = icmp eq i64 %i.l, 0
  br i1 %i.n, label %_ZN4mold9InputFileINS_6X86_64EE12find_sectionEl.exit.thread.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4mold9InputFileINS_6X86_64EE12find_sectionEl.exit
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit
  %i.r = phi ptr [ null, %.lr.ph ], [ %i.as, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ] ; 6 uses
  %i.s = phi ptr [ null, %.lr.ph ], [ %i.at, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ] ; 6 uses
  %.sroa.018.029 = phi ptr [ %i.k, %.lr.ph ], [ %i.av, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ] ; 3 uses
  %i.t = phi ptr [ null, %.lr.ph ], [ %i.au, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ] ; 8 uses
  %.0.copyload.i = load i64, ptr %.sroa.018.029, align 1
  %i.u = icmp eq i64 %.0.copyload.i, 1
  br i1 %i.u, label %bb.d, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit

bb.d:                                             ; preds = %bb.c
  %.0.copyload.i11 = load i32, ptr %i.o, align 1
  %i.v = zext i32 %.0.copyload.i11 to i64
  %i.w = tail call { i64, ptr } @_ZN4mold9InputFileINS_6X86_64EE10get_stringERNS_7ContextIS1_EEl(ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(14448) %2, i64 noundef %i.v)
  %i.x = extractvalue { i64, ptr } %i.w, 1
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.018.029, i64 8
  %.0.copyload.i12 = load i64, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %.0.copyload.i12 ; 3 uses
  %i.aa = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #14 ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !83
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.z, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !85
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  store ptr %i.ab, ptr %i.p, align 8, !tbaa !643
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = ptrtoint ptr %i.s to i64
  %i.ad = ptrtoint ptr %i.t to i64                ; 2 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775792
  br i1 %i.af, label %bb.g, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.t, ptr %0, align 8
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #29
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.ag = ashr exact i64 %i.ae, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 576460752303423487)
  %i.ak = select i1 %i.ai, i64 576460752303423487, i64 %i.aj ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.al = shl nuw nsw i64 %i.ak, 4
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #30 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae ; 2 uses
  store i64 %i.aa, ptr %i.an, align 8, !tbaa !83
  %.sroa.5.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.z, ptr %.sroa.5.0..sroa_idx15, align 8, !tbaa !85
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.t, %i.r
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %i.am, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i ], [ %i.t, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !647, !alias.scope !1007
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.r
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !7

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.am, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ap, %.lr.ph.i.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  %3 = ptrtoint ptr %i.r to i64
  %4 = sub i64 %3, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %4) #28
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.aq, ptr %i.p, align 8, !tbaa !643
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ak ; 2 uses
  store ptr %i.ar, ptr %i.q, align 8, !tbaa !634
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.e, %bb.c
  %i.as = phi ptr [ %i.ar, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.r, %bb.e ], [ %i.r, %bb.c ]
  %i.at = phi ptr [ %i.aq, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.ab, %bb.e ], [ %i.s, %bb.c ]
  %i.au = phi ptr [ %i.am, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.t, %bb.e ], [ %i.t, %bb.c ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.018.029, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.m
  br i1 %i.aw, label %_ZN4mold9InputFileINS_6X86_64EE12find_sectionEl.exit.thread.loopexit, label %bb.c

_ZN4mold9InputFileINS_6X86_64EE12find_sectionEl.exit.thread.loopexit: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit, %_ZN4mold9InputFileINS_6X86_64EE12find_sectionEl.exit
  %.lcssa27 = phi ptr [ null, %_ZN4mold9InputFileINS_6X86_64EE12find_sectionEl.exit ], [ %i.au, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ]
  store ptr %.lcssa27, ptr %0, align 8
  br label %_ZN4mold9InputFileINS_6X86_64EE12find_sectionEl.exit.thread

_ZN4mold9InputFileINS_6X86_64EE12find_sectionEl.exit.thread: ; preds = %bb.b, %_ZN4mold9InputFileINS_6X86_64EE12find_sectionEl.exit.thread.loopexit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr dso_local { ptr, i64 } @_ZN4mold9InputFileINS_6X86_64EE8get_dataINS_6ElfDynIS1_EEEESt4spanIT_Lm18446744073709551615EERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef nonnull align 1 dereferenceable(64) %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %3 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %4 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.0.copyload.i.i = load i64, ptr %i.c, align 1  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.0.copyload.i10.i = load i64, ptr %i.d, align 1 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !81
  %i.g = add nuw nsw i64 %.0.copyload.i10.i, %.0.copyload.i.i
  %i.h = icmp slt i64 %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZN4mold9InputFileINS_6X86_64EE10get_stringERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %3, ptr noundef nonnull align 8 dereferenceable(14448) %1) #14
  %i.i = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_9InputFileIS1_EEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %3, ptr noundef nonnull align 8 dereferenceable(312) %0)
  %i.j = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA35_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.i, ptr noundef nonnull align 1 dereferenceable(35) @.str.6)
  %i.k = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRKNS_7IntegerImLb1ELi8EEEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.j, ptr noundef nonnull align 1 dereferenceable(8) %i.c) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %3) #29
  unreachable

_ZN4mold9InputFileINS_6X86_64EE10get_stringERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE.exit: ; preds = %bb.a
  %i.l = and i64 %.0.copyload.i10.i, 15
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4mold9InputFileINS_6X86_64EE10get_stringERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %4, ptr noundef nonnull align 8 dereferenceable(14448) %1) #14
  %i.m = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_9InputFileIS1_EEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %4, ptr noundef nonnull align 8 dereferenceable(312) %0)
  %i.n = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA20_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.m, ptr noundef nonnull align 1 dereferenceable(20) @.str.84) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %4) #29
  unreachable

bb.d:                                             ; preds = %_ZN4mold9InputFileINS_6X86_64EE10get_stringERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !82
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.0.copyload.i.i
  %i.r = lshr exact i64 %.0.copyload.i10.i, 4
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.q, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.r, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local { i64, ptr } @_ZN4mold10SharedFileINS_6X86_64EE12get_dt_auditERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !86   ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.d, 6
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_ZN4mold9InputFileINS_6X86_64EE12find_sectionEl.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.sroa.010.015.i = phi ptr [ %i.h, %bb.b ], [ %i.b, %bb.a ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i, i64 4
  %.0.copyload.i.i = load i32, ptr %i.g, align 1
  %.not.i = icmp eq i32 %.0.copyload.i.i, 6
  br i1 %.not.i, label %_ZN4mold9InputFileINS_6X86_64EE12find_sectionEl.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i, i64 64 ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.e
  br i1 %i.i, label %_ZN4mold9InputFileINS_6X86_64EE12find_sectionEl.exit.thread, label %.lr.ph.i

_ZN4mold9InputFileINS_6X86_64EE12find_sectionEl.exit: ; preds = %.lr.ph.i
  %i.j = tail call { ptr, i64 } @_ZN4mold9InputFileINS_6X86_64EE8get_dataINS_6ElfDynIS1_EEEESt4spanIT_Lm18446744073709551615EERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef nonnull align 1 dereferenceable(64) %.sroa.010.015.i) ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0        ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.j, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.l, 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  %i.n = icmp eq i64 %i.l, 0
  br i1 %i.n, label %_ZN4mold9InputFileINS_6X86_64EE12find_sectionEl.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4mold9InputFileINS_6X86_64EE12find_sectionEl.exit, %.critedge
  %.sroa.020.034 = phi ptr [ %i.o, %.critedge ], [ %i.k, %_ZN4mold9InputFileINS_6X86_64EE12find_sectionEl.exit ] ; 3 uses
  %.0.copyload.i = load i64, ptr %.sroa.020.034, align 1
  %.not14 = icmp eq i64 %.0.copyload.i, 1879047932
  br i1 %.not14, label %.critedge16, label %.critedge

.critedge:                                        ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.020.034, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.m
  br i1 %i.p, label %_ZN4mold9InputFileINS_6X86_64EE12find_sectionEl.exit.thread, label %.lr.ph

.critedge16:                                      ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i, i64 40
  %.0.copyload.i17 = load i32, ptr %i.q, align 1
  %i.r = zext i32 %.0.copyload.i17 to i64
  %i.s = tail call { i64, ptr } @_ZN4mold9InputFileINS_6X86_64EE10get_stringERNS_7ContextIS1_EEl(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef %i.r)
  %i.t = extractvalue { i64, ptr } %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.020.034, i64 8
  %.0.copyload.i18 = load i64, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %.0.copyload.i18 ; 2 uses
  %i.w = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.v) #14
  br label %_ZN4mold9InputFileINS_6X86_64EE12find_sectionEl.exit.thread

_ZN4mold9InputFileINS_6X86_64EE12find_sectionEl.exit.thread: ; preds = %bb.b, %.critedge, %_ZN4mold9InputFileINS_6X86_64EE12find_sectionEl.exit, %bb.a, %.critedge16
  %.sroa.025.2 = phi i64 [ %i.w, %.critedge16 ], [ 0, %_ZN4mold9InputFileINS_6X86_64EE12find_sectionEl.exit ], [ 0, %bb.a ], [ 0, %.critedge ], [ 0, %bb.b ]
  %.sroa.326.2 = phi ptr [ %i.v, %.critedge16 ], [ @.str.8, %_ZN4mold9InputFileINS_6X86_64EE12find_sectionEl.exit ], [ @.str.8, %bb.a ], [ @.str.8, %.critedge ], [ @.str.8, %bb.b ]
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.025.2, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.326.2, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local noundef zeroext i1 @_ZN4mold10SharedFileINS_6X86_64EE11is_readonlyEPNS_6SymbolIS1_EE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !82   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.0.copyload.i = load i64, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.copyload.i ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.0.copyload.i23 = load i16, ptr %i.g, align 1  ; 2 uses
  %i.h = zext i16 %.0.copyload.i23 to i64
  %i.i = load ptr, ptr @_ZN4mold20discarded_comdat_symINS_6X86_64EEE, align 8, !tbaa !91
  %i.j = icmp eq ptr %1, %i.i
  br i1 %i.j, label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !95
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sext i32 %i.l to i64
  %i.o = shl nsw i64 %i.n, 2
  %i.p = add nsw i64 %i.o, %i.m
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !105
  %i.u = sext i32 %i.t to i64
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !106
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.u
  br label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit

_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit:        ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.w, %bb.b ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %bb.a ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %.0.copyload.i24 = load i64, ptr %i.x, align 1  ; 2 uses
  %.idx = mul nuw nsw i64 %i.h, 56
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  %.not39 = icmp eq i16 %.0.copyload.i23, 0
  br i1 %.not39, label %.critedge22, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit, %.critedge
  %.sroa.031.036 = phi ptr [ %i.af, %.critedge ], [ %i.f, %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit ] ; 5 uses
  %.0.copyload.i25 = load i32, ptr %.sroa.031.036, align 1
  switch i32 %.0.copyload.i25, label %.critedge [
    i32 1, label %bb.c
    i32 1685382482, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph, %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.031.036, i64 4
  %.0.copyload.i27 = load i32, ptr %i.z, align 1
  %i.aa = and i32 %.0.copyload.i27, 2
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.031.036, i64 16
  %.0.copyload.i28 = load i64, ptr %i.ab, align 1 ; 2 uses
  %.not20 = icmp ugt i64 %.0.copyload.i28, %.0.copyload.i24
  br i1 %.not20, label %.critedge, label %bb.e
end_hunk_0
