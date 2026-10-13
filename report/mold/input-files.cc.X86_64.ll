Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/input-files.cc.X86_64?download=true
inline.NumInlined: 5152
inline.NumDeleted: 2381
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN4mold10SharedFileINS_6X86_64EE15resolve_symbolsERNS_7ContextIS1_EE:bb.a
  br label %_ZN4moldL8get_rankINS_6X86_64EEEmRKNS_6SymbolIT_EE.exit63

_ZN4moldL8get_rankINS_6X86_64EEEmRKNS_6SymbolIT_EE.exit63: ; preds = %_ZN4moldL8get_rankINS_6X86_64EEEmPNS_9InputFileIT_EERKNS_6ElfSymIS3_EEb.exit50, %_ZN4moldL8get_rankINS_6X86_64EEEmPNS_9InputFileIT_EERKNS_6ElfSymIS3_EEb.exit.i60
  %.0.i62 = phi i64 [ %i.ev, %_ZN4moldL8get_rankINS_6X86_64EEEmPNS_9InputFileIT_EERKNS_6ElfSymIS3_EEb.exit.i60 ], [ 117440512, %_ZN4moldL8get_rankINS_6X86_64EEEmPNS_9InputFileIT_EERKNS_6ElfSymIS3_EEb.exit50 ]
  %i.ew = icmp ult i64 %i.dp, %.0.i62
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
  br i1 %i.fn, label %bb.b, label %._crit_edge, !llvm.loop !1001
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
  %i.s = phi ptr [ null, %.lr.ph ], [ %i.at, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ] ; 5 uses
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
  %i.ac = ptrtoint ptr %i.r to i64
  %i.ad = ptrtoint ptr %i.t to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !647, !alias.scope !1005
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
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ae) #28
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

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.031.036, i64 40
  %.0.copyload.i30 = load i64, ptr %i.ac, align 1
  %i.ad = add i64 %.0.copyload.i30, %.0.copyload.i28
  %i.ae = icmp ult i64 %.0.copyload.i24, %i.ad
  br i1 %i.ae, label %.critedge22, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.e, %bb.d, %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.031.036, i64 56 ; 2 uses
  %.not40 = icmp eq ptr %i.af, %i.y
  br i1 %.not40, label %.critedge22, label %.lr.ph

.critedge22:                                      ; preds = %bb.e, %.critedge, %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit
  %.lcssa = phi i1 [ false, %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit ], [ false, %.critedge ], [ true, %bb.e ]
  ret i1 %.lcssa
}

end_hunk_0
begin_hunk_1_@_ZSt17__merge_sort_loopIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEElNS5_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS0_10ObjectFileIS2_E13parse_ehframeERNS0_7ContextIS2_EEEUlRKS3_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEEvSP_SP_SR_T1_T2_:bb.a
  br label %.lr.ph.i.i.i.i.i.i36.prol.loopexit

.lr.ph.i.i.i.i.i.i36.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i36.prol, %.lr.ph.i.i.i.i.i.i36.preheader
  %.012.i.i.i.i.i.i37.unr = phi i64 [ %i.gx, %.lr.ph.i.i.i.i.i.i36.preheader ], [ %i.hf, %.lr.ph.i.i.i.i.i.i36.prol ]
  %.0811.i.i.i.i.i.i38.unr = phi ptr [ %.sroa.0.0.lcssa.i26, %.lr.ph.i.i.i.i.i.i36.preheader ], [ %i.he, %.lr.ph.i.i.i.i.i.i36.prol ]
  %.0910.i.i.i.i.i.i39.unr = phi ptr [ %.0.lcssa.i28, %.lr.ph.i.i.i.i.i.i36.preheader ], [ %i.hd, %.lr.ph.i.i.i.i.i.i36.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i36.preheader ], [ %i.he, %.lr.ph.i.i.i.i.i.i36.prol ]
  %i.hg = icmp eq i64 %i.gw, 16
  br i1 %i.hg, label %_ZSt4moveIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29, label %.lr.ph.i.i.i.i.i.i36

.lr.ph.i.i.i.i.i.i36:                             ; preds = %.lr.ph.i.i.i.i.i.i36.prol.loopexit, %.lr.ph.i.i.i.i.i.i36
  %.012.i.i.i.i.i.i37 = phi i64 [ %i.hr, %.lr.ph.i.i.i.i.i.i36 ], [ %.012.i.i.i.i.i.i37.unr, %.lr.ph.i.i.i.i.i.i36.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i38 = phi ptr [ %i.hq, %.lr.ph.i.i.i.i.i.i36 ], [ %.0811.i.i.i.i.i.i38.unr, %.lr.ph.i.i.i.i.i.i36.prol.loopexit ] ; 5 uses
  %.0910.i.i.i.i.i.i39 = phi ptr [ %i.hp, %.lr.ph.i.i.i.i.i.i36 ], [ %.0910.i.i.i.i.i.i39.unr, %.lr.ph.i.i.i.i.i.i36.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %.0811.i.i.i.i.i.i38, ptr noundef nonnull align 4 dereferenceable(15) %.0910.i.i.i.i.i.i39, i64 14, i1 false)
  %i.hh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38, i64 14
  %i.hi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39, i64 14
  %i.hj = load atomic i8, ptr %i.hi monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.hj, ptr %i.hh monotonic, align 2
  %i.hk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39, i64 16
  %i.hl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.hl, ptr noundef nonnull align 4 dereferenceable(15) %i.hk, i64 14, i1 false)
  %i.hm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38, i64 30
  %i.hn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39, i64 30
  %i.ho = load atomic i8, ptr %i.hn monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.ho, ptr %i.hm monotonic, align 2
  %i.hp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39, i64 32
  %i.hq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38, i64 32 ; 2 uses
  %i.hr = add nsw i64 %.012.i.i.i.i.i.i37, -2
  %i.hs = icmp sgt i64 %.012.i.i.i.i.i.i37, 2
  br i1 %i.hs, label %.lr.ph.i.i.i.i.i.i36, label %_ZSt4moveIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29, !llvm.loop !12

_ZSt4moveIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29: ; preds = %.lr.ph.i.i.i.i.i.i36.prol.loopexit, %.lr.ph.i.i.i.i.i.i36, %._crit_edge.i25
  %.08.lcssa.i.i.i.i.i.i30 = phi ptr [ %.sroa.0.0.lcssa.i26, %._crit_edge.i25 ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i36.prol.loopexit ], [ %i.hq, %.lr.ph.i.i.i.i.i.i36 ]
  %i.ht = ptrtoint ptr %.016.lcssa.i27 to i64
  %i.hu = sub i64 %i.b, %i.ht                     ; 3 uses
  %i.hv = ashr exact i64 %i.hu, 4                 ; 3 uses
  %i.hw = icmp sgt i64 %i.hv, 0
  br i1 %i.hw, label %.lr.ph.i.i.i.i.i19.i32.preheader, label %_ZSt12__move_mergeIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS0_10ObjectFileIS2_E13parse_ehframeERNS0_7ContextIS2_EEEUlRKS3_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESR_SP_SP_SP_SP_SR_T1_.exit46

.lr.ph.i.i.i.i.i19.i32.preheader:                 ; preds = %_ZSt4moveIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29
  %i.hx = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30 to i64
  %i.hy = ptrtoint ptr %.sroa.0.0.lcssa.i26 to i64
  %i.hz = sub i64 %i.hx, %i.hy
  %i.ia = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26, i64 %i.hz ; 4 uses
  %i.ib = and i64 %i.hu, 16
  %lcmp.mod113.not = icmp eq i64 %i.ib, 0
  br i1 %lcmp.mod113.not, label %.lr.ph.i.i.i.i.i19.i32.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.prol

.lr.ph.i.i.i.i.i19.i32.prol:                      ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.ia, ptr noundef nonnull align 4 dereferenceable(15) %.016.lcssa.i27, i64 14, i1 false)
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 14
  %i.id = getelementptr inbounds nuw i8, ptr %.016.lcssa.i27, i64 14
  %i.ie = load atomic i8, ptr %i.id monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.ie, ptr %i.ic monotonic, align 2
  %i.if = getelementptr inbounds nuw i8, ptr %.016.lcssa.i27, i64 16
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ih = add nsw i64 %i.hv, -1
  br label %.lr.ph.i.i.i.i.i19.i32.prol.loopexit

.lr.ph.i.i.i.i.i19.i32.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i19.i32.prol, %.lr.ph.i.i.i.i.i19.i32.preheader
  %.012.i.i.i.i.i20.i33.unr = phi i64 [ %i.hv, %.lr.ph.i.i.i.i.i19.i32.preheader ], [ %i.ih, %.lr.ph.i.i.i.i.i19.i32.prol ]
  %.0811.i.i.i.i.i21.i34.unr = phi ptr [ %i.ia, %.lr.ph.i.i.i.i.i19.i32.preheader ], [ %i.ig, %.lr.ph.i.i.i.i.i19.i32.prol ]
  %.0910.i.i.i.i.i22.i35.unr = phi ptr [ %.016.lcssa.i27, %.lr.ph.i.i.i.i.i19.i32.preheader ], [ %i.if, %.lr.ph.i.i.i.i.i19.i32.prol ]
  %i.ii = icmp eq i64 %i.hu, 16
  br i1 %i.ii, label %_ZSt12__move_mergeIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS0_10ObjectFileIS2_E13parse_ehframeERNS0_7ContextIS2_EEEUlRKS3_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESR_SP_SP_SP_SP_SR_T1_.exit46, label %.lr.ph.i.i.i.i.i19.i32

.lr.ph.i.i.i.i.i19.i32:                           ; preds = %.lr.ph.i.i.i.i.i19.i32.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32
  %.012.i.i.i.i.i20.i33 = phi i64 [ %i.it, %.lr.ph.i.i.i.i.i19.i32 ], [ %.012.i.i.i.i.i20.i33.unr, %.lr.ph.i.i.i.i.i19.i32.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i34 = phi ptr [ %i.is, %.lr.ph.i.i.i.i.i19.i32 ], [ %.0811.i.i.i.i.i21.i34.unr, %.lr.ph.i.i.i.i.i19.i32.prol.loopexit ] ; 5 uses
  %.0910.i.i.i.i.i22.i35 = phi ptr [ %i.ir, %.lr.ph.i.i.i.i.i19.i32 ], [ %.0910.i.i.i.i.i22.i35.unr, %.lr.ph.i.i.i.i.i19.i32.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %.0811.i.i.i.i.i21.i34, ptr noundef nonnull align 4 dereferenceable(15) %.0910.i.i.i.i.i22.i35, i64 14, i1 false)
  %i.ij = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 14
  %i.ik = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 14
  %i.il = load atomic i8, ptr %i.ik monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.il, ptr %i.ij monotonic, align 2
  %i.im = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 16
  %i.in = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.in, ptr noundef nonnull align 4 dereferenceable(15) %i.im, i64 14, i1 false)
  %i.io = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 30
  %i.ip = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 30
  %i.iq = load atomic i8, ptr %i.ip monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.iq, ptr %i.io monotonic, align 2
  %i.ir = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 32
  %i.is = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 32
  %i.it = add nsw i64 %.012.i.i.i.i.i20.i33, -2
  %i.iu = icmp sgt i64 %.012.i.i.i.i.i20.i33, 2
  br i1 %i.iu, label %.lr.ph.i.i.i.i.i19.i32, label %_ZSt12__move_mergeIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS0_10ObjectFileIS2_E13parse_ehframeERNS0_7ContextIS2_EEEUlRKS3_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESR_SP_SP_SP_SP_SR_T1_.exit46, !llvm.loop !12

_ZSt12__move_mergeIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS0_10ObjectFileIS2_E13parse_ehframeERNS0_7ContextIS2_EEEUlRKS3_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESR_SP_SP_SP_SP_SR_T1_.exit46: ; preds = %.lr.ph.i.i.i.i.i19.i32.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32, %_ZSt4moveIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEEvSP_SP_SR_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #2 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 16 ; 5 uses
  %5 = alloca %"struct.mold::FdeRecord", align 4  ; 8 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 16 ; 4 uses
  %.sroa.0 = alloca <{ i32, i32, i32, i16 }>, align 8 ; 4 uses
  store ptr %2, ptr %6, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.010.019 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %.sroa.010.019, %1
  br i1 %i.c, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 14 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = ptrtoint ptr %0 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 14
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.s
  %.sroa.010.021 = phi ptr [ %.sroa.010.019, %.lr.ph ], [ %.sroa.010.0, %bb.s ] ; 11 uses
  %.pn20 = phi ptr [ %0, %.lr.ph ], [ %.sroa.010.021, %bb.s ] ; 7 uses
  %i.j = call noundef zeroext i1 @_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clIRSB_SN_EEbSJ_SK_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(15) %.sroa.010.021, ptr noundef nonnull align 4 dereferenceable(15) %0)
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(14) %.sroa.010.021, i64 14, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %.pn20, i64 30
  %i.l = load atomic i8, ptr %i.k monotonic, align 1, !range !107, !noundef !108
  %i.m = ptrtoint ptr %.sroa.010.021 to i64
  %i.n = sub i64 %i.m, %i.h                       ; 3 uses
  %i.o = ashr exact i64 %i.n, 4                   ; 3 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.pn20, i64 32
  %i.r = and i64 %i.n, 16
  %lcmp.mod.not = icmp eq i64 %i.r, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.s = getelementptr inbounds i8, ptr %.sroa.010.021, i64 -16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.pn20, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.t, ptr noundef nonnull align 4 dereferenceable(15) %i.s, i64 14, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.pn20, i64 30
  %i.v = getelementptr inbounds i8, ptr %.sroa.010.021, i64 -2
  %i.w = load atomic i8, ptr %i.v monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.w, ptr %i.u monotonic, align 2
  %i.x = add nsw i64 %i.o, -1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.010.i.i.i.i.i.unr = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i.preheader ], [ %i.x, %.lr.ph.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.unr = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.unr = phi ptr [ %.sroa.010.021, %.lr.ph.i.i.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.y = icmp eq i64 %i.n, 16
  br i1 %i.y, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.010.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %.069.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.078.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.078.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  %i.aa = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.aa, ptr noundef nonnull align 4 dereferenceable(15) %i.z, i64 14, i1 false)
  %i.ab = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -2
  %i.ac = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -2
  %i.ad = load atomic i8, ptr %i.ac monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.ad, ptr %i.ab monotonic, align 2
  %i.ae = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.af, ptr noundef nonnull align 4 dereferenceable(15) %i.ae, i64 14, i1 false)
  %i.ag = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -18
  %i.ah = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -18
  %i.ai = load atomic i8, ptr %i.ah monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.ai, ptr %i.ag monotonic, align 2
  %i.aj = add nsw i64 %.010.i.i.i.i.i, -2
  %i.ak = icmp sgt i64 %.010.i.i.i.i.i, 2
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, !llvm.loop !13

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %0, ptr noundef nonnull align 8 dereferenceable(14) %.sroa.0, i64 14, i1 false)
  store atomic i8 %i.l, ptr %i.i monotonic, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.al = load <2 x ptr>, ptr %6, align 16, !tbaa !548
  store <2 x ptr> %i.al, ptr %4, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %5, ptr noundef nonnull align 4 dereferenceable(15) %.sroa.010.021, i64 14, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.pn20, i64 30
  %i.an = load atomic i8, ptr %i.am monotonic, align 1, !range !107, !noundef !108
  store i8 %i.an, ptr %i.e, align 2, !tbaa !79
  %i.ao = call noundef zeroext i1 @_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clIRSB_SN_EEbSJ_SK_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(15) %5, ptr noundef nonnull align 4 dereferenceable(15) %.pn20)
  br i1 %i.ao, label %.lr.ph.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEEvSP_SR_.exit

.lr.ph.i:                                         ; preds = %bb.d, %_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clIRSB_SN_EEbSJ_SK_.exit
  %.sroa.0.08.i = phi ptr [ %.sroa.0.0.i, %_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clIRSB_SN_EEbSJ_SK_.exit ], [ %.pn20, %bb.d ] ; 6 uses
  %.sroa.03.07.i = phi ptr [ %.sroa.0.08.i, %_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clIRSB_SN_EEbSJ_SK_.exit ], [ %.sroa.010.021, %bb.d ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %.sroa.03.07.i, ptr noundef nonnull align 4 dereferenceable(15) %.sroa.0.08.i, i64 14, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 14
  %i.aq = getelementptr inbounds i8, ptr %.sroa.03.07.i, i64 -2
  %i.ar = load atomic i8, ptr %i.aq monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.ar, ptr %i.ap monotonic, align 2
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -16
  %7 = load ptr, ptr %i.d, align 8, !tbaa !682, !nonnull !108, !align !516
  %i.as = load ptr, ptr %7, align 8, !tbaa !680, !nonnull !108, !align !516
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !540 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 504
  %8 = load i16, ptr %i.f, align 4, !tbaa !560
  %9 = zext i16 %8 to i64
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !544 ; 2 uses
  %i.ax = getelementptr inbounds nuw [72 x i8], ptr %i.aw, i64 %9
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !tbaa !481
  %10 = load i32, ptr %i.g, align 4, !tbaa !559
  %11 = zext i32 %10 to i64
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.ba, align 1
  %i.bb = zext i32 %.0.copyload.i.i.i.i.i.i to i64 ; 2 uses
  %i.bc = load ptr, ptr %i.au, align 8, !tbaa !106 ; 2 uses
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.bb
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 6
  %.0.copyload.i.i.i2.i.i.i.i.i = load i16, ptr %i.be, align 1 ; 3 uses
  %i.bf = icmp eq i16 %.0.copyload.i.i.i2.i.i.i.i.i, -1
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 976
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !113
  %i.bi = shl nuw nsw i64 %i.bb, 2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bi
  %.0.copyload.i5.i.i.i.i.i.i.i = load i32, ptr %i.bj, align 1
  %i.bk = zext i32 %.0.copyload.i5.i.i.i.i.i.i.i to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.bl = icmp ugt i16 %.0.copyload.i.i.i2.i.i.i.i.i, -257
  %narrow.i.i.i.i.i.i.i = select i1 %i.bl, i16 0, i16 %.0.copyload.i.i.i2.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i = zext i16 %narrow.i.i.i.i.i.i.i to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i.i

_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i3.i.i.i.i.i = phi i64 [ %i.bk, %bb.e ], [ %spec.select.i.i.i.i.i.i.i, %bb.f ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 448
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !225 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.0.i.i3.i.i.i.i.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !500 ; 2 uses
  %or.cond.i.i.i.i.i.i.i = icmp sgt i32 %i.bp, 0
  call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i.i)
  %i.bq = add nsw i32 %i.bp, -1
  %i.br = zext nneg i32 %i.bq to i64              ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.at, i64 360
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !508, !noalias !1262 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.at, i64 368
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !130, !noalias !1262
  %i.bw = getelementptr inbounds nuw i8, ptr %i.at, i64 384
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !129, !noalias !1262 ; 2 uses
  %i.by = ptrtoint ptr %i.bt to i64
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 80                ; 2 uses
  %i.cc = add nsw i64 %i.cb, %i.br                ; 5 uses
  %i.cd = icmp sgt i64 %i.cc, -1
  br i1 %i.cd, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i.i
  %i.ce = icmp samesign ult i64 %i.cc, 6
  br i1 %i.ce, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cf = getelementptr inbounds nuw [80 x i8], ptr %i.bt, i64 %i.br
  br label %_ZSt8__invokeIRZN4mold10ObjectFileINS0_6X86_64EE13parse_ehframeERNS0_7ContextIS2_EEEUlRKNS0_9FdeRecordIS2_EEE0_JRS8_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.cg = udiv i64 %i.cc, 6
  br label %bb.k

bb.j:                                             ; preds = %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i.i
  %i.ch = xor i64 %i.cc, -1
  %i.ci = udiv i64 %i.ch, 6
  %i.cj = xor i64 %i.ci, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ck = phi i64 [ %i.cg, %bb.i ], [ %i.cj, %bb.j ] ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !128, !noalias !1262
  %.idx.i.i.i.i.i.i.i.i.i.i.i = mul i64 %i.ck, -480
  %i.cn = getelementptr i8, ptr %i.cm, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.co = getelementptr [80 x i8], ptr %i.cn, i64 %i.cc
  br label %_ZSt8__invokeIRZN4mold10ObjectFileINS0_6X86_64EE13parse_ehframeERNS0_7ContextIS2_EEEUlRKNS0_9FdeRecordIS2_EEE0_JRS8_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit.i

_ZSt8__invokeIRZN4mold10ObjectFileINS0_6X86_64EE13parse_ehframeERNS0_7ContextIS2_EEEUlRKNS0_9FdeRecordIS2_EEE0_JRS8_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit.i: ; preds = %bb.k, %bb.h
  %.0.i2.i.i.i.i.i.i = phi ptr [ %i.cf, %bb.h ], [ %i.co, %bb.k ] ; 2 uses
  %i.cp = load ptr, ptr %.0.i2.i.i.i.i.i.i, align 8, !tbaa !515, !nonnull !108, !align !516
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 128
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !576
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i.i.i.i, i64 48
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !514
  %i.cu = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -4
  %i.cv = load i16, ptr %i.cu, align 4, !tbaa !560
  %i.cw = zext i16 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [72 x i8], ptr %i.aw, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %.sroa.0.0.copyload.i.i.i.i.i3.i = load ptr, ptr %i.cy, align 8, !tbaa !481
  %i.cz = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -8
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !559
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i3.i, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  %.0.copyload.i.i.i.i.i4.i = load i32, ptr %i.dd, align 1
  %i.de = zext i32 %.0.copyload.i.i.i.i.i4.i to i64 ; 2 uses
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 6
  %.0.copyload.i.i.i2.i.i.i.i5.i = load i16, ptr %i.dg, align 1 ; 3 uses
  %i.dh = icmp eq i16 %.0.copyload.i.i.i2.i.i.i.i5.i, -1
  br i1 %i.dh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZSt8__invokeIRZN4mold10ObjectFileINS0_6X86_64EE13parse_ehframeERNS0_7ContextIS2_EEEUlRKNS0_9FdeRecordIS2_EEE0_JRS8_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.at, i64 976
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !113
  %i.dk = shl nuw nsw i64 %i.de, 2
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dk
  %.0.copyload.i5.i.i.i.i.i.i13.i = load i32, ptr %i.dl, align 1
  %i.dm = zext i32 %.0.copyload.i5.i.i.i.i.i.i13.i to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i8.i

bb.m:                                             ; preds = %_ZSt8__invokeIRZN4mold10ObjectFileINS0_6X86_64EE13parse_ehframeERNS0_7ContextIS2_EEEUlRKNS0_9FdeRecordIS2_EEE0_JRS8_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit.i
  %i.dn = icmp ugt i16 %.0.copyload.i.i.i2.i.i.i.i5.i, -257
  %narrow.i.i.i.i.i.i6.i = select i1 %i.dn, i16 0, i16 %.0.copyload.i.i.i2.i.i.i.i5.i
  %spec.select.i.i.i.i.i.i7.i = zext i16 %narrow.i.i.i.i.i.i6.i to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i8.i

_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i8.i: ; preds = %bb.m, %bb.l
  %.0.i.i3.i.i.i.i9.i = phi i64 [ %i.dm, %bb.l ], [ %spec.select.i.i.i.i.i.i7.i, %bb.m ]
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.0.i.i3.i.i.i.i9.i
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !500 ; 2 uses
  %or.cond.i.i.i.i.i.i10.i = icmp sgt i32 %i.dp, 0
  call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i10.i)
  %i.dq = add nsw i32 %i.dp, -1
  %i.dr = zext nneg i32 %i.dq to i64              ; 2 uses
  %i.ds = add nsw i64 %i.cb, %i.dr                ; 5 uses
  %i.dt = icmp sgt i64 %i.ds, -1
  br i1 %i.dt, label %bb.n, label %bb.q

bb.n:                                             ; preds = %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i8.i
  %i.du = icmp samesign ult i64 %i.ds, 6
  br i1 %i.du, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dv = getelementptr inbounds nuw [80 x i8], ptr %i.bt, i64 %i.dr
  br label %_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clIRSB_SN_EEbSJ_SK_.exit

bb.p:                                             ; preds = %bb.n
  %i.dw = udiv i64 %i.ds, 6
  br label %bb.r

bb.q:                                             ; preds = %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i8.i
  %i.dx = xor i64 %i.ds, -1
  %i.dy = udiv i64 %i.dx, 6
  %i.dz = xor i64 %i.dy, -1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ea = phi i64 [ %i.dw, %bb.p ], [ %i.dz, %bb.q ] ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !128, !noalias !1263
  %.idx.i.i.i.i.i.i.i.i.i.i11.i = mul i64 %i.ea, -480
  %i.ed = getelementptr i8, ptr %i.ec, i64 %.idx.i.i.i.i.i.i.i.i.i.i11.i
  %i.ee = getelementptr [80 x i8], ptr %i.ed, i64 %i.ds
  br label %_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clIRSB_SN_EEbSJ_SK_.exit

_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clIRSB_SN_EEbSJ_SK_.exit: ; preds = %bb.o, %bb.r
  %.0.i2.i.i.i.i.i12.i = phi ptr [ %i.dv, %bb.o ], [ %i.ee, %bb.r ] ; 2 uses
  %i.ef = shl i64 %i.cr, 32
  %i.eg = sext i32 %i.ct to i64
  %i.eh = or i64 %i.ef, %i.eg
  %i.ei = load ptr, ptr %.0.i2.i.i.i.i.i12.i, align 8, !tbaa !515, !nonnull !108, !align !516
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 128
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !576
  %i.el = shl i64 %i.ek, 32
  %i.em = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i.i.i12.i, i64 48
  %i.en = load i32, ptr %i.em, align 8, !tbaa !514
  %i.eo = sext i32 %i.en to i64
  %i.ep = or i64 %i.el, %i.eo
  %i.eq = icmp slt i64 %i.eh, %i.ep
  br i1 %i.eq, label %.lr.ph.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEEvSP_SR_.exit, !llvm.loop !1260

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEEvSP_SR_.exit: ; preds = %_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clIRSB_SN_EEbSJ_SK_.exit, %bb.d
  %.sroa.03.0.lcssa.i = phi ptr [ %.sroa.010.021, %bb.d ], [ %.sroa.0.08.i, %_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clIRSB_SN_EEbSJ_SK_.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %.sroa.03.0.lcssa.i, ptr noundef nonnull align 4 dereferenceable(15) %5, i64 14, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i, i64 14
  %i.es = load atomic i8, ptr %i.e monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.es, ptr %i.er monotonic, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.s

bb.s:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEEvSP_SR_.exit
  %.sroa.010.0 = getelementptr inbounds nuw i8, ptr %.sroa.010.021, i64 16 ; 2 uses
  %i.et = icmp eq ptr %.sroa.010.0, %1
  br i1 %i.et, label %.loopexit, label %bb.b, !llvm.loop !1261

.loopexit:                                        ; preds = %bb.s, %.preheader, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr dso_local noundef zeroext i1 @_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clIRSB_SN_EEbSJ_SK_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(15) %1, ptr noundef nonnull align 4 dereferenceable(15) %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !682, !nonnull !108, !align !516
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !680, !nonnull !108, !align !516
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !540  ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
end_hunk_1
