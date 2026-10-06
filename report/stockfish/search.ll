Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/search?download=true
inline.NumInlined: 4324
inline.NumDeleted: 1738
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZN9Stockfish10NumaConfig29indices_from_shortened_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i.i24
  %i.co = load i8, ptr %.sroa.2.0.copyload.i22, align 1, !tbaa !143
  store i8 %i.co, ptr %i.cn, align 1, !tbaa !143
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit25

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cn, ptr align 1 %.sroa.2.0.copyload.i22, i64 %.sroa.0.0.copyload.i20, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit25: ; preds = %._crit_edge.i.i.i.i24, %bb.z, %bb.aa
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !55  ; 2 uses
  store i64 %i.cp, ptr %i.o, align 8, !tbaa !228
  %i.cq = load ptr, ptr %6, align 8, !tbaa !229
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cp
  store i8 0, ptr %i.cr, align 1, !tbaa !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.cs = call noundef i64 @_ZN9Stockfish13str_to_size_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %6) #33 ; 2 uses
  %i.ct = load ptr, ptr %6, align 8, !tbaa !229   ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.n
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit25
  %i.cv = load i64, ptr %i.n, align 8, !tbaa !143
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %.not52 = icmp ugt i64 %i.cb, %i.cs
  br i1 %.not52, label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit
  %i.cx = phi ptr [ %i.dr, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ]
  %i.cy = phi ptr [ %i.ds, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 3 uses
  %i.cz = phi ptr [ %i.dt, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 3 uses
  %storemerge53 = phi i64 [ %i.dv, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ], [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 3 uses
  %i.da = phi ptr [ %i.du, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 6 uses
  %.not.i29 = icmp eq ptr %i.cz, %i.cy
  br i1 %.not.i29, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph
  store i64 %storemerge53, ptr %i.cz, align 8, !tbaa !55
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  store ptr %i.db, ptr %i.p, align 8, !tbaa !658
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit

bb.ac:                                            ; preds = %.lr.ph
  %i.dc = ptrtoint ptr %i.cy to i64
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = sub i64 %i.dc, %i.dd                    ; 6 uses
  %i.df = icmp eq i64 %i.de, 9223372036854775800
  br i1 %i.df, label %bb.ad, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i30

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.da, ptr %0, align 8
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #37
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i30: ; preds = %bb.ac
  %i.dg = ashr exact i64 %i.de, 3                 ; 3 uses
  %.sroa.speculated.i.i.i31 = call i64 @llvm.umax.i64(i64 %i.dg, i64 1)
  %i.dh = add nsw i64 %.sroa.speculated.i.i.i31, %i.dg ; 2 uses
  %i.di = icmp ult i64 %i.dh, %i.dg
  %i.dj = call i64 @llvm.umin.i64(i64 %i.dh, i64 1152921504606846975)
  %i.dk = select i1 %i.di, i64 1152921504606846975, i64 %i.dj ; 3 uses
  %.not.i.i.i32 = icmp ne i64 %i.dk, 0
  call void @llvm.assume(i1 %.not.i.i.i32)
  %i.dl = shl nuw nsw i64 %i.dk, 3
  %i.dm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #36 ; 4 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 %i.de ; 2 uses
  store i64 %storemerge53, ptr %i.dn, align 8, !tbaa !55
  %i.do = icmp sgt i64 %i.de, 0
  br i1 %i.do, label %bb.ae, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i33

bb.ae:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i30
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dm, ptr align 8 %i.da, i64 %i.de, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i33

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i33: ; preds = %bb.ae, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i30
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %.not.i17.i.i34 = icmp eq ptr %i.da, null
  br i1 %.not.i17.i.i34, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i33
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.de) #38
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.af, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i33
  store ptr %i.dp, ptr %i.p, align 8, !tbaa !658
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dk ; 3 uses
  store ptr %i.dq, ptr %i.q, align 8, !tbaa !370
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit

_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit: ; preds = %bb.ab, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  %i.dr = phi ptr [ %i.cx, %bb.ab ], [ %i.dq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 2 uses
  %i.ds = phi ptr [ %i.cy, %bb.ab ], [ %i.dq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 2 uses
  %i.dt = phi ptr [ %i.db, %bb.ab ], [ %i.dp, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 2 uses
  %i.du = phi ptr [ %i.da, %bb.ab ], [ %i.dm, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 2 uses
  %i.dv = add i64 %storemerge53, 1                ; 2 uses
  %.not = icmp ugt i64 %i.dv, %i.cs
  br i1 %.not, label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit, label %.lr.ph, !llvm.loop !655

_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit: ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %i.dw = phi ptr [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.dr, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ]
  %i.dx = phi ptr [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.ds, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ]
  %i.dy = phi ptr [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.dt, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ]
  %.lcssa = phi ptr [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.du, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ] ; 2 uses
  store ptr %.lcssa, ptr %0, align 8
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split

_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split: ; preds = %bb.l, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit
  %.ph = phi ptr [ %i.aa, %bb.l ], [ %i.bq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.dw, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit ]
  %.ph87 = phi ptr [ %i.aa, %bb.l ], [ %i.bq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.dx, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit ]
  %.ph88 = phi ptr [ %i.bb, %bb.l ], [ %i.bp, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.dy, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit ]
  %.promoted62.ph = phi ptr [ %i.ad, %bb.l ], [ %i.bm, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.lcssa, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit ]
  %.pr = load ptr, ptr %3, align 8, !tbaa !387
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit

_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit: ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split, %bb.e
  %i.dz = phi ptr [ %.pr, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split ], [ %i.ah, %bb.e ] ; 3 uses
  %i.ea = phi ptr [ %.ph, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split ], [ %i.aa, %bb.e ]
  %i.eb = phi ptr [ %.ph87, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split ], [ %i.ab, %bb.e ]
  %i.ec = phi ptr [ %.ph88, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split ], [ %i.ac, %bb.e ]
  %.promoted62 = phi ptr [ %.promoted62.ph, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split ], [ %i.ad, %bb.e ]
  %.not.i.i.i35 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i35, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit
  %i.ed = load ptr, ptr %i.t, align 8, !tbaa !388
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.dz to i64
  %i.eg = sub i64 %i.ee, %i.ef
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.eg) #38
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36: ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.ah

bb.ah:                                            ; preds = %bb.d, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36
  %i.eh = phi ptr [ %i.aa, %bb.d ], [ %i.ea, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36 ]
  %i.ei = phi ptr [ %i.ab, %bb.d ], [ %i.eb, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36 ]
  %i.ej = phi ptr [ %i.ac, %bb.d ], [ %i.ec, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36 ]
  %.promoted61 = phi ptr [ %i.ad, %bb.d ], [ %.promoted62, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36 ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.045.055, i64 16 ; 2 uses
  %.not50 = icmp eq ptr %i.ek, %i.j
  br i1 %.not50, label %._crit_edge.loopexit, label %bb.d

bb.ai:                                            ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish10NumaConfig12from_l3_infoEOSt6vectorINS_8L3DomainESaIS2_EEm(ptr dead_on_unwind noalias writable sret(%"class.Stockfish::NumaConfig") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::tuple.371", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.374", align 1    ; 3 uses
  %5 = alloca %"class.std::map.362", align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  store i32 0, ptr %i.a, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !64
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !65
  %i.f = load ptr, ptr %1, align 8, !tbaa !381    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !381  ; 2 uses
  %.not85100 = icmp eq ptr %i.f, %i.h
  br i1 %.not85100, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !63
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.i = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %0, i8 0, i64 24, i1 false), !alias.scope !669
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  store i32 0, ptr %i.j, align 8, !tbaa !61, !alias.scope !669
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr null, ptr %i.k, align 8, !tbaa !62, !alias.scope !669
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.j, ptr %i.l, align 8, !tbaa !63, !alias.scope !669
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.j, ptr %i.m, align 8, !tbaa !64, !alias.scope !669
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.n, i8 0, i64 17, i1 false), !alias.scope !669
  %.not86120 = icmp eq ptr %i.i, %i.a
  br i1 %.not86120, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.h

.lr.ph:                                           ; preds = %bb.a, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %.sroa.080.0101 = phi ptr [ %i.ba, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit ], [ %i.f, %bb.a ] ; 10 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !62   ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph
  %i.t = load i64, ptr %.sroa.080.0101, align 8, !tbaa !55 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.b ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.a, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !55
  %i.w = icmp ult i64 %i.v, %i.t                  ; 3 uses
  %.19.i.i.i.i = select i1 %i.w, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.w, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i, label %bb.b, !llvm.loop !661

_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i: ; preds = %bb.b
  %i.x = icmp eq ptr %.19.i.i.i.i, %i.a
  br i1 %i.x, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.w, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.y = load i64, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !55
  %i.z = icmp ult i64 %i.t, %i.y
  br i1 %i.z, label %.critedge.i, label %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit

.critedge.i:                                      ; preds = %bb.c, %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i, %.lr.ph
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.c ], [ %.19.i.i.i.i, %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i ], [ %i.a, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store ptr %.sroa.080.0101, ptr %3, align 8, !tbaa !367
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.aa = call ptr @_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit

_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit: ; preds = %bb.c, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.aa, %.critedge.i ], [ %.19.i.i.i.i, %bb.c ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !379 ; 12 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !380
  %.not.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit
  %i.af = load i64, ptr %.sroa.080.0101, align 8, !tbaa !376
  store i64 %i.af, ptr %i.ac, align 8, !tbaa !376
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.080.0101, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.080.0101, i64 16 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !61
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.ai, ptr %i.al, align 8, !tbaa !62
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.080.0101, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.080.0101, i64 40
  %i.ap = load <2 x ptr>, ptr %i.am, align 8, !tbaa !66
  store <2 x ptr> %i.ap, ptr %i.an, align 8, !tbaa !66
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ag, ptr %i.aq, align 8, !tbaa !363
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.080.0101, i64 48 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !65
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store i64 %i.as, ptr %i.at, align 8, !tbaa !65
  store ptr null, ptr %i.ah, align 8, !tbaa !62
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !63
  store ptr %i.aj, ptr %i.ao, align 8, !tbaa !64
  store i64 0, ptr %i.ar, align 8, !tbaa !65
  br label %_ZN9Stockfish8L3DomainC2EOS0_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr null, ptr %i.au, align 8, !tbaa !62
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %i.ag, ptr %i.av, align 8, !tbaa !63
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store ptr %i.ag, ptr %i.aw, align 8, !tbaa !64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store i64 0, ptr %i.ax, align 8, !tbaa !65
  br label %_ZN9Stockfish8L3DomainC2EOS0_.exit.i

_ZN9Stockfish8L3DomainC2EOS0_.exit.i:             ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i.i.i = phi i32 [ 0, %bb.f ], [ %i.ak, %bb.e ]
  store i32 %.sink.i.i.i.i.i.i, ptr %i.ag, align 8, !tbaa !61
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store ptr %i.ay, ptr %i.ab, align 8, !tbaa !379
  br label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

bb.g:                                             ; preds = %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  call void @_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr %i.ac, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.080.0101)
  br label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %_ZN9Stockfish8L3DomainC2EOS0_.exit.i, %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.080.0101, i64 56 ; 2 uses
  %.not85 = icmp eq ptr %i.ba, %i.h
  br i1 %.not85, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge125:                                   ; preds = %._crit_edge118, %._crit_edge
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !62
  call void @_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret void

bb.h:                                             ; preds = %.lr.ph124, %._crit_edge118
  %.035122 = phi i64 [ 0, %.lr.ph124 ], [ %.136.lcssa, %._crit_edge118 ] ; 2 uses
  %.sroa.076.0121 = phi ptr [ %i.i, %.lr.ph124 ], [ %i.es, %._crit_edge118 ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.076.0121, i64 40 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.076.0121, i64 48 ; 5 uses
  %.pre137 = load ptr, ptr %i.bd, align 8, !tbaa !379
  %.pre138 = load ptr, ptr %i.bc, align 8, !tbaa !382
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge106, %bb.h
  %i.be = phi ptr [ %i.ek, %._crit_edge106 ], [ %.pre138, %bb.h ] ; 3 uses
  %i.bf = phi ptr [ %i.el, %._crit_edge106 ], [ %.pre137, %bb.h ] ; 3 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = sdiv exact i64 %i.bi, 56
  %i.bk = icmp ugt i64 %i.bj, 1
  br i1 %i.bk, label %.lr.ph105, label %.preheader

._crit_edge106:                                   ; preds = %bb.r
  br i1 %.1, label %bb.i, label %.preheader, !llvm.loop !662

.preheader:                                       ; preds = %bb.i, %._crit_edge106
  %i.bl = phi ptr [ %i.el, %._crit_edge106 ], [ %i.bf, %bb.i ] ; 2 uses
  %i.bm = phi ptr [ %i.ek, %._crit_edge106 ], [ %i.be, %bb.i ] ; 2 uses
  %.not87114 = icmp eq ptr %i.bm, %i.bl
  br i1 %.not87114, label %._crit_edge118, label %.lr.ph117

.lr.ph105:                                        ; preds = %bb.i, %bb.r
  %i.bn = phi ptr [ %i.ek, %bb.r ], [ %i.be, %bb.i ] ; 4 uses
  %i.bo = phi ptr [ %i.el, %bb.r ], [ %i.bf, %bb.i ] ; 2 uses
  %i.bp = phi i64 [ %i.em, %bb.r ], [ 1, %bb.i ]  ; 3 uses
  %.0103 = phi i64 [ %i.bp, %bb.r ], [ 0, %bb.i ] ; 2 uses
  %.034102 = phi i1 [ %.1, %bb.r ], [ false, %bb.i ]
  %i.bq = getelementptr inbounds nuw [56 x i8], ptr %i.bn, i64 %.0103 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !65
  %i.bt = getelementptr inbounds nuw [56 x i8], ptr %i.bn, i64 %i.bp ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 48 ; 3 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !65
  %i.bw = add i64 %i.bv, %i.bs
  %.not = icmp ugt i64 %i.bw, %2
  br i1 %.not, label %bb.r, label %bb.j

bb.j:                                             ; preds = %.lr.ph105
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !63 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 3 uses
  %.not21.i = icmp eq ptr %i.by, %i.bz
  br i1 %.not21.i, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit, label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i, %.lr.ph.i43
  %.sroa.013.022.i = phi ptr [ %i.by, %.lr.ph.i43 ], [ %i.cd, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i ] ; 3 uses
  %i.cd = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.013.022.i) #35 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i, i64 32 ; 2 uses
  %.02022.i.i = load ptr, ptr %i.ca, align 8, !tbaa !66 ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !55 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.02022.i.i, %.lr.ph.i.i ], [ %.020.i.i, %bb.l ] ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !55 ; 2 uses
  %i.ci = icmp ult i64 %i.cf, %i.ch               ; 2 uses
  %.in.v.i.i = select i1 %i.ci, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !66 ; 2 uses
  %.not.i.i44 = icmp eq ptr %.020.i.i, null
end_hunk_0
begin_hunk_1_@_ZN9Stockfish10NumaConfig12from_l3_infoEOSt6vectorINS_8L3DomainESaIS2_EEm:bb.a
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i
  %i.cm = phi i64 [ %.pre23.i, %bb.m ], [ %i.cf, %._crit_edge.i.i ]
  %i.cn = phi i64 [ %.pre.i47, %bb.m ], [ %i.ch, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.m ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.co = icmp ult i64 %i.cn, %i.cm
  br i1 %i.co, label %select.unfold.i, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i

select.unfold.i:                                  ; preds = %bb.n, %._crit_edge.thread.i.i
  %.sroa.4.0.i.ph.i = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %.019.lcssa28.i.i, %bb.n ] ; 3 uses
  %i.cp = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.013.022.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bz) #33 ; 2 uses
  %i.cq = load i64, ptr %i.bu, align 8, !tbaa !65
  %i.cr = add i64 %i.cq, -1
  store i64 %i.cr, ptr %i.bu, align 8, !tbaa !65
  %i.cs = icmp eq ptr %.sroa.4.0.i.ph.i, %i.cb
  br i1 %i.cs, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_insert_nodeEPSt18_Rb_tree_node_baseS7_PSt13_Rb_tree_nodeImE.exit.i, label %bb.o

bb.o:                                             ; preds = %select.unfold.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 32
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !55
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !55
  %i.cx = icmp ult i64 %i.cv, %i.cw
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_insert_nodeEPSt18_Rb_tree_node_baseS7_PSt13_Rb_tree_nodeImE.exit.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_insert_nodeEPSt18_Rb_tree_node_baseS7_PSt13_Rb_tree_nodeImE.exit.i: ; preds = %bb.o, %select.unfold.i
  %i.cy = phi i1 [ %i.cx, %bb.o ], [ true, %select.unfold.i ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.cy, ptr noundef nonnull %i.cp, ptr noundef nonnull %.sroa.4.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cb) #33
  %i.cz = load i64, ptr %i.br, align 8, !tbaa !65
  %i.da = add i64 %i.cz, 1
  store i64 %i.da, ptr %i.br, align 8, !tbaa !65
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_insert_nodeEPSt18_Rb_tree_node_baseS7_PSt13_Rb_tree_nodeImE.exit.i, %bb.n
  %.not.i45 = icmp eq ptr %i.cd, %i.bz
  br i1 %.not.i45, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit, label %bb.k, !llvm.loop !663

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i
  %.pre139 = load ptr, ptr %i.bc, align 8, !tbaa !381
  %.pre140 = load ptr, ptr %i.bd, align 8, !tbaa !381
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit, %bb.j
  %i.db = phi ptr [ %.pre140, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit ], [ %i.bo, %bb.j ] ; 4 uses
  %i.dc = phi ptr [ %.pre139, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit ], [ %i.bn, %bb.j ]
  %i.dd = getelementptr inbounds [56 x i8], ptr %i.dc, i64 %.0103 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 112 ; 3 uses
  %.not.i.i = icmp eq ptr %i.de, %i.db
  br i1 %.not.i.i, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit
  %i.df = ptrtoint ptr %i.db to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg                    ; 2 uses
  %i.di = icmp sgt i64 %i.dh, 0
  br i1 %i.di, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.p
  %i.dj = udiv exact i64 %i.dh, 56
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.ed, %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i ], [ %i.dj, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.pn = phi ptr [ %.0811.i.i.i.i.i.i.i, %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i ], [ %i.dd, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 7 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.ec, %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i ], [ %i.de, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 7 uses
  %.0811.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 56 ; 2 uses
  %i.dk = load i64, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !376
  store i64 %i.dk, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !376
  %i.dl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 64
  %i.dm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 80 ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !62
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.dl, ptr noundef %i.dn)
  %i.do = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 72 ; 4 uses
  store ptr null, ptr %i.dm, align 8, !tbaa !62
  %i.dp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 88 ; 2 uses
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !63
  %i.dq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 96
  store ptr %i.do, ptr %i.dq, align 8, !tbaa !64
  %i.dr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 104 ; 2 uses
  store i64 0, ptr %i.dr, align 8, !tbaa !65
  %i.ds = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !66 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !61
  store i32 %i.dv, ptr %i.do, align 8, !tbaa !61
  store ptr %i.dt, ptr %i.dm, align 8, !tbaa !62
  %i.dw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 40
  %i.dy = load <2 x ptr>, ptr %i.dw, align 8, !tbaa !66
  store <2 x ptr> %i.dy, ptr %i.dp, align 8, !tbaa !66
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %i.do, ptr %i.dz, align 8, !tbaa !363
  %i.ea = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !65
  store i64 %i.eb, ptr %i.dr, align 8, !tbaa !65
  store ptr null, ptr %i.ds, align 8, !tbaa !62
  store ptr %i.du, ptr %i.dw, align 8, !tbaa !63
  store ptr %i.du, ptr %i.dx, align 8, !tbaa !64
  store i64 0, ptr %i.ea, align 8, !tbaa !65
  br label %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i

_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i: ; preds = %bb.q, %.lr.ph.i.i.i.i.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 56
  %i.ed = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.ee = icmp sgt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.ee, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i, !llvm.loop !664

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i: ; preds = %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.bd, align 8, !tbaa !379
  br label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit

_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit, %bb.p, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i
  %i.ef = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i ], [ %i.db, %bb.p ], [ %i.db, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit ] ; 3 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -56
  store ptr %i.eg, ptr %i.bd, align 8, !tbaa !379
  %i.eh = getelementptr inbounds i8, ptr %i.ef, i64 -48
  %i.ei = getelementptr inbounds i8, ptr %i.ef, i64 -32
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !62
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.eh, ptr noundef %i.ej)
  %.pre141 = load ptr, ptr %i.bd, align 8, !tbaa !379
  %.pre142 = load ptr, ptr %i.bc, align 8, !tbaa !382
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph105, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit
  %i.ek = phi ptr [ %.pre142, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %i.bn, %.lr.ph105 ] ; 4 uses
  %i.el = phi ptr [ %.pre141, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %i.bo, %.lr.ph105 ] ; 4 uses
  %.1 = phi i1 [ true, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.034102, %.lr.ph105 ] ; 2 uses
  %i.em = add nuw i64 %i.bp, 1                    ; 2 uses
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.ek to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = sdiv exact i64 %i.ep, 56
  %i.er = icmp ult i64 %i.em, %i.eq
  br i1 %i.er, label %.lr.ph105, label %._crit_edge106, !llvm.loop !665

._crit_edge118:                                   ; preds = %._crit_edge113, %.preheader
  %.136.lcssa = phi i64 [ %.035122, %.preheader ], [ %i.et, %._crit_edge113 ]
  %i.es = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.076.0121) #35 ; 2 uses
  %.not86 = icmp eq ptr %i.es, %i.a
  br i1 %.not86, label %._crit_edge125, label %bb.h

.lr.ph117:                                        ; preds = %.preheader, %._crit_edge113
  %.136116 = phi i64 [ %i.et, %._crit_edge113 ], [ %.035122, %.preheader ] ; 5 uses
  %.sroa.068.0115 = phi ptr [ %i.ex, %._crit_edge113 ], [ %i.bm, %.preheader ] ; 3 uses
  %i.et = add i64 %.136116, 1                     ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.068.0115, i64 32
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !63 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.068.0115, i64 16 ; 2 uses
  %.not88109 = icmp eq ptr %i.ev, %i.ew
  br i1 %.not88109, label %._crit_edge113, label %.lr.ph112

._crit_edge113:                                   ; preds = %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit, %.lr.ph117
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.068.0115, i64 56 ; 2 uses
  %.not87 = icmp eq ptr %i.ex, %i.bl
  br i1 %.not87, label %._crit_edge118, label %.lr.ph117

.lr.ph112:                                        ; preds = %.lr.ph117, %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit
  %.sroa.064.0110 = phi ptr [ %i.jj, %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit ], [ %i.ev, %.lr.ph117 ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.064.0110, i64 32
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !55 ; 11 uses
  %i.fa = load ptr, ptr %i.k, align 8, !tbaa !62  ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not10.i.i.i.i.i, label %.preheader.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph112, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.fa, %.lr.ph112 ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.j, %.lr.ph112 ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !55
  %i.fd = icmp ult i64 %i.fc, %i.ez               ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.fd, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.fd, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.fe = icmp eq ptr %.19.i.i.i.i.i, %i.j
  br i1 %i.fe, label %.preheader.i, label %.split.i

.split.i:                                         ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !55
  %.not8.i = icmp ult i64 %i.ez, %i.fg
  br i1 %.not8.i, label %.preheader.i, label %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit

.preheader.i:                                     ; preds = %.split.i, %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, %.lr.ph112
  %i.fh = load ptr, ptr %i.o, align 8, !tbaa !327 ; 2 uses
  %i.fi = load ptr, ptr %0, align 8, !tbaa !328   ; 3 uses
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = sdiv exact i64 %i.fl, 48
  %.not11.i = icmp ugt i64 %i.fm, %.136116
  br i1 %.not11.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i
  %i.fn = phi ptr [ %i.hi, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i ], [ %i.fi, %.preheader.i ] ; 5 uses
  %i.fo = phi ptr [ %i.hj, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i ], [ %i.fh, %.preheader.i ] ; 9 uses
  %6 = load ptr, ptr %i.p, align 8, !tbaa !341
  %.not.i.i38 = icmp eq ptr %i.fo, %6
  br i1 %.not.i.i38, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fo, i8 0, i64 24, i1 false)
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !63
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  store ptr %i.fp, ptr %i.fr, align 8, !tbaa !64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  store i64 0, ptr %i.fs, align 8, !tbaa !65
  %i.ft = load ptr, ptr %i.o, align 8, !tbaa !327
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 48 ; 2 uses
  store ptr %i.fu, ptr %i.o, align 8, !tbaa !327
  %.pre143.a = load ptr, ptr %0, align 8, !tbaa !328
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i

bb.t:                                             ; preds = %.lr.ph.i
  %i.fv = ptrtoint ptr %i.fo to i64
  %i.fw = ptrtoint ptr %i.fn to i64               ; 2 uses
  %i.fx = sub i64 %i.fv, %i.fw                    ; 3 uses
  %i.fy = icmp eq i64 %i.fx, 9223372036854775776
  br i1 %i.fy, label %bb.u, label %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.u:                                             ; preds = %bb.t
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #37
  unreachable

_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.t
  %i.fz = sdiv exact i64 %i.fx, 48                ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.fz, i64 1)
  %i.ga = add nsw i64 %.sroa.speculated.i.i, %i.fz ; 2 uses
  %i.gb = icmp ult i64 %i.ga, %i.fz
  %i.gc = call i64 @llvm.umin.i64(i64 %i.ga, i64 192153584101141162)
  %i.gd = select i1 %i.gb, i64 192153584101141162, i64 %i.gc ; 3 uses
  %.not.i.i59 = icmp ne i64 %i.gd, 0
  call void @llvm.assume(i1 %.not.i.i59)
  %i.ge = mul nuw nsw i64 %i.gd, 48
  %i.gf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ge) #36 ; 6 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.fx ; 5 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gg, i8 0, i64 24, i1 false)
  store ptr %i.gh, ptr %i.gi, align 8, !tbaa !63
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  store ptr %i.gh, ptr %i.gj, align 8, !tbaa !64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 40
  store i64 0, ptr %i.gk, align 8, !tbaa !65
  %.not10.i.i.i.i60 = icmp eq ptr %i.fn, %i.fo
  br i1 %.not10.i.i.i.i60, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i, label %.lr.ph.i.i.i.i61

.lr.ph.i.i.i.i61:                                 ; preds = %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i62 = phi ptr [ %i.hc, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.gf, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 6 uses
  %.0911.i.i.i.i = phi ptr [ %i.hb, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.fn, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !670)
  call void @llvm.experimental.noalias.scope.decl(metadata !671)
  %i.gl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i62, i64 8 ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !62, !alias.scope !671, !noalias !670 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i61
  %i.go = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 3 uses
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !61, !alias.scope !671, !noalias !670
  %i.gq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !63, !alias.scope !671, !noalias !670
  %i.gs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !64, !alias.scope !671, !noalias !670
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store ptr %i.gl, ptr %i.gu, align 8, !tbaa !363, !noalias !672
  %i.gv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !65, !alias.scope !671, !noalias !670
  store ptr null, ptr %i.gm, align 8, !tbaa !62, !alias.scope !671, !noalias !670
  store ptr %i.go, ptr %i.gq, align 8, !tbaa !63, !alias.scope !671, !noalias !670
  store ptr %i.go, ptr %i.gs, align 8, !tbaa !64, !alias.scope !671, !noalias !670
  store i64 0, ptr %i.gv, align 8, !tbaa !65, !alias.scope !671, !noalias !670
  br label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %bb.v, %.lr.ph.i.i.i.i61
  %.sink6.i.i.i.i.i = phi ptr [ %i.gr, %bb.v ], [ %i.gl, %.lr.ph.i.i.i.i61 ]
  %.sink5.i.i.i.i.i = phi ptr [ %i.gt, %bb.v ], [ %i.gl, %.lr.ph.i.i.i.i61 ]
  %.sink.i.i.i.i.i = phi i64 [ %i.gw, %bb.v ], [ 0, %.lr.ph.i.i.i.i61 ]
  %.sink.i.i.i.i.i.i.i.i.i = phi i32 [ %i.gp, %bb.v ], [ 0, %.lr.ph.i.i.i.i61 ]
  %i.gx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i62, i64 16
  store ptr %i.gn, ptr %i.gx, align 8, !tbaa !62, !alias.scope !670, !noalias !671
  %i.gy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i62, i64 24
  store ptr %.sink6.i.i.i.i.i, ptr %i.gy, align 8, !tbaa !63, !alias.scope !670, !noalias !671
  %i.gz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i62, i64 32
  store ptr %.sink5.i.i.i.i.i, ptr %i.gz, align 8, !tbaa !64, !alias.scope !670, !noalias !671
  %i.ha = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i62, i64 40
  store i64 %.sink.i.i.i.i.i, ptr %i.ha, align 8, !tbaa !65, !alias.scope !670, !noalias !671
  store i32 %.sink.i.i.i.i.i.i.i.i.i, ptr %i.gl, align 8, !tbaa !61, !alias.scope !670, !noalias !671
  %i.hb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i62, i64 48 ; 2 uses
  %.not.i.i.i.i63 = icmp eq ptr %i.hb, %i.fo
  br i1 %.not.i.i.i.i63, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i, label %.lr.ph.i.i.i.i61, !llvm.loop !15

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i: ; preds = %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.gf, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i ], [ %i.hc, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.hd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 48 ; 2 uses
  %.not.i28.i = icmp eq ptr %i.fn, null
  br i1 %.not.i28.i, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i
  %i.he = load ptr, ptr %i.p, align 8, !tbaa !341
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = sub i64 %i.hf, %i.fw
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef %i.hg) #38
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i, %bb.w
  store ptr %i.gf, ptr %0, align 8, !tbaa !328
  store ptr %i.hd, ptr %i.o, align 8, !tbaa !327
  %i.hh = getelementptr inbounds nuw [48 x i8], ptr %i.gf, i64 %i.gd
  store ptr %i.hh, ptr %i.p, align 8, !tbaa !341
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i: ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit, %bb.s
  %i.hi = phi ptr [ %.pre143.a, %bb.s ], [ %i.gf, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit ] ; 3 uses
  %i.hj = phi ptr [ %i.fu, %bb.s ], [ %i.hd, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit ] ; 2 uses
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = ptrtoint ptr %i.hi to i64
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = sdiv exact i64 %i.hm, 48
  %.not.i39 = icmp ugt i64 %i.hn, %.136116
  br i1 %.not.i39, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !16

._crit_edge.i:                                    ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i, %.preheader.i
  %.lcssa10.i = phi ptr [ %i.fi, %.preheader.i ], [ %i.hi, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i ]
  %i.ho = getelementptr inbounds nuw [48 x i8], ptr %.lcssa10.i, i64 %.136116 ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 3 uses
  %.02022.i.i.i.i = load ptr, ptr %i.hp, align 8, !tbaa !66 ; 2 uses
  %.not23.i.i.i.i = icmp eq ptr %.02022.i.i.i.i, null
  br i1 %.not23.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i40

.lr.ph.i.i.i.i40:                                 ; preds = %._crit_edge.i, %.lr.ph.i.i.i.i40
  %.02024.i.i.i.i = phi ptr [ %.020.i.i.i.i, %.lr.ph.i.i.i.i40 ], [ %.02022.i.i.i.i, %._crit_edge.i ] ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 32
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !55 ; 2 uses
  %i.ht = icmp ult i64 %i.ez, %i.hs               ; 2 uses
  %.in.v.i.i.i.i = select i1 %i.ht, i64 16, i64 24
  %.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 %.in.v.i.i.i.i
  %.020.i.i.i.i = load ptr, ptr %.in.i.i.i.i, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %.020.i.i.i.i, null
  br i1 %.not.i.i.i.i41, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i40, !llvm.loop !0

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i40
  br i1 %i.ht, label %._crit_edge.thread.i.i.i.i, label %bb.y

._crit_edge.thread.i.i.i.i:                       ; preds = %._crit_edge.i.i.i.i, %._crit_edge.i
  %.019.lcssa29.i.i.i.i = phi ptr [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.hq, %._crit_edge.i ] ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !63
  %i.hw = icmp eq ptr %.019.lcssa29.i.i.i.i, %i.hv
  br i1 %i.hw, label %select.unfold.i.i.i, label %bb.x

bb.x:                                             ; preds = %._crit_edge.thread.i.i.i.i
  %i.hx = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i.i) #35
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.hx, i64 32
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !55
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge.i.i.i.i
  %i.hy = phi i64 [ %.pre.i.i.i, %bb.x ], [ %i.hs, %._crit_edge.i.i.i.i ]
  %.019.lcssa28.i.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %bb.x ], [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.hz = icmp ult i64 %i.hy, %i.ez
  br i1 %i.hz, label %select.unfold.i.i.i, label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i

select.unfold.i.i.i:                              ; preds = %bb.y, %._crit_edge.thread.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %._crit_edge.thread.i.i.i.i ], [ %.019.lcssa28.i.i.i.i, %bb.y ] ; 3 uses
  %i.ia = icmp eq ptr %.sroa.4.0.i.ph.i.i.i, %i.hq
  br i1 %i.ia, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %select.unfold.i.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.i, i64 32
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !55
  %i.id = icmp ult i64 %i.ez, %i.ic
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i: ; preds = %bb.z, %select.unfold.i.i.i
  %i.ie = phi i1 [ %i.id, %bb.z ], [ true, %select.unfold.i.i.i ]
  %i.if = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #36 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  store i64 %i.ez, ptr %i.ig, align 8, !tbaa !55
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ie, ptr noundef nonnull %i.if, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.hq) #33
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ho, i64 40 ; 2 uses
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !65
  %i.ij = add i64 %i.ii, 1
  store i64 %i.ij, ptr %i.ih, align 8, !tbaa !65
  br label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i

_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i:    ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i, %bb.y
  %i.ik = load ptr, ptr %i.k, align 8, !tbaa !62  ; 2 uses
  %.not10.i.i.i.i48 = icmp eq ptr %i.ik, null
  br i1 %.not10.i.i.i.i48, label %.critedge.i57, label %.lr.ph.i.i.i.i49

.lr.ph.i.i.i.i49:                                 ; preds = %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i, %.lr.ph.i.i.i.i49
  %.012.i.i.i.i50 = phi ptr [ %.1.i.i.i.i55, %.lr.ph.i.i.i.i49 ], [ %i.ik, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i ] ; 3 uses
  %.0811.i.i.i.i51 = phi ptr [ %.19.i.i.i.i52, %.lr.ph.i.i.i.i49 ], [ %i.j, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i ]
  %i.il = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i50, i64 32
  %i.im = load i64, ptr %i.il, align 8, !tbaa !55
  %i.in = icmp ult i64 %i.im, %i.ez               ; 2 uses
  %.19.i.i.i.i52 = select i1 %i.in, ptr %.0811.i.i.i.i51, ptr %.012.i.i.i.i50 ; 6 uses
  %.1.in.v.i.i.i.i53 = select i1 %i.in, i64 24, i64 16
  %.1.in.i.i.i.i54 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i50, i64 %.1.in.v.i.i.i.i53
  %.1.i.i.i.i55 = load ptr, ptr %.1.in.i.i.i.i54, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i56 = icmp eq ptr %.1.i.i.i.i55, null
  br i1 %.not.i.i.i.i56, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i, label %.lr.ph.i.i.i.i49, !llvm.loop !13

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i: ; preds = %.lr.ph.i.i.i.i49
  %i.io = icmp eq ptr %.19.i.i.i.i52, %i.j
  br i1 %i.io, label %.critedge.i57, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i
  %i.ip = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i52, i64 32
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !55
  %i.ir = icmp ult i64 %i.ez, %i.iq
  br i1 %i.ir, label %.critedge.i57, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit

.critedge.i57:                                    ; preds = %bb.aa, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i52, %bb.aa ], [ %.19.i.i.i.i52, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i ], [ %i.j, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i ]
  %i.is = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #36 ; 5 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 32 ; 3 uses
  store i64 %i.ez, ptr %i.it, align 8, !tbaa !391
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 40
  store i64 0, ptr %i.iu, align 8, !tbaa !392
  %i.iv = call { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.it) ; 2 uses
  %i.iw = extractvalue { ptr, ptr } %i.iv, 0      ; 2 uses
  %i.ix = extractvalue { ptr, ptr } %i.iv, 1      ; 4 uses
  %.not.i.i58 = icmp eq ptr %i.ix, null
  br i1 %.not.i.i58, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %.critedge.i57
  %.not.i.i.i4.i = icmp ne ptr %i.iw, null
  %i.iy = icmp eq ptr %i.ix, %i.j
  %or.cond.i.i.i.i = or i1 %.not.i.i.i4.i, %i.iy
  br i1 %or.cond.i.i.i.i, label %.thread.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  %i.ja = load i64, ptr %i.it, align 8, !tbaa !55
  %i.jb = load i64, ptr %i.iz, align 8, !tbaa !55
  %i.jc = icmp ult i64 %i.ja, %i.jb
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ac, %bb.ab
  %i.jd = phi i1 [ %i.jc, %bb.ac ], [ true, %bb.ab ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.jd, ptr noundef nonnull %i.is, ptr noundef nonnull %i.ix, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #33
  %i.je = load i64, ptr %i.n, align 8, !tbaa !65
  %i.jf = add i64 %i.je, 1
  store i64 %i.jf, ptr %i.n, align 8, !tbaa !65
  br label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit

bb.ad:                                            ; preds = %.critedge.i57
  call void @_ZdlPvm(ptr noundef nonnull %i.is, i64 noundef 48) #38
  br label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit: ; preds = %bb.aa, %.thread.i.i, %bb.ad
  %.sroa.09.0.i = phi ptr [ %.19.i.i.i.i52, %bb.aa ], [ %i.is, %.thread.i.i ], [ %i.iw, %bb.ad ]
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i, i64 40
  store i64 %.136116, ptr %i.jg, align 8, !tbaa !55
  %i.jh = load i64, ptr %i.r, align 8, !tbaa !338
  %i.ji = icmp ugt i64 %i.ez, %i.jh
  br i1 %i.ji, label %bb.ae, label %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit

bb.ae:                                            ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit
  store i64 %i.ez, ptr %i.r, align 8, !tbaa !338
  br label %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit

_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit: ; preds = %.split.i, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit, %bb.ae
  %i.jj = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.064.0110) #35 ; 2 uses
  %.not88 = icmp eq ptr %i.jj, %i.ew
  br i1 %.not88, label %._crit_edge113, label %.lr.ph112
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish5splitESt17basic_string_viewIcSt11char_traitsIcEES3_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.347") align 8 %0, i64 %1, ptr %2, i64 %3, ptr %4) local_unnamed_addr #3 comdat {
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
  %i.h = phi ptr [ %i.as, %bb.o ], [ null, %.preheader ] ; 9 uses
  %i.i = phi ptr [ %i.at, %bb.o ], [ null, %.preheader ] ; 8 uses
  %i.j = phi ptr [ %i.au, %bb.o ], [ null, %.preheader ] ; 14 uses
  %.09 = phi i64 [ %i.av, %bb.o ], [ 0, %.preheader ] ; 14 uses
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
end_hunk_1
