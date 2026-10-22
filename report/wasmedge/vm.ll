Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/vm?download=true
inline.NumInlined: 28114
inline.NumDeleted: 15480
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN3fmt3v116detail18parse_dynamic_specIcEEPKT_S5_S5_RiRNS1_7arg_refIS3_EERNS0_26basic_format_parse_contextIS3_EE:bb.a
  %.0 = phi ptr [ %i.ar, %bb.n ], [ %.lcssa.i, %bb.f ], [ %0, %bb.g ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v116detail15do_parse_arg_idIcRNS1_23dynamic_spec_id_handlerIcEEEEPKT_S8_S8_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !319     ; 5 uses
  %i.d = add i8 %i.c, -48
  %or.cond = icmp ult i8 %i.d, 10
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %.not28 = icmp eq i8 %i.c, 48
  br i1 %.not28, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = xor i64 %i.a, -1
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %scevgep.i = getelementptr i8, ptr %i.f, i64 %i.b ; 2 uses
  %i.g = sub i64 %i.b, %i.a
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.g ; 2 uses
  %i.h = zext nneg i8 %i.c to i32
  %i.i = add nsw i32 %i.h, -48                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i47 = icmp eq ptr %i.j, %1
  br i1 %.not34.i47, label %.critedge.i, label %.lr.ph50

bb.d:                                             ; preds = %.lr.ph50
  %i.k = mul i32 %i.q, 10
  %i.l = zext nneg i8 %i.r to i32
  %i.m = add nsw i32 %i.l, -48
  %i.n = add i32 %i.m, %i.k                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.o, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph50, !llvm.loop !34

.lr.ph50:                                         ; preds = %bb.c, %bb.d
  %i.p = phi ptr [ %i.o, %bb.d ], [ %i.j, %bb.c ] ; 4 uses
  %i.q = phi i32 [ %i.n, %bb.d ], [ %i.i, %bb.c ] ; 4 uses
  %.0.i49 = phi ptr [ %i.p, %bb.d ], [ %0, %bb.c ]
  %.027.i48 = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %i.r = load i8, ptr %i.p, align 1, !tbaa !319   ; 2 uses
  %i.s = add i8 %i.r, -48
  %or.cond.i = icmp ult i8 %i.s, 10
  br i1 %or.cond.i, label %bb.d, label %..critedge.i_crit_edge, !llvm.loop !34

..critedge.i_crit_edge:                           ; preds = %.lr.ph50
  br label %.critedge.i, !llvm.loop !34

.critedge.i:                                      ; preds = %bb.d, %..critedge.i_crit_edge, %bb.c
  %.027.i.lcssa = phi i32 [ %.027.i48, %..critedge.i_crit_edge ], [ 0, %bb.c ], [ %i.q, %bb.d ]
  %.lcssa = phi i32 [ %i.q, %..critedge.i_crit_edge ], [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.0.i49, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.c ], [ %scevgep.i, %bb.d ]
  %.lcssa.i = phi ptr [ %i.p, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.c ], [ %scevgep37.i, %bb.d ] ; 4 uses
  %i.t = ptrtoint ptr %.lcssa.i to i64
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = icmp slt i64 %i.v, 10
  br i1 %i.w, label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %i.x = icmp eq i64 %i.v, 10
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = zext i32 %.027.i.lcssa to i64
  %i.z = mul nuw nsw i64 %i.y, 10
  %i.aa = load i8, ptr %.0.lcssa.i, align 1, !tbaa !319
  %i.ab = sext i8 %i.aa to i64
  %i.ac = add nsw i64 %i.ab, 4294967248
  %i.ad = and i64 %i.ac, 4294967294
  %i.ae = add nuw nsw i64 %i.ad, %i.z
  %i.af = icmp samesign ult i64 %i.ae, 2147483648
  br i1 %i.af, label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

bb.h:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %bb.g, %bb.f, %.critedge.i, %bb.h
  %.037 = phi ptr [ %i.ag, %bb.h ], [ %.lcssa.i, %.critedge.i ], [ %.lcssa.i, %bb.f ], [ %.lcssa.i, %bb.g ] ; 3 uses
  %.021 = phi i32 [ 0, %bb.h ], [ %.lcssa, %.critedge.i ], [ %.lcssa, %bb.f ], [ 2147483647, %bb.g ]
  %i.ah = icmp eq ptr %.037, %1
  br i1 %i.ah, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  %i.ai = load i8, ptr %.037, align 1, !tbaa !319
  switch i8 %i.ai, label %bb.j [
    i8 125, label %bb.k
    i8 58, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i, %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.36) #31
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1906, !nonnull !165, !align !301 ; 2 uses
  store i32 1, ptr %i.ak, align 8, !tbaa !794
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i32 %.021, ptr %.sroa.43.0..sroa_idx.i, align 8
  %i.al = load ptr, ptr %2, align 8, !tbaa !1907, !nonnull !165, !align !301
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !792
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %bb.l, label %_ZN3fmt3v116detail23dynamic_spec_id_handlerIcE8on_indexEi.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.37) #31
  unreachable

_ZN3fmt3v116detail23dynamic_spec_id_handlerIcE8on_indexEi.exit: ; preds = %bb.k
  store i32 -1, ptr %i.am, align 8, !tbaa !792
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.ap = and i8 %i.c, -33
  %i.aq = add i8 %i.ap, -65
  %or.cond10.i = icmp ult i8 %i.aq, 26
  %i.ar = icmp eq i8 %i.c, 95
  %i.as = or i1 %i.ar, %or.cond10.i
  br i1 %i.as, label %.critedge4.preheader, label %bb.n

.critedge4.preheader:                             ; preds = %bb.m
  %i.at = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.at  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not45 = icmp eq ptr %i.au, %1
  br i1 %.not45, label %.critedge, label %.lr.ph

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.36) #31
  unreachable

.critedge4:                                       ; preds = %.lr.ph
  %i.av = getelementptr inbounds nuw i8, ptr %i.aw, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.av, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !1904

.lr.ph:                                           ; preds = %.critedge4.preheader, %.critedge4
  %i.aw = phi ptr [ %i.av, %.critedge4 ], [ %i.au, %.critedge4.preheader ] ; 3 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !319 ; 3 uses
  %i.ay = and i8 %i.ax, -33
  %i.az = add i8 %i.ay, -65
  %or.cond10.i32 = icmp ult i8 %i.az, 26
  %i.ba = icmp eq i8 %i.ax, 95
  %i.bb = or i1 %i.ba, %or.cond10.i32
  %i.bc = add i8 %i.ax, -48
  %or.cond31 = icmp ult i8 %i.bc, 10
  %or.cond38 = or i1 %or.cond31, %i.bb
  br i1 %or.cond38, label %.critedge4, label %..critedge_crit_edge, !llvm.loop !1904

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !1904

.critedge:                                        ; preds = %.critedge4, %..critedge_crit_edge, %.critedge4.preheader
  %.lcssa40 = phi ptr [ %i.aw, %..critedge_crit_edge ], [ %scevgep, %.critedge4.preheader ], [ %scevgep, %.critedge4 ] ; 2 uses
  %i.bd = ptrtoint ptr %.lcssa40 to i64
  %i.be = ptrtoint ptr %0 to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1906, !nonnull !165, !align !301 ; 3 uses
  store i32 2, ptr %i.bh, align 8, !tbaa !794
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %0, ptr %.sroa.45.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 %i.bf, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !319
  %i.bi = load ptr, ptr %2, align 8, !tbaa !1907, !nonnull !165, !align !301
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i32 -1, ptr %i.bj, align 8, !tbaa !792
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %_ZN3fmt3v116detail23dynamic_spec_id_handlerIcE8on_indexEi.exit
  %.022 = phi ptr [ %.037, %_ZN3fmt3v116detail23dynamic_spec_id_handlerIcE8on_indexEi.exit ], [ %.lcssa40, %.critedge ]
  ret ptr %.022
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNK3fmt3v119formatterIN8WasmEdge7ErrCodeEcvE6formatINS0_7contextEEEDTcldtfp0_3outEERKS3_RT_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.1275", align 16 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = load i32, ptr %1, align 4, !tbaa !319    ; 3 uses
  %.not.i = icmp ult i32 %i.b, 16777216           ; 2 uses
  %i.c = lshr i32 %i.b, 8
  %i.d = trunc i32 %i.c to i8
  %i.e = and i8 %i.d, 15
  %i.f = select i1 %.not.i, i8 %i.e, i8 5
  store i8 %i.f, ptr %i.a, align 1, !tbaa !796
  %i.g = and i32 %i.b, 16777215                   ; 2 uses
  %spec.select.i = select i1 %.not.i, i32 %i.g, i32 12 ; 3 uses
  br label %_ZSt9__advanceIN8WasmEdge12SpareEnumMapILm160ENS0_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i

_ZSt9__advanceIN8WasmEdge12SpareEnumMapILm160ENS0_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIN8WasmEdge12SpareEnumMapILm160ENS3_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorEKSt4pairIS6_SA_EEEbT_RT0_.exit.thread28.i.i.i.i, %bb.a
  %.030.i.i.i.i = phi i64 [ 160, %bb.a ], [ %.1.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIN8WasmEdge12SpareEnumMapILm160ENS3_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorEKSt4pairIS6_SA_EEEbT_RT0_.exit.thread28.i.i.i.i ] ; 2 uses
  %.sroa.4.029.i.i.i.i = phi i64 [ 0, %bb.a ], [ %.sroa.4.1.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIN8WasmEdge12SpareEnumMapILm160ENS3_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorEKSt4pairIS6_SA_EEEbT_RT0_.exit.thread28.i.i.i.i ] ; 3 uses
  %i.h = lshr i64 %.030.i.i.i.i, 1                ; 4 uses
  %.sroa.5.0.i.i.i.i = add i64 %i.h, %.sroa.4.029.i.i.i.i ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr @_ZN8WasmEdgeL10ErrCodeStrE, i64 %.sroa.5.0.i.i.i.i ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !1914 ; 2 uses
  %i.k = icmp ult i32 %i.j, %spec.select.i
  br i1 %i.k, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIN8WasmEdge12SpareEnumMapILm160ENS3_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorEKSt4pairIS6_SA_EEEbT_RT0_.exit.thread.i.i.i.i, label %5

5:                                                ; preds = %_ZSt9__advanceIN8WasmEdge12SpareEnumMapILm160ENS0_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %6 = icmp ult i32 %spec.select.i, %i.j
  br i1 %6, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIN8WasmEdge12SpareEnumMapILm160ENS3_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorEKSt4pairIS6_SA_EEEbT_RT0_.exit.thread28.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIN8WasmEdge12SpareEnumMapILm160ENS3_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorEKSt4pairIS6_SA_EEEbT_RT0_.exit.i.i.i.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclIN8WasmEdge12SpareEnumMapILm160ENS3_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorEKSt4pairIS6_SA_EEEbT_RT0_.exit.i.i.i.i: ; preds = %5
  %7 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i64, ptr %7, align 8, !tbaa !76
  %8 = icmp slt i64 %.sroa.01.0.copyload.i.i.i.i.i.i, 0
  br i1 %8, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIN8WasmEdge12SpareEnumMapILm160ENS3_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorEKSt4pairIS6_SA_EEEbT_RT0_.exit.thread.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIN8WasmEdge12SpareEnumMapILm160ENS3_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorEKSt4pairIS6_SA_EEEbT_RT0_.exit.thread28.i.i.i.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclIN8WasmEdge12SpareEnumMapILm160ENS3_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorEKSt4pairIS6_SA_EEEbT_RT0_.exit.thread.i.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIN8WasmEdge12SpareEnumMapILm160ENS3_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorEKSt4pairIS6_SA_EEEbT_RT0_.exit.i.i.i.i, %_ZSt9__advanceIN8WasmEdge12SpareEnumMapILm160ENS0_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %9 = add nuw nsw i64 %.sroa.5.0.i.i.i.i, 1
  %10 = xor i64 %i.h, -1
  %11 = add nsw i64 %.030.i.i.i.i, %10
  br label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIN8WasmEdge12SpareEnumMapILm160ENS3_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorEKSt4pairIS6_SA_EEEbT_RT0_.exit.thread28.i.i.i.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclIN8WasmEdge12SpareEnumMapILm160ENS3_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorEKSt4pairIS6_SA_EEEbT_RT0_.exit.thread28.i.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIN8WasmEdge12SpareEnumMapILm160ENS3_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorEKSt4pairIS6_SA_EEEbT_RT0_.exit.thread.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIN8WasmEdge12SpareEnumMapILm160ENS3_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorEKSt4pairIS6_SA_EEEbT_RT0_.exit.i.i.i.i, %5
  %.sroa.4.1.i.i.i.i = phi i64 [ %9, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIN8WasmEdge12SpareEnumMapILm160ENS3_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorEKSt4pairIS6_SA_EEEbT_RT0_.exit.thread.i.i.i.i ], [ %.sroa.4.029.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIN8WasmEdge12SpareEnumMapILm160ENS3_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorEKSt4pairIS6_SA_EEEbT_RT0_.exit.i.i.i.i ], [ %.sroa.4.029.i.i.i.i, %5 ] ; 3 uses
  %.1.i.i.i.i = phi i64 [ %11, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIN8WasmEdge12SpareEnumMapILm160ENS3_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorEKSt4pairIS6_SA_EEEbT_RT0_.exit.thread.i.i.i.i ], [ %i.h, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIN8WasmEdge12SpareEnumMapILm160ENS3_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorEKSt4pairIS6_SA_EEEbT_RT0_.exit.i.i.i.i ], [ %i.h, %5 ] ; 2 uses
  %12 = icmp sgt i64 %.1.i.i.i.i, 0
  br i1 %12, label %_ZSt9__advanceIN8WasmEdge12SpareEnumMapILm160ENS0_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %.noexc, !llvm.loop !1908

.noexc:                                           ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclIN8WasmEdge12SpareEnumMapILm160ENS3_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorEKSt4pairIS6_SA_EEEbT_RT0_.exit.thread28.i.i.i.i
  %i.l = getelementptr inbounds nuw [24 x i8], ptr @_ZN8WasmEdgeL10ErrCodeStrE, i64 %.sroa.4.1.i.i.i.i
  %i.m = load i32, ptr %i.l, align 8, !tbaa !370
  %i.n = icmp eq i32 %i.m, %spec.select.i
  %spec.select.i.i = select i1 %i.n, i64 %.sroa.4.1.i.i.i.i, i64 160
  %i.o = getelementptr inbounds nuw [24 x i8], ptr @_ZN8WasmEdgeL10ErrCodeStrE, i64 %spec.select.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !1915
  %i.q = ptrtoint ptr %i.a to i64
  %.sroa.2.0.insert.ext.i = zext i64 ptrtoint (ptr @_ZN3fmt3v116detail5valueINS0_7contextEE17format_custom_argIN8WasmEdge9WasmPhaseENS0_9formatterIS7_cvEEEEvPvRNS0_26basic_format_parse_contextIcEERS3_ to i64) to i128
  %.sroa.2.0.insert.shift.i = shl nuw i128 %.sroa.2.0.insert.ext.i, 64
  %.sroa.01.0.insert.ext.i = zext i64 %i.q to i128
  %.sroa.01.0.insert.insert.i = or disjoint i128 %.sroa.2.0.insert.shift.i, %.sroa.01.0.insert.ext.i
  store i128 %.sroa.01.0.insert.insert.i, ptr %3, align 16, !alias.scope !1916
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !798
  %i.u = load i64, ptr %i.p, align 8, !tbaa !799
  %i.v = ptrtoint ptr %i.t to i64
  %.sroa.2.0.insert.ext.i11 = zext i64 %i.u to i128
  %.sroa.2.0.insert.shift.i12 = shl nuw i128 %.sroa.2.0.insert.ext.i11, 64
  %.sroa.01.0.insert.ext.i13 = zext i64 %i.v to i128
  %.sroa.01.0.insert.insert.i14 = or disjoint i128 %.sroa.2.0.insert.shift.i12, %.sroa.01.0.insert.ext.i13
  store i128 %.sroa.01.0.insert.insert.i14, ptr %i.r, align 16, !alias.scope !1916
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.01.0.insert.ext.i15 = zext nneg i32 %i.g to i128
  store i128 %.sroa.01.0.insert.ext.i15, ptr %i.w, align 16, !alias.scope !1916
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.41, i64 29, i64 735, ptr nonnull %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !1915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.x = load ptr, ptr %4, align 8, !tbaa !318
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !336
  %i.aa = invoke ptr @_ZNK3fmt3v119formatterISt17basic_string_viewIcSt11char_traitsIcEEcvE6formatINS0_7contextEEEDTcldtfp0_3outEES5_RT_(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 %i.z, ptr %i.x, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = load ptr, ptr %4, align 8, !tbaa !318   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !319
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret ptr %i.aa

bb.d:                                             ; preds = %.noexc, %bb.b
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNK3fmt3v119formatterISt17basic_string_viewIcSt11char_traitsIcEEcvE6formatINS0_7contextEEEDTcldtfp0_3outEES5_RT_(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v11::basic_format_arg", align 16 ; 7 uses
  %5 = alloca %"class.fmt::v11::basic_format_arg", align 16 ; 4 uses
  %6 = alloca %"class.fmt::v11::basic_format_arg", align 16 ; 6 uses
  %7 = alloca %"class.fmt::v11::basic_format_arg", align 16 ; 4 uses
  %8 = alloca %"struct.fmt::v11::detail::dynamic_format_specs", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1932
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, 0
  %or.cond.i = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %3, align 8, !tbaa !1934
  %i.g = tail call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i, ptr %2, i64 %1, ptr noundef nonnull align 8 dereferenceable(64) %0)
  br label %_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.022.0.copyload = load i32, ptr %i.h, align 8, !tbaa !794
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.524.0.copyload = load ptr, ptr %.sroa.524.0..sroa_idx, align 8 ; 2 uses
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.sroa.625.0.copyload = load i64, ptr %.sroa.625.0..sroa_idx, align 8, !tbaa !319
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  switch i32 %.sroa.022.0.copyload, label %_ZN3fmt3v116detail19handle_dynamic_specINS1_13width_checkerENS0_7contextEEEvRiNS1_7arg_refINT0_9char_typeEEERS7_.exit [
    i32 2, label %bb.h
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = ptrtoint ptr %.sroa.524.0.copyload to i64 ; 4 uses
  %.sroa.421.0.extract.trunc = trunc i64 %i.i to i32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1935)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1936)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1937)
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.j, align 8, !tbaa !802, !noalias !1938 ; 3 uses
  %i.m = icmp sgt i64 %i.l, -1
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = trunc i64 %i.l to i32
  %i.o = icmp slt i32 %.sroa.421.0.extract.trunc, %i.n
  br i1 %i.o, label %_ZNK3fmt3v117context3argEi.exit.i.i, label %_ZNK3fmt3v117context3argEi.exit.thread.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = icmp ugt i32 %.sroa.421.0.extract.trunc, 14
  br i1 %i.p, label %_ZNK3fmt3v117context3argEi.exit.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = shl i64 %i.i, 2
  %i.r = and i64 %i.q, 60
  %i.s = lshr i64 %i.l, %i.r
  %i.t = trunc i64 %i.s to i32
  %i.u = and i32 %i.t, 15                         ; 2 uses
  store i32 %i.u, ptr %i.k, align 16, !tbaa !806, !alias.scope !1938
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZNK3fmt3v117context3argEi.exit.thread.i.i, label %_ZNK3fmt3v117context3argEi.exit.thread7.i.i

_ZNK3fmt3v117context3argEi.exit.thread7.i.i:      ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !319, !noalias !1938
  %i.y = and i64 %i.i, 15
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !807
  br label %_ZN3fmt3v116detail7get_argINS0_7contextEiEEDTcldtfp_3argfp0_EERT_T0_.exit.i

_ZNK3fmt3v117context3argEi.exit.i.i:              ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !319, !noalias !1938
  %sext = shl i64 %i.i, 32
  %i.ac = ashr exact i64 %sext, 27
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %6, ptr noundef nonnull align 16 dereferenceable(20) %i.ad, i64 20, i1 false), !tbaa.struct !809
  %.pr.pre.i.i = load i32, ptr %i.k, align 16, !tbaa !806, !alias.scope !1935
  %i.ae = icmp eq i32 %.pr.pre.i.i, 0
  br i1 %i.ae, label %_ZNK3fmt3v117context3argEi.exit.thread.i.i, label %_ZN3fmt3v116detail7get_argINS0_7contextEiEEDTcldtfp_3argfp0_EERT_T0_.exit.i

_ZNK3fmt3v117context3argEi.exit.thread.i.i:       ; preds = %_ZNK3fmt3v117context3argEi.exit.i.i, %bb.g, %bb.f, %bb.e
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.213) #31, !noalias !1935
  unreachable

_ZN3fmt3v116detail7get_argINS0_7contextEiEEDTcldtfp_3argfp0_EERT_T0_.exit.i: ; preds = %_ZNK3fmt3v117context3argEi.exit.i.i, %_ZNK3fmt3v117context3argEi.exit.thread7.i.i
  %i.af = tail call noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS1_13width_checkerENS0_16basic_format_argINS0_7contextEEEEEiT0_(ptr noundef nonnull byval(%"class.fmt::v11::basic_format_arg") align 16 %6)
  br label %.sink.split.i

bb.h:                                             ; preds = %bb.c
  call void @_ZN3fmt3v116detail7get_argINS0_7contextENS0_17basic_string_viewIcEEEEDTcldtfp_3argfp0_EERT_T0_(ptr dead_on_unwind nonnull writable sret(%"class.fmt::v11::basic_format_arg") align 16 %7, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr %.sroa.524.0.copyload, i64 %.sroa.625.0.copyload)
  %i.ag = call noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS1_13width_checkerENS0_16basic_format_argINS0_7contextEEEEEiT0_(ptr noundef nonnull byval(%"class.fmt::v11::basic_format_arg") align 16 %7)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h, %_ZN3fmt3v116detail7get_argINS0_7contextEiEEDTcldtfp_3argfp0_EERT_T0_.exit.i
  %.sink.i = phi i32 [ %i.ag, %bb.h ], [ %i.af, %_ZN3fmt3v116detail7get_argINS0_7contextEiEEDTcldtfp_3argfp0_EERT_T0_.exit.i ]
  store i32 %.sink.i, ptr %8, align 8, !tbaa !409
  br label %_ZN3fmt3v116detail19handle_dynamic_specINS1_13width_checkerENS0_7contextEEEvRiNS1_7arg_refINT0_9char_typeEEERS7_.exit

_ZN3fmt3v116detail19handle_dynamic_specINS1_13width_checkerENS0_7contextEEEvRiNS1_7arg_refINT0_9char_typeEEERS7_.exit: ; preds = %bb.c, %.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 40
  %.sroa.030.0.copyload = load i32, ptr %i.ai, align 8, !tbaa !794
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 48
  %.sroa.532.0.copyload = load ptr, ptr %.sroa.532.0..sroa_idx, align 8 ; 2 uses
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 56
  %.sroa.633.0.copyload = load i64, ptr %.sroa.633.0..sroa_idx, align 8, !tbaa !319
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  switch i32 %.sroa.030.0.copyload, label %_ZN3fmt3v116detail19handle_dynamic_specINS1_17precision_checkerENS0_7contextEEEvRiNS1_7arg_refINT0_9char_typeEEERS7_.exit [
    i32 2, label %bb.m
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZN3fmt3v116detail19handle_dynamic_specINS1_13width_checkerENS0_7contextEEEvRiNS1_7arg_refINT0_9char_typeEEERS7_.exit
  %i.aj = ptrtoint ptr %.sroa.532.0.copyload to i64 ; 4 uses
  %.sroa.428.0.extract.trunc = trunc i64 %i.aj to i32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1939)
  call void @llvm.experimental.noalias.scope.decl(metadata !1940)
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1941)
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !802, !noalias !1942 ; 3 uses
  %i.an = icmp sgt i64 %i.am, -1
  br i1 %i.an, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = trunc i64 %i.am to i32
  %i.ap = icmp slt i32 %.sroa.428.0.extract.trunc, %i.ao
end_hunk_0
