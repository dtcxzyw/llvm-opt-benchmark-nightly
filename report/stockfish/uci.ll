Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/uci?download=true
inline.NumInlined: 1415
inline.NumDeleted: 622
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN9Stockfish20get_process_affinityEv:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3setImSt4lessImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  tail call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish9UCIEngine17print_info_stringESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::vector.13", align 8    ; 7 uses
  tail call void @_ZN9Stockfish15sync_cout_startEv() #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN9Stockfish5splitESt17basic_string_viewIcSt11char_traitsIcEES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.13") align 8 %2, i64 %0, ptr %1, i64 1, ptr nonnull @.str)
  %i.b = load ptr, ptr %2, align 8, !tbaa !150    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !150  ; 2 uses
  %.not14 = icmp eq ptr %i.b, %i.d
  br i1 %.not14, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre = load ptr, ptr %2, align 8, !tbaa !29
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.e = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #30
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @_ZN9Stockfish13sync_cout_endEv() #26
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.sroa.010.015 = phi ptr [ %i.v, %bb.f ], [ %i.b, %bb.a ] ; 4 uses
  %.sroa.01.0.copyload = load i64, ptr %.sroa.010.015, align 8, !tbaa !19
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.010.015, i64 8 ; 2 uses
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !32
  %i.k = call noundef zeroext i1 @_ZN9Stockfish13is_whitespaceESt17basic_string_viewIcSt11char_traitsIcEE(i64 %.sroa.01.0.copyload, ptr %.sroa.22.0.copyload) #26
  br i1 %i.k, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 12) #26 ; 0 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.010.015, align 8, !tbaa !19
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !32
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %.sroa.2.0.copyload, i64 noundef %.sroa.0.0.copyload) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !33
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !44
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.a, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.e:                                             ; preds = %bb.c
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i8 noundef signext 10) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.010.015, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.d
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph
}

declare void @_ZN9Stockfish15sync_cout_startEv() local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish5splitESt17basic_string_viewIcSt11char_traitsIcEES3_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.13") align 8 %0, i64 %1, ptr %2, i64 %3, ptr %4) local_unnamed_addr #3 comdat {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit27, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = icmp eq i64 %3, 0
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %2 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %invariant.op = sub i64 1, %3
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.o
  %i.h = phi ptr [ %i.ar, %bb.o ], [ null, %.preheader ] ; 9 uses
  %i.i = phi ptr [ %i.as, %bb.o ], [ null, %.preheader ] ; 8 uses
  %i.j = phi ptr [ %i.at, %bb.o ], [ null, %.preheader ] ; 14 uses
  %.09 = phi i64 [ %i.au, %bb.o ], [ 0, %.preheader ] ; 14 uses
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not27.i.i = icmp ugt i64 %.09, %1
  br i1 %.not27.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp ult i64 %.09, %1
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.k = sub nuw i64 %1, %.09                     ; 2 uses
  %.not2531.i.i = icmp ult i64 %i.k, %3
  br i1 %.not2531.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.09
  %i.m = load i8, ptr %4, align 1, !tbaa !33
  %i.n = sext i8 %i.m to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %i.k, %.lr.ph.i.i ], [ %i.v, %bb.h ]
  %.02032.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.t, %bb.h ]
  %.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.033.i.i, %invariant.op ; 2 uses
  %i.o = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.o, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.f
  %i.p = tail call ptr @memchr(ptr noundef %.02032.i.i, i32 noundef %i.n, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.reass) #26 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.p, null
  br i1 %.not26.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.p, ptr nonnull %4, i64 %3)
  %i.q = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.r, %i.e
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.d, %i.u                       ; 2 uses
  %.not25.i.i = icmp ult i64 %i.v, %3
  br i1 %.not25.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %bb.f, !llvm.loop !151

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit: ; preds = %bb.c, %bb.g
  %.1.i.i = phi i64 [ %.09, %bb.c ], [ %i.s, %bb.g ] ; 3 uses
  %i.w = icmp eq i64 %.1.i.i, -1
  br i1 %i.w, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit
  %i.x = icmp ugt i64 %.09, %1
  br i1 %i.x, label %bb.j, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.j:                                             ; preds = %bb.i
  store ptr %i.j, ptr %0, align 8
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.102, i64 noundef %.09, i64 noundef %1) #31
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.i
  %i.y = sub i64 %.1.i.i, %.09
  %i.z = sub nuw i64 %1, %.09
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.y) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %.09 ; 2 uses
  %.not.i = icmp eq ptr %i.i, %i.h
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  store i64 %.sroa.speculated.i, ptr %i.i, align 8, !tbaa !19
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.aa, ptr %.sroa.534.0..sroa_idx, align 8, !tbaa !32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store ptr %i.ab, ptr %i.f, align 8, !tbaa !159
  br label %bb.o

bb.l:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.ac = ptrtoint ptr %i.h to i64
  %i.ad = ptrtoint ptr %i.j to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775792
  br i1 %i.af, label %bb.m, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  store ptr %i.j, ptr %0, align 8
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #31
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.ag = ashr exact i64 %i.ae, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %5 = add nsw i64 %.sroa.speculated.i.i.i, %i.ag ; 2 uses
  %i.ah = icmp ult i64 %5, %i.ag
  %i.ai = tail call i64 @llvm.umin.i64(i64 %5, i64 576460752303423487)
  %i.aj = select i1 %i.ah, i64 576460752303423487, i64 %i.ai ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 4
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #29 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ae ; 2 uses
  store i64 %.sroa.speculated.i, ptr %i.am, align 8, !tbaa !19
  %.sroa.534.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.aa, ptr %.sroa.534.0..sroa_idx35, align 8, !tbaa !32
  %.not10.i.i.i.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %i.al, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %i.j, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !160, !alias.scope !161
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !155

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.al, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ao, %.lr.ph.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ae) #30
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.ap, ptr %i.f, align 8, !tbaa !159
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.aj ; 2 uses
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !30
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.k
  %i.ar = phi ptr [ %i.aq, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.h, %bb.k ]
  %i.as = phi ptr [ %i.ap, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.ab, %bb.k ]
  %i.at = phi ptr [ %i.al, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.j, %bb.k ]
  %i.au = add i64 %.1.i.i, %3
  br label %bb.b

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread: ; preds = %bb.c, %bb.e, %bb.d, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, %bb.f, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.h
  store ptr %i.j, ptr %0, align 8
  %i.av = icmp ugt i64 %.09, %1
  br i1 %i.av, label %bb.p, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit13

bb.p:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.102, i64 noundef %.09, i64 noundef %1) #31
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit13: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread
  %i.aw = sub nuw i64 %1, %.09                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %.09 ; 2 uses
  %.not.i14 = icmp eq ptr %i.i, %i.h
  br i1 %.not.i14, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit13
  store i64 %i.aw, ptr %i.i, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ax, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.ay, ptr %i.f, align 8, !tbaa !159
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit27

bb.r:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit13
  %i.az = ptrtoint ptr %i.h to i64
  %i.ba = ptrtoint ptr %i.j to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 4 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775792
  br i1 %i.bc, label %bb.s, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #31
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15: ; preds = %bb.r
  %i.bd = ashr exact i64 %i.bb, 4                 ; 3 uses
  %.sroa.speculated.i.i.i16 = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %6 = add nsw i64 %.sroa.speculated.i.i.i16, %i.bd ; 2 uses
  %i.be = icmp ult i64 %6, %i.bd
  %i.bf = tail call i64 @llvm.umin.i64(i64 %6, i64 576460752303423487)
  %i.bg = select i1 %i.be, i64 576460752303423487, i64 %i.bf ; 3 uses
  %.not.i.i.i17 = icmp ne i64 %i.bg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i17)
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #29 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bb ; 2 uses
  store i64 %i.aw, ptr %i.bj, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.ax, ptr %.sroa.5.0..sroa_idx30, align 8, !tbaa !32
  %.not10.i.i.i.i.i18 = icmp eq ptr %i.j, %i.h
  br i1 %.not10.i.i.i.i.i18, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15, %.lr.ph.i.i.i.i.i19
  %.012.i.i.i.i.i20 = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i19 ], [ %i.bi, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15 ] ; 2 uses
  %.0911.i.i.i.i.i21 = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i19 ], [ %i.j, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i20, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i21, i64 16, i1 false), !tbaa.struct !160, !alias.scope !162
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i21, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i20, i64 16 ; 2 uses
  %.not.i.i.i.i.i22 = icmp eq ptr %i.bk, %i.h
  br i1 %.not.i.i.i.i.i22, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23, label %.lr.ph.i.i.i.i.i19, !llvm.loop !155

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23: ; preds = %.lr.ph.i.i.i.i.i19, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15
  %.0.lcssa.i.i.i.i.i24 = phi ptr [ %i.bi, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15 ], [ %i.bl, %.lr.ph.i.i.i.i.i19 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i24, i64 16
  %.not.i23.i.i25 = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i25, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i26, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.bb) #30
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i26

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i26: ; preds = %bb.t, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23
  store ptr %i.bi, ptr %0, align 8, !tbaa !29
  store ptr %i.bm, ptr %i.f, align 8, !tbaa !159
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.bg
  store ptr %i.bn, ptr %i.g, align 8, !tbaa !30
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit27

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit27: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i26, %bb.q, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noundef zeroext i1 @_ZN9Stockfish13is_whitespaceESt17basic_string_viewIcSt11char_traitsIcEE(i64, ptr) local_unnamed_addr #5

declare void @_ZN9Stockfish13sync_cout_endEv() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish9UCIEngineC2EiPPc(ptr noundef nonnull align 8 dereferenceable(1696) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::optional", align 8     ; 9 uses
  %4 = alloca %"class.std::function", align 8     ; 8 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !32     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !46
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.109) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.e, ptr %i.a, align 8, !tbaa !19
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.d, label %._crit_edge.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !48
  %i.h = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.h, ptr %i.c, align 8, !tbaa !33
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.d, %bb.c
  %i.i = phi ptr [ %i.g, %bb.d ], [ %i.c, %bb.c ] ; 2 uses
  switch i64 %i.e, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRPcTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.j = load i8, ptr %i.b, align 1, !tbaa !33
  store i8 %i.j, ptr %i.i, align 1, !tbaa !33
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRPcTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %i.b, i64 %i.e, i1 false)
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRPcTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRPcTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %bb.e, %bb.f
  %i.k = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !49
  %i.m = load ptr, ptr %3, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i8 1, ptr %i.o, align 8, !tbaa !52
  call void @_ZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(1680) %0, ptr noundef nonnull align 8 %3) #26
  %i.p = load i8, ptr %i.o, align 8, !tbaa !52, !range !53, !noundef !54
  %i.q = trunc nuw i8 %i.p to i1
  store i8 0, ptr %i.o, align 8, !tbaa !52
  br i1 %i.q, label %bb.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.g:                                             ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRPcTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit
  %i.r = load ptr, ptr %3, align 8, !tbaa !48     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.c
  br i1 %i.s, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.t = load i64, ptr %i.c, align 8, !tbaa !33
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #30
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.g, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRPcTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1680
  store i32 %1, ptr %i.v, align 8, !tbaa !163
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1688
  store ptr %2, ptr %i.w, align 8, !tbaa !164
  %i.x = call noundef nonnull align 8 dereferenceable(80) ptr @_ZN9Stockfish6Engine11get_optionsEv(ptr noundef nonnull align 8 dereferenceable(1680) %0) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN9Stockfish9UCIEngineC1EiPPcE3$_0E9_M_invokeERKSt9_Any_dataOS7_", ptr %i.z, align 8, !tbaa !165
  store ptr @"_ZNSt17_Function_handlerIFvSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN9Stockfish9UCIEngineC1EiPPcE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation", ptr %i.y, align 8, !tbaa !60
  call void @_ZN9Stockfish10OptionsMap17add_info_listenerEOSt8functionIFvSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %4) #26
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !60  ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.ab = call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3) #26, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @_ZN9Stockfish9UCIEngine28init_search_update_listenersEv(ptr noundef nonnull align 8 dereferenceable(1696) %0)
  ret void
}

declare void @_ZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(1680), ptr noundef align 8) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(80) ptr @_ZN9Stockfish6Engine11get_optionsEv(ptr noundef nonnull align 8 dereferenceable(1680)) local_unnamed_addr #5

declare void @_ZN9Stockfish10OptionsMap17add_info_listenerEOSt8functionIFvSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish9UCIEngine28init_search_update_listenersEv(ptr noundef nonnull align 8 dereferenceable(1696) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %"class.std::function.52", align 8  ; 8 uses
  %2 = alloca %"class.std::function.46", align 8  ; 8 uses
  %3 = alloca %"class.std::function.49", align 8  ; 9 uses
  %4 = alloca %"class.std::function.55", align 8  ; 8 uses
  %5 = alloca %"class.std::function.57", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvRKN9Stockfish6Search13InfoIterationEEZNS0_9UCIEngine28init_search_update_listenersEvE3$_0E9_M_invokeERKSt9_Any_dataS4_", ptr %i.b, align 8, !tbaa !62
  store ptr @"_ZNSt17_Function_handlerIFvRKN9Stockfish6Search13InfoIterationEEZNS0_9UCIEngine28init_search_update_listenersEvE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.a, align 8, !tbaa !60
  call void @_ZN9Stockfish6Engine11set_on_iterEOSt8functionIFvRKNS_6Search13InfoIterationEEE(ptr noundef nonnull align 8 dereferenceable(1680) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #26
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #26, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvRKN9Stockfish6Search9InfoShortEEZNS0_9UCIEngine28init_search_update_listenersEvE3$_1E9_M_invokeERKSt9_Any_dataS4_", ptr %i.f, align 8, !tbaa !64
  store ptr @"_ZNSt17_Function_handlerIFvRKN9Stockfish6Search9InfoShortEEZNS0_9UCIEngine28init_search_update_listenersEvE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.e, align 8, !tbaa !60
  call void @_ZN9Stockfish6Engine22set_on_update_no_movesEOSt8functionIFvRKNS_6Search9InfoShortEEE(ptr noundef nonnull align 8 dereferenceable(1680) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #26
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !60   ; 2 uses
  %.not.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i1, label %_ZNSt14_Function_baseD2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #26, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit2

_ZNSt14_Function_baseD2Ev.exit2:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.i = ptrtoint ptr %0 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.l, align 8
end_hunk_0
begin_hunk_1_@_ZN9Stockfish9UCIEngine12parse_limitsERSi:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !49
  store i8 0, ptr %i.e, align 8, !tbaa !33
  %i.g = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.h = sdiv i64 %i.g, 1000000
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.h, ptr %i.i, align 8, !tbaa !270
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #26 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !35
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !98
  %i.q = and i32 %i.p, 5
  %.not.i56 = icmp eq i32 %i.q, 0
  br i1 %.not.i56, label %.lr.ph57, label %._crit_edge

.lr.ph57:                                         ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 15 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph57, %.loopexit
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !49  ; 8 uses
  switch i64 %i.ag, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit38.thread54 [
    i64 11, label %.split
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34
  ]

.split:                                           ; preds = %bb.b
  %i.ah = load ptr, ptr %2, align 8, !tbaa !48    ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 1
  %i.aj = xor i64 %i.ai, 8029188487001498995
  %i.ak = getelementptr i8, ptr %i.ah, i64 3
  %i.al = load i64, ptr %i.ak, align 1
  %i.am = xor i64 %i.al, 8315182507958494066
  %i.an = or i64 %i.aj, %i.am
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit38.thread54

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader: ; preds = %.split
  %i.ar = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #26 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !35
  %i.at = getelementptr i8, ptr %i.as, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !98
  %i.ay = and i32 %i.ax, 5
  %.not.i1355 = icmp eq i32 %i.ay, 0
  br i1 %.not.i1355, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %i.z, ptr %4, align 8, !tbaa !46
  %i.az = load ptr, ptr %2, align 8, !tbaa !48    ; 2 uses
  %i.ba = load i64, ptr %i.f, align 8, !tbaa !49  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.ba, ptr %i.a, align 8, !tbaa !19
  %i.bb = icmp ugt i64 %i.ba, 15
  br i1 %i.bb, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %.lr.ph
  %i.bc = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.bc, ptr %4, align 8, !tbaa !48
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.bd, ptr %i.z, align 8, !tbaa !33
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.c, %.lr.ph
  %i.be = phi ptr [ %i.bc, %bb.c ], [ %i.z, %.lr.ph ] ; 2 uses
  switch i64 %i.ba, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.bf = load i8, ptr %i.az, align 1, !tbaa !33
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr align 1 %i.az, i64 %i.ba, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  store i64 %i.bg, ptr %i.aa, align 8, !tbaa !49
  %i.bh = load ptr, ptr %4, align 8, !tbaa !48
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bg
  store i8 0, ptr %i.bi, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %i.bj = load ptr, ptr %4, align 8, !tbaa !48, !noalias !271 ; 3 uses
  %i.bk = load i64, ptr %i.aa, align 8, !tbaa !49, !noalias !271 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bk
  %.not6.i.i = icmp samesign eq i64 %i.bk, 0
  br i1 %.not6.i.i, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN9Stockfish9UCIEngine8to_lowerES8_E3$_0ET0_T_SE_SD_T1_.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.bq, %.lr.ph.i.i ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 3 uses
  %i.bm = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !33, !noalias !271
  %i.bn = sext i8 %i.bm to i32
  %i.bo = call noundef i32 @tolower(i32 noundef %i.bn) #28, !noalias !271
  %i.bp = trunc i32 %i.bo to i8
  store i8 %i.bp, ptr %.sroa.0.08.i.i, align 1, !tbaa !33, !noalias !271
  %i.bq = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bq, %i.bl
  br i1 %.not.i.i, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN9Stockfish9UCIEngine8to_lowerES8_E3$_0ET0_T_SE_SD_T1_.exit.loopexit.i", label %.lr.ph.i.i, !llvm.loop !5

"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN9Stockfish9UCIEngine8to_lowerES8_E3$_0ET0_T_SE_SD_T1_.exit.loopexit.i": ; preds = %.lr.ph.i.i
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !48, !noalias !271
  br label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN9Stockfish9UCIEngine8to_lowerES8_E3$_0ET0_T_SE_SD_T1_.exit.i"

"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN9Stockfish9UCIEngine8to_lowerES8_E3$_0ET0_T_SE_SD_T1_.exit.i": ; preds = %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN9Stockfish9UCIEngine8to_lowerES8_E3$_0ET0_T_SE_SD_T1_.exit.loopexit.i", %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.br = phi ptr [ %.pre.i, %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN9Stockfish9UCIEngine8to_lowerES8_E3$_0ET0_T_SE_SD_T1_.exit.loopexit.i" ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !46, !alias.scope !271
  %i.bs = icmp eq ptr %i.br, %i.z
  br i1 %i.bs, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN9Stockfish9UCIEngine8to_lowerES8_E3$_0ET0_T_SE_SD_T1_.exit.i"
  %i.bt = load i64, ptr %i.aa, align 8, !tbaa !49, !noalias !271 ; 3 uses
  %i.bu = icmp ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bu)
  %i.bv = add nuw nsw i64 %i.bt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.bv, i1 false)
  br label %_ZN9Stockfish9UCIEngine8to_lowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN9Stockfish9UCIEngine8to_lowerES8_E3$_0ET0_T_SE_SD_T1_.exit.i"
  store ptr %i.br, ptr %3, align 8, !tbaa !48, !alias.scope !271
  %i.bw = load i64, ptr %i.z, align 8, !tbaa !33, !noalias !271
  store i64 %i.bw, ptr %i.ab, align 8, !tbaa !33, !alias.scope !271
  %.pre4.i = load i64, ptr %i.aa, align 8, !tbaa !49, !noalias !271
  br label %_ZN9Stockfish9UCIEngine8to_lowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN9Stockfish9UCIEngine8to_lowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bx = phi i64 [ %i.bt, %bb.f ], [ %.pre4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 4 uses
  store i64 %i.bx, ptr %i.ac, align 8, !tbaa !49, !alias.scope !271
  store ptr %i.z, ptr %4, align 8, !tbaa !48, !noalias !271
  store i64 0, ptr %i.aa, align 8, !tbaa !49, !noalias !271
  store i8 0, ptr %i.z, align 8, !tbaa !33, !noalias !271
  %i.by = load ptr, ptr %i.ad, align 8, !tbaa !114 ; 8 uses
  %i.bz = load ptr, ptr %i.ae, align 8, !tbaa !115
  %.not.i.i14 = icmp eq ptr %i.by, %i.bz
  br i1 %.not.i.i14, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN9Stockfish9UCIEngine8to_lowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 3 uses
  store ptr %i.ca, ptr %i.by, align 8, !tbaa !46
  %i.cb = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.ab
  br i1 %i.cc, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.cd = icmp ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.cd)
  %i.ce = add nuw nsw i64 %i.bx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ca, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.ce, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  store ptr %i.cb, ptr %i.by, align 8, !tbaa !48
  %i.cf = load i64, ptr %i.ab, align 8, !tbaa !33
  store i64 %i.cf, ptr %i.ca, align 8, !tbaa !33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 %i.bx, ptr %i.cg, align 8, !tbaa !49
  store ptr %i.ab, ptr %3, align 8, !tbaa !48
  store i64 0, ptr %i.ac, align 8, !tbaa !49
  store i8 0, ptr %i.ab, align 8, !tbaa !33
  %i.ch = load ptr, ptr %i.ad, align 8, !tbaa !114
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  store ptr %i.ci, ptr %i.ad, align 8, !tbaa !114
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %_ZN9Stockfish9UCIEngine8to_lowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.cj = load ptr, ptr %0, align 8, !tbaa !113   ; 5 uses
  %i.ck = ptrtoint ptr %i.by to i64
  %i.cl = ptrtoint ptr %i.cj to i64               ; 2 uses
  %i.cm = sub i64 %i.ck, %i.cl                    ; 3 uses
  %i.cn = icmp eq i64 %i.cm, 9223372036854775776
  br i1 %i.cn, label %bb.j, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #31
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.co = ashr exact i64 %i.cm, 5                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.co, i64 1)
  %5 = add nsw i64 %.sroa.speculated.i.i, %i.co   ; 2 uses
  %i.cp = icmp ult i64 %5, %i.co
  %i.cq = call i64 @llvm.umin.i64(i64 %5, i64 288230376151711743)
  %i.cr = select i1 %i.cp, i64 288230376151711743, i64 %i.cq ; 3 uses
  %.not.i.i42 = icmp ne i64 %i.cr, 0
  call void @llvm.assume(i1 %.not.i.i42)
  %i.cs = shl nuw nsw i64 %i.cr, 5
  %i.ct = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #29 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cm ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 3 uses
  store ptr %i.cv, ptr %i.cu, align 8, !tbaa !46
  %i.cw = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.ab
  br i1 %i.cx, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

bb.k:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.cy = load i64, ptr %i.ac, align 8, !tbaa !49 ; 3 uses
  %i.cz = icmp ult i64 %i.cy, 16
  call void @llvm.assume(i1 %i.cz)
  %i.da = add nuw nsw i64 %i.cy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cv, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.da, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  store ptr %i.cw, ptr %i.cu, align 8, !tbaa !48
  %i.db = load i64, ptr %i.ab, align 8, !tbaa !33
  store i64 %i.db, ptr %i.cv, align 8, !tbaa !33
  %.pre.i44 = load i64, ptr %i.ac, align 8, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.k
  %i.dc = phi i64 [ %i.cy, %bb.k ], [ %.pre.i44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !49
  store ptr %i.ab, ptr %3, align 8, !tbaa !48
  store i64 0, ptr %i.ac, align 8, !tbaa !49
  store i8 0, ptr %i.ab, align 8, !tbaa !33
  %.not10.i.i.i.i = icmp eq ptr %i.cj, %i.by
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dr, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.dq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !272)
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.de = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.de, ptr %.012.i.i.i.i, align 8, !tbaa !46, !alias.scope !272, !noalias !273
  %i.df = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !48, !alias.scope !273, !noalias !272 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !49, !alias.scope !273, !noalias !272 ; 3 uses
  %i.dk = icmp ult i64 %i.dj, 16
  call void @llvm.assume(i1 %i.dk)
  %i.dl = add nuw nsw i64 %i.dj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.de, ptr noundef nonnull align 8 dereferenceable(1) %i.dg, i64 %i.dl, i1 false), !alias.scope !274
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.df, ptr %.012.i.i.i.i, align 8, !tbaa !48, !alias.scope !272, !noalias !273
  %i.dm = load i64, ptr %i.dg, align 8, !tbaa !33, !alias.scope !273, !noalias !272
  store i64 %i.dm, ptr %i.de, align 8, !tbaa !33, !alias.scope !272, !noalias !273
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !49, !alias.scope !273, !noalias !272
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.l
  %i.dn = phi i64 [ %i.dj, %bb.l ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.do = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.dn, ptr %i.dp, align 8, !tbaa !49, !alias.scope !272, !noalias !273
  store ptr %i.dg, ptr %.0911.i.i.i.i, align 8, !tbaa !48, !alias.scope !273, !noalias !272
  store i64 0, ptr %i.do, align 8, !tbaa !49, !alias.scope !273, !noalias !272
  store i8 0, ptr %i.dg, align 8, !tbaa !33, !alias.scope !273, !noalias !272
  %i.dq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dq, %i.by
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ], [ %i.dr, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32
  %.not.i27.i = icmp eq ptr %i.cj, null
  br i1 %.not.i27.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i
  %i.dt = load ptr, ptr %i.ae, align 8, !tbaa !115
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = sub i64 %i.du, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.dv) #30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.m, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i
  store ptr %i.ct, ptr %0, align 8, !tbaa !113
  store ptr %i.ds, ptr %i.ad, align 8, !tbaa !114
  %i.dw = getelementptr inbounds nuw [32 x i8], ptr %i.ct, i64 %i.cr
  store ptr %i.dw, ptr %i.ae, align 8, !tbaa !115
  %.pre61 = load ptr, ptr %3, align 8, !tbaa !48  ; 2 uses
  %i.dx = icmp eq ptr %.pre61, %i.ab
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.dy = load i64, ptr %i.ab, align 8, !tbaa !33
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %.pre61, i64 noundef %i.dz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  %i.ea = load ptr, ptr %4, align 8, !tbaa !48    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.z
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ec = load i64, ptr %i.z, align 8, !tbaa !33
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ee = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #26 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !35
  %i.eg = getelementptr i8, ptr %i.ef, i64 -24
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds i8, ptr %i.ee, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !98
  %i.el = and i32 %i.ek, 5
  %.not.i13 = icmp eq i32 %i.el, 0
  br i1 %.not.i13, label %.lr.ph, label %.loopexit, !llvm.loop !266

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20: ; preds = %bb.b
  %.pre = load ptr, ptr %2, align 8, !tbaa !48    ; 7 uses
  %bcmp.i19 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.31, i64 %i.ag)
  %i.em = icmp eq i32 %bcmp.i19, 0
  br i1 %i.em, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20
  %i.en = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIlEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.y) #26 ; 0 uses
  br label %.loopexit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20
  %i.eo = load i32, ptr %.pre, align 1
  %i.ep = xor i32 %i.eo, 1835627618
  %i.eq = getelementptr i8, ptr %.pre, i64 4
  %i.er = load i8, ptr %i.eq, align 1
  %i.es = zext i8 %i.er to i32
  %i.et = xor i32 %i.es, 101
  %i.eu = or i32 %i.ep, %i.et
  %i.ev = icmp ne i32 %i.eu, 0
  %i.ew = zext i1 %i.ev to i32
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22
  %i.ey = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIlEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.x) #26 ; 0 uses
  br label %.loopexit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24: ; preds = %bb.b
  %.pre58.a = load ptr, ptr %2, align 8, !tbaa !48 ; 3 uses
  %bcmp.i23 = call i32 @bcmp(ptr %.pre58.a, ptr nonnull @.str.33, i64 %i.ag)
  %i.ez = icmp eq i32 %bcmp.i23, 0
  br i1 %i.ez, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24
  %i.fa = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIlEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.w) #26 ; 0 uses
  br label %.loopexit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24
  %i.fb = load i32, ptr %.pre58.a, align 1
  %i.fc = icmp ne i32 %i.fb, 1668180322
  %i.fd = zext i1 %i.fc to i32
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26
  %i.ff = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIlEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.v) #26 ; 0 uses
  br label %.loopexit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28: ; preds = %bb.b
  %.pre59.a = load ptr, ptr %2, align 8, !tbaa !48
  %bcmp.i27 = call i32 @bcmp(ptr %.pre59.a, ptr nonnull @.str.35, i64 %i.ag)
  %i.fg = icmp eq i32 %bcmp.i27, 0
  br i1 %i.fg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit38.thread54

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28
  %i.fh = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #26 ; 0 uses
  br label %.loopexit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22
  %bcmp.i29 = call i32 @bcmp(ptr nonnull %.pre, ptr nonnull @.str.36, i64 %i.ag)
  %i.fi = icmp eq i32 %bcmp.i29, 0
  br i1 %i.fi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30
  %i.fj = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.u) #26 ; 0 uses
  br label %.loopexit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30
  %i.fk = load i32, ptr %.pre, align 1
  %i.fl = xor i32 %i.fk, 1701080942
  %i.fm = getelementptr i8, ptr %.pre, i64 4
  %i.fn = load i8, ptr %i.fm, align 1
end_hunk_1
begin_hunk_2_@"_ZNSt17_Function_handlerIFvRKN9Stockfish6Search8InfoFullEEZNS0_9UCIEngine5benchERSiE3$_1E9_M_invokeERKSt9_Any_dataS4_":bb.a
  br i1 %i.h, label %"_ZSt10__invoke_rIvRZN9Stockfish9UCIEngine5benchERSiE3$_1JRKNS0_6Search8InfoFullEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.i = load i64, ptr %i.a, align 8, !tbaa !33
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #30
  br label %"_ZSt10__invoke_rIvRZN9Stockfish9UCIEngine5benchERSiE3$_1JRKNS0_6Search8InfoFullEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit"

"_ZSt10__invoke_rIvRZN9Stockfish9UCIEngine5benchERSiE3$_1JRKNS0_6Search8InfoFullEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit": ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN9Stockfish6Search8InfoFullEEZNS0_9UCIEngine5benchERSiE3$_1E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #19 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine5benchERSiE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN9Stockfish9UCIEngine5benchERSiE3$_1", ptr %0, align 8, !tbaa !142
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine5benchERSiE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !140
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine5benchERSiE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !118
  store i64 %.val.i, ptr %0, align 8, !tbaa !118
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine5benchERSiE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine5benchERSiE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN9Stockfish6Search8InfoFullEEZNS0_9UCIEngine9benchmarkERSiE3$_0E9_M_invokeERKSt9_Any_dataS4_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %1) #20 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !386
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val2 = load i64, ptr %i.a, align 8, !tbaa !139
  store i64 %.val2, ptr %.val, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN9Stockfish6Search8InfoFullEEZNS0_9UCIEngine9benchmarkERSiE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #19 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine9benchmarkERSiE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN9Stockfish9UCIEngine9benchmarkERSiE3$_0", ptr %0, align 8, !tbaa !142
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine9benchmarkERSiE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !140
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine9benchmarkERSiE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !116
  store i64 %.val.i, ptr %0, align 8, !tbaa !116
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine9benchmarkERSiE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine9benchmarkERSiE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN9Stockfish6Search13InfoIterationEEZNS0_9UCIEngine9benchmarkERSiE3$_1E9_M_invokeERKSt9_Any_dataS4_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) #21 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN9Stockfish6Search13InfoIterationEEZNS0_9UCIEngine9benchmarkERSiE3$_1E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #10 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine9benchmarkERSiE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine9benchmarkERSiE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine9benchmarkERSiE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine9benchmarkERSiE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN9Stockfish9UCIEngine9benchmarkERSiE3$_1", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !140
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine9benchmarkERSiE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine9benchmarkERSiE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine9benchmarkERSiE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN9Stockfish6Search9InfoShortEEZNS0_9UCIEngine9benchmarkERSiE3$_2E9_M_invokeERKSt9_Any_dataS4_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) #21 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN9Stockfish6Search9InfoShortEEZNS0_9UCIEngine9benchmarkERSiE3$_2E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #10 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine9benchmarkERSiE3$_2E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine9benchmarkERSiE3$_2E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine9benchmarkERSiE3$_2E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine9benchmarkERSiE3$_2E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN9Stockfish9UCIEngine9benchmarkERSiE3$_2", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !140
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine9benchmarkERSiE3$_2E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine9benchmarkERSiE3$_2E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine9benchmarkERSiE3$_2E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvSt17basic_string_viewIcSt11char_traitsIcEES3_EZN9Stockfish9UCIEngine9benchmarkERSiE3$_3E9_M_invokeERKSt9_Any_dataOS3_SD_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2) #21 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvSt17basic_string_viewIcSt11char_traitsIcEES3_EZN9Stockfish9UCIEngine9benchmarkERSiE3$_3E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #10 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine9benchmarkERSiE3$_3E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine9benchmarkERSiE3$_3E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine9benchmarkERSiE3$_3E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine9benchmarkERSiE3$_3E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN9Stockfish9UCIEngine9benchmarkERSiE3$_3", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !140
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine9benchmarkERSiE3$_3E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine9benchmarkERSiE3$_3E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine9benchmarkERSiE3$_3E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvSt17basic_string_viewIcSt11char_traitsIcEEEZN9Stockfish9UCIEngine9benchmarkERSiE3$_4E9_M_invokeERKSt9_Any_dataOS3_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) #21 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvSt17basic_string_viewIcSt11char_traitsIcEEEZN9Stockfish9UCIEngine9benchmarkERSiE3$_4E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #10 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine9benchmarkERSiE3$_4E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine9benchmarkERSiE3$_4E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine9benchmarkERSiE3$_4E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine9benchmarkERSiE3$_4E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN9Stockfish9UCIEngine9benchmarkERSiE3$_4", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !140
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine9benchmarkERSiE3$_4E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine9benchmarkERSiE3$_4E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish9UCIEngine9benchmarkERSiE3$_4E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(104) ptr @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #4 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_base7_M_swapERS_(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #12

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE15_M_cache_localeERKSt6locale(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #5

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114  ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !113    ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #31
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.i      ; 2 uses
  %i.j = icmp ult i64 %3, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %3, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.f
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !46
  %i.s = load ptr, ptr %2, align 8, !tbaa !48     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !49   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.u, ptr %i.a, align 8, !tbaa !19
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.w = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.w, ptr %i.q, align 8, !tbaa !48
  %i.x = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.x, ptr %i.r, align 8, !tbaa !33
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.c, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.y = phi ptr [ %i.w, %bb.c ], [ %i.r, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.u, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !33
  store i8 %i.z, ptr %i.y, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !49
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !393)
  call void @llvm.experimental.noalias.scope.decl(metadata !394)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !46, !alias.scope !393, !noalias !394
  %i.af = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !48, !alias.scope !394, !noalias !393 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !49, !alias.scope !394, !noalias !393 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false), !alias.scope !395
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !48, !alias.scope !393, !noalias !394
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !33, !alias.scope !394, !noalias !393
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !33, !alias.scope !393, !noalias !394
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !49, !alias.scope !394, !noalias !393
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.an = phi i64 [ %i.aj, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !49, !alias.scope !393, !noalias !394
  store ptr %i.ag, ptr %.0911.i.i.i, align 8, !tbaa !48, !alias.scope !394, !noalias !393
  store i64 0, ptr %i.ao, align 8, !tbaa !49, !alias.scope !394, !noalias !393
  store i8 0, ptr %i.ag, align 8, !tbaa !33, !alias.scope !394, !noalias !393
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !6

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !396)
  call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !46, !alias.scope !396, !noalias !397
  %i.au = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !48, !alias.scope !397, !noalias !396 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.g:                                             ; preds = %.lr.ph.i.i.i17
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !49, !alias.scope !397, !noalias !396 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false), !alias.scope !398
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.au, ptr %.012.i.i.i18, align 8, !tbaa !48, !alias.scope !396, !noalias !397
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !33, !alias.scope !397, !noalias !396
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !33, !alias.scope !396, !noalias !397
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !49, !alias.scope !397, !noalias !396
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.g
  %i.bc = phi i64 [ %i.ay, %bb.g ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !49, !alias.scope !396, !noalias !397
  store ptr %i.av, ptr %.0911.i.i.i19, align 8, !tbaa !48, !alias.scope !397, !noalias !396
  store i64 0, ptr %i.bd, align 8, !tbaa !49, !alias.scope !397, !noalias !396
  store i8 0, ptr %i.av, align 8, !tbaa !33, !alias.scope !397, !noalias !396
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bf, %i.c
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !6

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.d, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !115
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bk) #30
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.h
  store ptr %i.p, ptr %0, align 8, !tbaa !113
  store ptr %.0.lcssa.i.i.i25, ptr %i.b, align 8, !tbaa !114
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !115
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #14

declare noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_uci.cpp() #0 section ".text.startup" {
bb.a:
  tail call void @_ZN9Stockfish20get_process_affinityEv(ptr dead_on_unwind nonnull writable sret(%"class.std::set") align 8 @_ZN9StockfishL26STARTUP_PROCESSOR_AFFINITYE)
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3setImSt4lessImESaImEED2Ev, ptr nonnull @_ZN9StockfishL26STARTUP_PROCESSOR_AFFINITYE, ptr nonnull @__dso_handle) #26 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

end_hunk_2
