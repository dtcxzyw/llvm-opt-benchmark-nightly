Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/text_file_backend?download=true
inline.NumInlined: 3516
inline.NumDeleted: 1232
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5boost9date_time24special_values_formatterIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEED2Ev:bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !214
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9date_time16period_formatterIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !40
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !40
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !39   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.q = load i64, ptr %i.o, align 8, !tbaa !40
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !39   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.w = load i64, ptr %i.u, align 8, !tbaa !40
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEED0Ev(ptr noundef nonnull align 8 dereferenceable(424) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEEE, i64 16), ptr %0, align 8, !tbaa !65
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !40
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #31, !inline_history !66
  br label %_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEED2Ev.exit

_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZN5boost9date_time10date_facetINS_9gregorian4dateEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(424) %0) #28, !inline_history !66
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 424) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE14set_iso_formatEv(ptr noundef nonnull align 8 dereferenceable(424) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE25iso_time_format_specifierE, align 8, !tbaa !42 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !41
  %i.e = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #28
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 0, i64 noundef %i.d, ptr noundef nonnull %i.a, i64 noundef %i.e) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE23set_iso_extended_formatEv(ptr noundef nonnull align 8 dereferenceable(424) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE34iso_time_format_extended_specifierE, align 8, !tbaa !42 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !41
  %i.e = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #28
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 0, i64 noundef %i.d, ptr noundef nonnull %i.a, i64 noundef %i.e) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNK5boost9date_time10date_facetINS_9gregorian4dateEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE14do_put_specialES7_RSt8ios_basecNS0_14special_valuesE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr %1, i8 %2, ptr noundef nonnull align 8 dereferenceable(216) %3, i8 noundef signext %4, i32 noundef %5) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = zext i32 %5 to i64                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !213
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !212  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 5
  %i.j = icmp ugt i64 %i.i, %i.b
  br i1 %i.j, label %bb.b, label %_ZNK5boost9date_time24special_values_formatterIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE11put_specialES5_RKNS0_14special_valuesE.exit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.b ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !41   ; 2 uses
  %i.n = icmp slt i64 %i.m, 1
  %i.o = trunc nuw i8 %2 to i1
  %or.cond.i = select i1 %i.n, i1 true, i1 %i.o, !prof !410
  br i1 %or.cond.i, label %_ZNK5boost9date_time24special_values_formatterIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE11put_specialES5_RKNS0_14special_valuesE.exit, label %bb.c, !prof !410

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.q = load ptr, ptr %1, align 8, !tbaa !65
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i64 %i.s(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %i.p, i64 noundef %i.m), !inline_history !409 ; 0 uses
  br label %_ZNK5boost9date_time24special_values_formatterIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE11put_specialES5_RKNS0_14special_valuesE.exit

_ZNK5boost9date_time24special_values_formatterIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE11put_specialES5_RKNS0_14special_valuesE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.fca.0.insert.i = insertvalue { ptr, i8 } poison, ptr %1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert.i, i8 %2, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNK5boost9date_time10date_facetINS_9gregorian4dateEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE9do_put_tmES7_RSt8ios_basecRK2tmNSt7__cxx1112basic_stringIcS6_SaIcEEE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr %1, i8 %2, ptr noundef nonnull align 8 dereferenceable(216) %3, i8 noundef signext %4, ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef align 8 %6) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::iterator_range", align 8 ; 6 uses
  %8 = alloca %"struct.boost::algorithm::detail::first_finderF", align 8 ; 5 uses
  %9 = alloca %"class.boost::iterator_range", align 8 ; 6 uses
  %10 = alloca %"struct.boost::algorithm::detail::first_finderF", align 8 ; 5 uses
  %11 = alloca %"class.boost::iterator_range", align 8 ; 6 uses
  %12 = alloca %"struct.boost::algorithm::detail::first_finderF", align 8 ; 5 uses
  %13 = alloca %"class.boost::iterator_range", align 8 ; 6 uses
  %14 = alloca %"struct.boost::algorithm::detail::first_finderF", align 8 ; 5 uses
  %15 = alloca %"class.std::locale", align 8      ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !219  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !219
  %i.e = icmp eq ptr %i.b, %i.d
  %.pre109.pre110.pre113.pre116 = load ptr, ptr %6, align 8, !tbaa !39 ; 5 uses
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !221
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.h ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr @_ZN5boost9date_time10date_facetINS_9gregorian4dateEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE19long_weekday_formatE, ptr %14, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost9date_time10date_facetINS_9gregorian4dateEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE19long_weekday_formatE, i64 2), ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !41   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.pre109.pre110.pre113.pre116, i64 %i.o
  %.not2633.i.i.i = icmp samesign eq i64 %i.o, 0
  br i1 %.not2633.i.i.i, label %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.b, %.critedge15.i.i.i
  %indvars.iv.in = phi i64 [ %indvars.iv, %.critedge15.i.i.i ], [ %i.o, %bb.b ]
  %.sroa.018.034.i.i.i = phi ptr [ %i.s, %.critedge15.i.i.i ], [ %.pre109.pre110.pre113.pre116, %bb.b ] ; 7 uses
  %indvars.iv = add i64 %indvars.iv.in, -1        ; 2 uses
  %.not = icmp eq i64 %indvars.iv, 0              ; 2 uses
  %i.q = select i1 %.not, i64 1, i64 2            ; 2 uses
  %16 = load i8, ptr %.sroa.018.034.i.i.i, align 1, !tbaa !40
  %17 = icmp eq i8 %16, 37
  br i1 %17, label %.lr.ph.i.i.i, label %.critedge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.preheader.i.i.i
  %.01228.i.i.i.ptr.ptr = getelementptr inbounds nuw i8, ptr %.sroa.018.034.i.i.i, i64 1 ; 3 uses
  br i1 %.not, label %.critedge.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %18 = load i8, ptr %.01228.i.i.i.ptr.ptr, align 1, !tbaa !40
  %19 = icmp eq i8 %18, 65                        ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.018.034.i.i.i, i64 2
  %spec.select = select i1 %19, ptr %i.r, ptr %.01228.i.i.i.ptr.ptr
  %spec.select171 = select i1 %19, i64 %i.q, i64 1
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.c, %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.0.lcssa.ph.i.i.i = phi ptr [ %.sroa.018.034.i.i.i, %.lr.ph.preheader.i.i.i ], [ %.01228.i.i.i.ptr.ptr, %.lr.ph.i.i.i ], [ %spec.select, %bb.c ] ; 2 uses
  %.012.lcssa.ph.i.i.i.idx = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.q, %.lr.ph.i.i.i ], [ %spec.select171, %bb.c ]
  %.not13.i.i.i = icmp eq i64 %.012.lcssa.ph.i.i.i.idx, 2
  br i1 %.not13.i.i.i, label %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i, label %.critedge15.i.i.i

.critedge15.i.i.i:                                ; preds = %.critedge.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.018.034.i.i.i, i64 1 ; 2 uses
  %.not26.i.i.i = icmp eq ptr %i.s, %i.p
  br i1 %.not26.i.i.i, label %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i, label %.lr.ph.preheader.i.i.i, !llvm.loop !15

_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i: ; preds = %.critedge15.i.i.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  br label %_ZN5boost9algorithm11replace_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA3_cS7_EEvRT_RKT0_RKT1_.exit

_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i: ; preds = %.critedge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %.not.i9.i.i = icmp eq ptr %.sroa.018.034.i.i.i, %.sroa.0.0.lcssa.ph.i.i.i
  br i1 %.not.i9.i.i, label %_ZN5boost9algorithm11replace_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA3_cS7_EEvRT_RKT0_RKT1_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i
  store ptr %i.j, ptr %13, align 8
  %.sroa.34.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.m, ptr %.sroa.34.0..sroa_idx.i.i.i, align 8
  tail call void @_ZN5boost9algorithm6detail21find_format_all_impl2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13first_finderFIPKcNS0_8is_equalEEENS1_13const_formatFINS_14iterator_rangeIN9__gnu_cxx17__normal_iteratorISB_S8_EEEEEENSF_INSH_IPcS8_EEEESJ_EEvRT_T0_T1_T2_T3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull byval(%"struct.boost::algorithm::detail::first_finderF") align 8 %14, ptr %i.j, ptr %i.m, ptr nonnull %.sroa.018.034.i.i.i, ptr nonnull %.sroa.0.0.lcssa.ph.i.i.i, ptr noundef nonnull byval(%"class.boost::iterator_range") align 8 %13)
  %.pre109.pre110.pre113.pre.pre = load ptr, ptr %6, align 8, !tbaa !39
  br label %_ZN5boost9algorithm11replace_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA3_cS7_EEvRT_RKT0_RKT1_.exit

_ZN5boost9algorithm11replace_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA3_cS7_EEvRT_RKT0_RKT1_.exit: ; preds = %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i, %bb.d
  %.pre109.pre110.pre113.pre = phi ptr [ %.pre109.pre110.pre113.pre116, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i ], [ %.pre109.pre110.pre113.pre116, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i ], [ %.pre109.pre110.pre113.pre.pre, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost9algorithm11replace_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA3_cS7_EEvRT_RKT0_RKT1_.exit, %bb.a
  %.pre109.pre110.pre113 = phi ptr [ %.pre109.pre110.pre113.pre, %_ZN5boost9algorithm11replace_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA3_cS7_EEvRT_RKT0_RKT1_.exit ], [ %.pre109.pre110.pre113.pre116, %bb.a ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !219  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !219
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !221
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.aa ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !39 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr @_ZN5boost9date_time10date_facetINS_9gregorian4dateEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE20short_weekday_formatE, ptr %12, align 8
  %.sroa.2.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost9date_time10date_facetINS_9gregorian4dateEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE20short_weekday_formatE, i64 2), ptr %.sroa.2.0..sroa_idx.i18, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !41 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre109.pre110.pre113, i64 %i.ah
  %.not2633.i.i.i19 = icmp samesign eq i64 %i.ah, 0
  br i1 %.not2633.i.i.i19, label %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i32, label %.lr.ph.preheader.i.i.i21

.lr.ph.preheader.i.i.i21:                         ; preds = %bb.f, %.critedge15.i.i.i30
  %indvars.iv97.in = phi i64 [ %indvars.iv97, %.critedge15.i.i.i30 ], [ %i.ah, %bb.f ]
  %.sroa.018.034.i.i.i22 = phi ptr [ %i.al, %.critedge15.i.i.i30 ], [ %.pre109.pre110.pre113, %bb.f ] ; 7 uses
  %indvars.iv97 = add i64 %indvars.iv97.in, -1    ; 2 uses
  %.not136 = icmp eq i64 %indvars.iv97, 0         ; 2 uses
  %i.aj = select i1 %.not136, i64 1, i64 2        ; 2 uses
  %20 = load i8, ptr %.sroa.018.034.i.i.i22, align 1, !tbaa !40
  %21 = icmp eq i8 %20, 37
  br i1 %21, label %.lr.ph.i.i.i23, label %.critedge.i.i.i26

.lr.ph.i.i.i23:                                   ; preds = %.lr.ph.preheader.i.i.i21
  %.01228.i.i.i24.ptr.ptr = getelementptr inbounds nuw i8, ptr %.sroa.018.034.i.i.i22, i64 1 ; 3 uses
  br i1 %.not136, label %.critedge.i.i.i26, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i23
  %22 = load i8, ptr %.01228.i.i.i24.ptr.ptr, align 1, !tbaa !40
  %23 = icmp eq i8 %22, 97                        ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.018.034.i.i.i22, i64 2
  %spec.select172 = select i1 %23, ptr %i.ak, ptr %.01228.i.i.i24.ptr.ptr
  %spec.select173 = select i1 %23, i64 %i.aj, i64 1
  br label %.critedge.i.i.i26

.critedge.i.i.i26:                                ; preds = %bb.g, %.lr.ph.i.i.i23, %.lr.ph.preheader.i.i.i21
  %.sroa.0.0.lcssa.ph.i.i.i27 = phi ptr [ %.sroa.018.034.i.i.i22, %.lr.ph.preheader.i.i.i21 ], [ %.01228.i.i.i24.ptr.ptr, %.lr.ph.i.i.i23 ], [ %spec.select172, %bb.g ] ; 2 uses
  %.012.lcssa.ph.i.i.i28.idx = phi i64 [ 0, %.lr.ph.preheader.i.i.i21 ], [ %i.aj, %.lr.ph.i.i.i23 ], [ %spec.select173, %bb.g ]
  %.not13.i.i.i29 = icmp eq i64 %.012.lcssa.ph.i.i.i28.idx, 2
  br i1 %.not13.i.i.i29, label %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i33, label %.critedge15.i.i.i30

.critedge15.i.i.i30:                              ; preds = %.critedge.i.i.i26
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.018.034.i.i.i22, i64 1 ; 2 uses
  %.not26.i.i.i31 = icmp eq ptr %i.al, %i.ai
  br i1 %.not26.i.i.i31, label %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i32, label %.lr.ph.preheader.i.i.i21, !llvm.loop !15

_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i32: ; preds = %.critedge15.i.i.i30, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  br label %_ZN5boost9algorithm11replace_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA3_cS7_EEvRT_RKT0_RKT1_.exit38

_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i33: ; preds = %.critedge.i.i.i26
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %.not.i9.i.i34 = icmp eq ptr %.sroa.018.034.i.i.i22, %.sroa.0.0.lcssa.ph.i.i.i27
  br i1 %.not.i9.i.i34, label %_ZN5boost9algorithm11replace_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA3_cS7_EEvRT_RKT0_RKT1_.exit38, label %bb.h

bb.h:                                             ; preds = %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i33
  store ptr %i.ac, ptr %11, align 8
  %.sroa.34.0..sroa_idx.i.i.i35 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.af, ptr %.sroa.34.0..sroa_idx.i.i.i35, align 8
  tail call void @_ZN5boost9algorithm6detail21find_format_all_impl2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13first_finderFIPKcNS0_8is_equalEEENS1_13const_formatFINS_14iterator_rangeIN9__gnu_cxx17__normal_iteratorISB_S8_EEEEEENSF_INSH_IPcS8_EEEESJ_EEvRT_T0_T1_T2_T3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull byval(%"struct.boost::algorithm::detail::first_finderF") align 8 %12, ptr %i.ac, ptr %i.af, ptr nonnull %.sroa.018.034.i.i.i22, ptr nonnull %.sroa.0.0.lcssa.ph.i.i.i27, ptr noundef nonnull byval(%"class.boost::iterator_range") align 8 %11)
  %.pre109.pre110.pre.pre = load ptr, ptr %6, align 8, !tbaa !39
  br label %_ZN5boost9algorithm11replace_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA3_cS7_EEvRT_RKT0_RKT1_.exit38

_ZN5boost9algorithm11replace_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA3_cS7_EEvRT_RKT0_RKT1_.exit38: ; preds = %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i32, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i33, %bb.h
  %.pre109.pre110.pre = phi ptr [ %.pre109.pre110.pre113, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i32 ], [ %.pre109.pre110.pre113, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i33 ], [ %.pre109.pre110.pre.pre, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %bb.i

bb.i:                                             ; preds = %_ZN5boost9algorithm11replace_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA3_cS7_EEvRT_RKT0_RKT1_.exit38, %bb.e
  %.pre109.pre110 = phi ptr [ %.pre109.pre110.pre, %_ZN5boost9algorithm11replace_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA3_cS7_EEvRT_RKT0_RKT1_.exit38 ], [ %.pre109.pre110.pre113, %bb.e ] ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !219 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !219
  %i.aq = icmp eq ptr %i.an, %i.ap
  br i1 %i.aq, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !222
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.an, i64 %i.at ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !39 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !41
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr @_ZN5boost9date_time10date_facetINS_9gregorian4dateEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE17long_month_formatE, ptr %10, align 8
  %.sroa.2.0..sroa_idx.i39 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost9date_time10date_facetINS_9gregorian4dateEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE17long_month_formatE, i64 2), ptr %.sroa.2.0..sroa_idx.i39, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !41 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.pre109.pre110, i64 %i.ba
  %.not2633.i.i.i40 = icmp samesign eq i64 %i.ba, 0
  br i1 %.not2633.i.i.i40, label %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i53, label %.lr.ph.preheader.i.i.i42

.lr.ph.preheader.i.i.i42:                         ; preds = %bb.j, %.critedge15.i.i.i51
  %indvars.iv101.in = phi i64 [ %indvars.iv101, %.critedge15.i.i.i51 ], [ %i.ba, %bb.j ]
  %.sroa.018.034.i.i.i43 = phi ptr [ %i.be, %.critedge15.i.i.i51 ], [ %.pre109.pre110, %bb.j ] ; 7 uses
  %indvars.iv101 = add i64 %indvars.iv101.in, -1  ; 2 uses
  %.not137 = icmp eq i64 %indvars.iv101, 0        ; 2 uses
  %i.bc = select i1 %.not137, i64 1, i64 2        ; 2 uses
  %24 = load i8, ptr %.sroa.018.034.i.i.i43, align 1, !tbaa !40
  %25 = icmp eq i8 %24, 37
  br i1 %25, label %.lr.ph.i.i.i44, label %.critedge.i.i.i47

.lr.ph.i.i.i44:                                   ; preds = %.lr.ph.preheader.i.i.i42
  %.01228.i.i.i45.ptr.ptr = getelementptr inbounds nuw i8, ptr %.sroa.018.034.i.i.i43, i64 1 ; 3 uses
  br i1 %.not137, label %.critedge.i.i.i47, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i44
  %26 = load i8, ptr %.01228.i.i.i45.ptr.ptr, align 1, !tbaa !40
  %27 = icmp eq i8 %26, 66                        ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.018.034.i.i.i43, i64 2
  %spec.select174 = select i1 %27, ptr %i.bd, ptr %.01228.i.i.i45.ptr.ptr
  %spec.select175 = select i1 %27, i64 %i.bc, i64 1
  br label %.critedge.i.i.i47

.critedge.i.i.i47:                                ; preds = %bb.k, %.lr.ph.i.i.i44, %.lr.ph.preheader.i.i.i42
  %.sroa.0.0.lcssa.ph.i.i.i48 = phi ptr [ %.sroa.018.034.i.i.i43, %.lr.ph.preheader.i.i.i42 ], [ %.01228.i.i.i45.ptr.ptr, %.lr.ph.i.i.i44 ], [ %spec.select174, %bb.k ] ; 2 uses
  %.012.lcssa.ph.i.i.i49.idx = phi i64 [ 0, %.lr.ph.preheader.i.i.i42 ], [ %i.bc, %.lr.ph.i.i.i44 ], [ %spec.select175, %bb.k ]
  %.not13.i.i.i50 = icmp eq i64 %.012.lcssa.ph.i.i.i49.idx, 2
  br i1 %.not13.i.i.i50, label %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i54, label %.critedge15.i.i.i51

.critedge15.i.i.i51:                              ; preds = %.critedge.i.i.i47
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.018.034.i.i.i43, i64 1 ; 2 uses
  %.not26.i.i.i52 = icmp eq ptr %i.be, %i.bb
  br i1 %.not26.i.i.i52, label %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i53, label %.lr.ph.preheader.i.i.i42, !llvm.loop !15

_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i53: ; preds = %.critedge15.i.i.i51, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br label %_ZN5boost9algorithm11replace_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA3_cS7_EEvRT_RKT0_RKT1_.exit59

_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i54: ; preds = %.critedge.i.i.i47
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %.not.i9.i.i55 = icmp eq ptr %.sroa.018.034.i.i.i43, %.sroa.0.0.lcssa.ph.i.i.i48
  br i1 %.not.i9.i.i55, label %_ZN5boost9algorithm11replace_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA3_cS7_EEvRT_RKT0_RKT1_.exit59, label %bb.l

bb.l:                                             ; preds = %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i54
  store ptr %i.av, ptr %9, align 8
  %.sroa.34.0..sroa_idx.i.i.i56 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ay, ptr %.sroa.34.0..sroa_idx.i.i.i56, align 8
  tail call void @_ZN5boost9algorithm6detail21find_format_all_impl2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13first_finderFIPKcNS0_8is_equalEEENS1_13const_formatFINS_14iterator_rangeIN9__gnu_cxx17__normal_iteratorISB_S8_EEEEEENSF_INSH_IPcS8_EEEESJ_EEvRT_T0_T1_T2_T3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull byval(%"struct.boost::algorithm::detail::first_finderF") align 8 %10, ptr %i.av, ptr %i.ay, ptr nonnull %.sroa.018.034.i.i.i43, ptr nonnull %.sroa.0.0.lcssa.ph.i.i.i48, ptr noundef nonnull byval(%"class.boost::iterator_range") align 8 %9)
  %.pre109.pre.pre = load ptr, ptr %6, align 8, !tbaa !39
  br label %_ZN5boost9algorithm11replace_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA3_cS7_EEvRT_RKT0_RKT1_.exit59

_ZN5boost9algorithm11replace_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA3_cS7_EEvRT_RKT0_RKT1_.exit59: ; preds = %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i53, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i54, %bb.l
  %.pre109.pre = phi ptr [ %.pre109.pre110, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i53 ], [ %.pre109.pre110, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i54 ], [ %.pre109.pre.pre, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost9algorithm11replace_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA3_cS7_EEvRT_RKT0_RKT1_.exit59, %bb.i
  %.pre109 = phi ptr [ %.pre109.pre, %_ZN5boost9algorithm11replace_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA3_cS7_EEvRT_RKT0_RKT1_.exit59 ], [ %.pre109.pre110, %bb.i ] ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !219 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !219
  %i.bj = icmp eq ptr %i.bg, %i.bi
  br i1 %i.bj, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !222
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.bg, i64 %i.bm ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !39 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !41
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bq ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr @_ZN5boost9date_time10date_facetINS_9gregorian4dateEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE18short_month_formatE, ptr %8, align 8
  %.sroa.2.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost9date_time10date_facetINS_9gregorian4dateEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE18short_month_formatE, i64 2), ptr %.sroa.2.0..sroa_idx.i60, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !41 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre109, i64 %i.bt
  %.not2633.i.i.i61 = icmp samesign eq i64 %i.bt, 0
  br i1 %.not2633.i.i.i61, label %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i74, label %.lr.ph.preheader.i.i.i63

.lr.ph.preheader.i.i.i63:                         ; preds = %bb.n, %.critedge15.i.i.i72
  %indvars.iv105.in = phi i64 [ %indvars.iv105, %.critedge15.i.i.i72 ], [ %i.bt, %bb.n ]
  %.sroa.018.034.i.i.i64 = phi ptr [ %i.bx, %.critedge15.i.i.i72 ], [ %.pre109, %bb.n ] ; 7 uses
  %indvars.iv105 = add i64 %indvars.iv105.in, -1  ; 2 uses
  %.not138 = icmp eq i64 %indvars.iv105, 0        ; 2 uses
  %i.bv = select i1 %.not138, i64 1, i64 2        ; 2 uses
  %28 = load i8, ptr %.sroa.018.034.i.i.i64, align 1, !tbaa !40
  %29 = icmp eq i8 %28, 37
  br i1 %29, label %.lr.ph.i.i.i65, label %.critedge.i.i.i68

.lr.ph.i.i.i65:                                   ; preds = %.lr.ph.preheader.i.i.i63
  %.01228.i.i.i66.ptr.ptr = getelementptr inbounds nuw i8, ptr %.sroa.018.034.i.i.i64, i64 1 ; 3 uses
  br i1 %.not138, label %.critedge.i.i.i68, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i65
  %30 = load i8, ptr %.01228.i.i.i66.ptr.ptr, align 1, !tbaa !40
  %31 = icmp eq i8 %30, 98                        ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.018.034.i.i.i64, i64 2
  %spec.select176 = select i1 %31, ptr %i.bw, ptr %.01228.i.i.i66.ptr.ptr
  %spec.select177 = select i1 %31, i64 %i.bv, i64 1
  br label %.critedge.i.i.i68

.critedge.i.i.i68:                                ; preds = %bb.o, %.lr.ph.i.i.i65, %.lr.ph.preheader.i.i.i63
  %.sroa.0.0.lcssa.ph.i.i.i69 = phi ptr [ %.sroa.018.034.i.i.i64, %.lr.ph.preheader.i.i.i63 ], [ %.01228.i.i.i66.ptr.ptr, %.lr.ph.i.i.i65 ], [ %spec.select176, %bb.o ] ; 2 uses
  %.012.lcssa.ph.i.i.i70.idx = phi i64 [ 0, %.lr.ph.preheader.i.i.i63 ], [ %i.bv, %.lr.ph.i.i.i65 ], [ %spec.select177, %bb.o ]
  %.not13.i.i.i71 = icmp eq i64 %.012.lcssa.ph.i.i.i70.idx, 2
  br i1 %.not13.i.i.i71, label %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i75, label %.critedge15.i.i.i72

.critedge15.i.i.i72:                              ; preds = %.critedge.i.i.i68
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.018.034.i.i.i64, i64 1 ; 2 uses
  %.not26.i.i.i73 = icmp eq ptr %i.bx, %i.bu
  br i1 %.not26.i.i.i73, label %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i74, label %.lr.ph.preheader.i.i.i63, !llvm.loop !15

_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i74: ; preds = %.critedge15.i.i.i72, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  br label %_ZN5boost9algorithm11replace_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA3_cS7_EEvRT_RKT0_RKT1_.exit80

_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i75: ; preds = %.critedge.i.i.i68
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %.not.i9.i.i76 = icmp eq ptr %.sroa.018.034.i.i.i64, %.sroa.0.0.lcssa.ph.i.i.i69
  br i1 %.not.i9.i.i76, label %_ZN5boost9algorithm11replace_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA3_cS7_EEvRT_RKT0_RKT1_.exit80, label %bb.p

bb.p:                                             ; preds = %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i75
  store ptr %i.bo, ptr %7, align 8
  %.sroa.34.0..sroa_idx.i.i.i77 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.br, ptr %.sroa.34.0..sroa_idx.i.i.i77, align 8
  tail call void @_ZN5boost9algorithm6detail21find_format_all_impl2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13first_finderFIPKcNS0_8is_equalEEENS1_13const_formatFINS_14iterator_rangeIN9__gnu_cxx17__normal_iteratorISB_S8_EEEEEENSF_INSH_IPcS8_EEEESJ_EEvRT_T0_T1_T2_T3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull byval(%"struct.boost::algorithm::detail::first_finderF") align 8 %8, ptr %i.bo, ptr %i.br, ptr nonnull %.sroa.018.034.i.i.i64, ptr nonnull %.sroa.0.0.lcssa.ph.i.i.i69, ptr noundef nonnull byval(%"class.boost::iterator_range") align 8 %7)
  %.pre.pre = load ptr, ptr %6, align 8, !tbaa !39
  br label %_ZN5boost9algorithm11replace_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA3_cS7_EEvRT_RKT0_RKT1_.exit80

_ZN5boost9algorithm11replace_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA3_cS7_EEvRT_RKT0_RKT1_.exit80: ; preds = %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i74, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i75, %bb.p
  %.pre = phi ptr [ %.pre109, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i74 ], [ %.pre109, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i75 ], [ %.pre.pre, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.q

bb.q:                                             ; preds = %_ZN5boost9algorithm11replace_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA3_cS7_EEvRT_RKT0_RKT1_.exit80, %bb.m
  %i.by = phi ptr [ %.pre, %_ZN5boost9algorithm11replace_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA3_cS7_EEvRT_RKT0_RKT1_.exit80 ], [ %.pre109, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 208
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.bz) #28
  %i.ca = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE2idE) #28
  %i.cb = load ptr, ptr %15, align 8, !tbaa !223
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !228
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ca
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !230 ; 2 uses
  %.not.not.i = icmp eq ptr %i.cf, null
  br i1 %.not.not.i, label %bb.r, label %_ZSt9use_facetISt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEEERKT_RKSt6locale.exit

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt16__throw_bad_castv() #29
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.r
  unreachable

_ZSt9use_facetISt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEEERKT_RKSt6locale.exit: ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !41
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ch
  %i.cj = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.cf, ptr %1, i8 %2, ptr noundef nonnull align 8 dereferenceable(216) %3, i8 noundef signext %4, ptr noundef nonnull %5, ptr noundef %i.by, ptr noundef %i.ci)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %_ZSt9use_facetISt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEEERKT_RKSt6locale.exit
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  ret { ptr, i8 } %i.cj

bb.t:                                             ; preds = %bb.r, %_ZSt9use_facetISt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEEERKT_RKSt6locale.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  resume { ptr, i32 } %i.ck
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !212    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !213  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !39 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !40
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !13

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !212
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !214
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #31
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPA17_KcSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEET0_T_SI_SH_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = udiv exact i64 %i.d, 17
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret ptr %2

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0820 = phi i64 [ %i.f, %.lr.ph ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.0919 = phi ptr [ %0, %.lr.ph ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %i.g, ptr %3, align 8, !tbaa !35
  %i.k = icmp eq ptr %.0919, null
  br i1 %i.k, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.96) #29
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0919) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.l, ptr %i.a, align 8, !tbaa !37
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %3, align 8, !tbaa !39
  %i.o = load i64, ptr %i.a, align 8, !tbaa !37
  store i64 %i.o, ptr %i.g, align 8, !tbaa !40
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.p = phi ptr [ %i.n, %.noexc.i ], [ %i.g, %bb.c ] ; 2 uses
  switch i64 %i.l, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %.0919, align 1, !tbaa !40
  store i8 %i.q, ptr %i.p, align 1, !tbaa !40
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr nonnull align 1 %.0919, i64 %i.l, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  store i64 %i.r, ptr %i.h, align 8, !tbaa !41
  %i.s = load ptr, ptr %3, align 8, !tbaa !39
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r
  store i8 0, ptr %i.t, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !213  ; 6 uses
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !214
  %.not.i.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  store ptr %i.w, ptr %i.u, align 8, !tbaa !35
  %i.x = load ptr, ptr %3, align 8, !tbaa !39     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.g
  br i1 %i.y, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.z = load i64, ptr %i.h, align 8, !tbaa !41   ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.ab, i1 false)
  br label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  store ptr %i.x, ptr %i.u, align 8, !tbaa !39
  %i.ac = load i64, ptr %i.g, align 8, !tbaa !40
  store i64 %i.ac, ptr %i.w, align 8, !tbaa !40
  %.pre = load i64, ptr %i.h, align 8, !tbaa !41
  br label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.thread

_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ad = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.z, %bb.h ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8
end_hunk_0
begin_hunk_1_@_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.sroa.08.013 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.b, ptr %.014, align 8, !tbaa !35
  %i.c = load ptr, ptr %.sroa.08.013, align 8, !tbaa !39 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !41   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.e, ptr %i.a, align 8, !tbaa !37
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.014, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.014, align 8, !tbaa !39
  %i.h = load i64, ptr %i.a, align 8, !tbaa !37
  store i64 %i.h, ptr %i.b, align 8, !tbaa !40
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !40
  store i8 %i.j, ptr %i.i, align 1, !tbaa !40
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !41
  %i.m = load ptr, ptr %.014, align 8, !tbaa !39
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !424

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #28 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #29
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #30
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #7

declare { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12), ptr, i8, ptr noundef nonnull align 8 dereferenceable(216), i8 noundef signext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9algorithm6detail21find_format_all_impl2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13first_finderFIPKcNS0_8is_equalEEENS1_13const_formatFINS_14iterator_rangeIN9__gnu_cxx17__normal_iteratorISB_S8_EEEEEENSF_INSH_IPcS8_EEEESJ_EEvRT_T0_T1_T2_T3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef byval(%"struct.boost::algorithm::detail::first_finderF") align 8 %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr noundef byval(%"class.boost::iterator_range") align 8 %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.std::_Deque_iterator", align 8 ; 4 uses
  %8 = alloca %"struct.std::_Deque_iterator", align 8 ; 4 uses
  %9 = alloca %"struct.boost::algorithm::detail::process_segment_helper", align 1 ; 3 uses
  %10 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %11 = alloca %"struct.boost::algorithm::detail::process_segment_helper", align 1 ; 3 uses
  %12 = alloca %"class.std::deque", align 8       ; 22 uses
  %.sroa.10.16.copyload = load ptr, ptr %6, align 8
  %.sroa.13.16..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.13.16.copyload = load ptr, ptr %.sroa.13.16..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %12, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %12, i64 noundef 0)
  %i.a = load ptr, ptr %0, align 8, !tbaa !39     ; 5 uses
  %.not.i57 = icmp eq ptr %4, %5
  br i1 %.not.i57, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !41
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeINS4_IPKcSB_EEEEEESI_EaSINSE_ISC_EEEERSK_T_.exit
  %.sroa.017.063 = phi ptr [ %i.a, %.lr.ph ], [ %i.i, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeINS4_IPKcSB_EEEEEESI_EaSINSE_ISC_EEEERSK_T_.exit ]
  %.sroa.016.062 = phi ptr [ %i.a, %.lr.ph ], [ %.sroa.7.059, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeINS4_IPKcSB_EEEEEESI_EaSINSE_ISC_EEEERSK_T_.exit ]
  %.sroa.13.061 = phi ptr [ %.sroa.13.16.copyload, %.lr.ph ], [ %spec.select52, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeINS4_IPKcSB_EEEEEESI_EaSINSE_ISC_EEEERSK_T_.exit ] ; 2 uses
  %.sroa.10.060 = phi ptr [ %.sroa.10.16.copyload, %.lr.ph ], [ %spec.select, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeINS4_IPKcSB_EEEEEESI_EaSINSE_ISC_EEEERSK_T_.exit ] ; 2 uses
  %.sroa.7.059 = phi ptr [ %5, %.lr.ph ], [ %.sroa.0.0.lcssa.ph.i, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeINS4_IPKcSB_EEEEEESI_EaSINSE_ISC_EEEERSK_T_.exit ] ; 7 uses
  %.sroa.040.058 = phi ptr [ %4, %.lr.ph ], [ %.sroa.018.034.i, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeINS4_IPKcSB_EEEEEESI_EaSINSE_ISC_EEEERSK_T_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.i = invoke ptr @_ZN5boost9algorithm6detail22process_segment_helperILb0EEclISt5dequeIcSaIcEENSt7__cxx1112basic_stringIcSt11char_traitsIcES6_EEN9__gnu_cxx17__normal_iteratorIPcSC_EEEET1_RT_RT0_SH_SH_SH_(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %.sroa.017.063, ptr %.sroa.016.062, ptr %.sroa.040.058)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !232, !noalias !435
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !233, !noalias !435 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.experimental.noalias.scope.decl(metadata !436)
  store ptr %i.j, ptr %10, align 8, !tbaa !232, !alias.scope !436, !noalias !437
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42, !noalias !438 ; 2 uses
  store ptr %i.l, ptr %i.d, align 8, !tbaa !234, !alias.scope !436, !noalias !437
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 512
  store ptr %i.m, ptr %i.e, align 8, !tbaa !235, !alias.scope !436, !noalias !437
  store ptr %i.k, ptr %i.f, align 8, !tbaa !233, !alias.scope !436, !noalias !437
  invoke void @_ZNSt5dequeIcSaIcEE19_M_range_insert_auxIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEEEEvSt15_Deque_iteratorIcRcPcET_SH_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef nonnull align 8 dead_on_return %10, ptr %.sroa.10.060, ptr %.sroa.13.061)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.n = load ptr, ptr %0, align 8, !tbaa !39     ; 5 uses
  %i.o = load i64, ptr %i.g, align 8, !tbaa !41   ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o ; 3 uses
  %.not2633.i = icmp eq ptr %.sroa.7.059, %i.p
  br i1 %.not2633.i, label %._crit_edge, label %.lr.ph35.i

.lr.ph35.i:                                       ; preds = %bb.d
  %i.q = load ptr, ptr %1, align 8, !tbaa !237    ; 2 uses
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !238  ; 3 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %._crit_edge, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph35.i, %.critedge15.i
  %.sroa.018.034.i = phi ptr [ %i.z, %.critedge15.i ], [ %.sroa.7.059, %.lr.ph35.i ] ; 5 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %.01228.i = phi ptr [ %i.x, %bb.e ], [ %i.q, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.0.027.i = phi ptr [ %i.w, %bb.e ], [ %.sroa.018.034.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.t = load i8, ptr %.sroa.0.027.i, align 1, !tbaa !40
  %i.u = load i8, ptr %.01228.i, align 1, !tbaa !40
  %i.v = icmp eq i8 %i.t, %i.u
  br i1 %i.v, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 1 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01228.i, i64 1 ; 3 uses
  %i.y = icmp eq ptr %i.w, %i.p
  %.not.i33 = icmp eq ptr %i.x, %i.r
  %or.cond.i = select i1 %i.y, i1 true, i1 %.not.i33
  br i1 %or.cond.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !16

.critedge.i:                                      ; preds = %bb.e, %.lr.ph.i
  %.sroa.0.0.lcssa.ph.i = phi ptr [ %.sroa.0.027.i, %.lr.ph.i ], [ %i.w, %bb.e ] ; 3 uses
  %.012.lcssa.ph.i = phi ptr [ %.01228.i, %.lr.ph.i ], [ %i.x, %bb.e ]
  %.not13.i = icmp eq ptr %.012.lcssa.ph.i, %i.r
  br i1 %.not13.i, label %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeINS4_IPKcSB_EEEEEESI_EaSINSE_ISC_EEEERSK_T_.exit, label %.critedge15.i

.critedge15.i:                                    ; preds = %.critedge.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.018.034.i, i64 1 ; 2 uses
  %.not26.i = icmp eq ptr %i.z, %i.p
  br i1 %.not26.i, label %._crit_edge, label %.lr.ph.preheader.i, !llvm.loop !15

_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeINS4_IPKcSB_EEEEEESI_EaSINSE_ISC_EEEERSK_T_.exit: ; preds = %.critedge.i
  %i.aa = icmp eq ptr %.sroa.018.034.i, %.sroa.0.0.lcssa.ph.i ; 2 uses
  %spec.select = select i1 %i.aa, ptr %.sroa.10.060, ptr %2
  %spec.select52 = select i1 %i.aa, ptr %.sroa.13.061, ptr %3
  %.not.i = icmp eq ptr %.sroa.018.034.i, %.sroa.0.0.lcssa.ph.i
  br i1 %.not.i, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.lr.ph35.i, %bb.d, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeINS4_IPKcSB_EEEEEESI_EaSINSE_ISC_EEEERSK_T_.exit, %.critedge15.i, %.._crit_edge_crit_edge
  %i.ab = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.o, %.critedge15.i ], [ %i.o, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeINS4_IPKcSB_EEEEEESI_EaSINSE_ISC_EEEERSK_T_.exit ], [ %i.o, %bb.d ], [ %i.o, %.lr.ph35.i ]
  %i.ac = phi ptr [ %i.a, %.._crit_edge_crit_edge ], [ %i.n, %.critedge15.i ], [ %i.n, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeINS4_IPKcSB_EEEEEESI_EaSINSE_ISC_EEEERSK_T_.exit ], [ %i.n, %bb.d ], [ %i.n, %.lr.ph35.i ]
  %.sroa.016.0.lcssa = phi ptr [ %i.a, %.._crit_edge_crit_edge ], [ %.sroa.7.059, %.critedge15.i ], [ %.sroa.7.059, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeINS4_IPKcSB_EEEEEESI_EaSINSE_ISC_EEEERSK_T_.exit ], [ %.sroa.7.059, %bb.d ], [ %.sroa.7.059, %.lr.ph35.i ]
  %.sroa.017.0.lcssa = phi ptr [ %i.a, %.._crit_edge_crit_edge ], [ %i.i, %.critedge15.i ], [ %i.i, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeINS4_IPKcSB_EEEEEESI_EaSINSE_ISC_EEEERSK_T_.exit ], [ %i.i, %bb.d ], [ %i.i, %.lr.ph35.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.af = invoke ptr @_ZN5boost9algorithm6detail22process_segment_helperILb0EEclISt5dequeIcSaIcEENSt7__cxx1112basic_stringIcSt11char_traitsIcES6_EEN9__gnu_cxx17__normal_iteratorIPcSC_EEEET1_RT_RT0_SH_SH_SH_(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %.sroa.017.0.lcssa, ptr %.sroa.016.0.lcssa, ptr %i.ae)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !232 ; 2 uses
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !232 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  %i.al = load ptr, ptr %0, align 8, !tbaa !39    ; 3 uses
  br i1 %i.ak, label %_ZN5boost9algorithm6detail5eraseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENT_8iteratorERS9_SA_SA_.exit, label %bb.g

_ZN5boost9algorithm6detail5eraseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENT_8iteratorERS9_SA_SA_.exit: ; preds = %bb.f
  %i.am = ptrtoint ptr %i.af to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 2 uses
  store i64 %i.ao, ptr %i.ad, align 8, !tbaa !41
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ao
  store i8 0, ptr %i.ap, align 1, !tbaa !40
  br label %bb.h

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %bb.b, %bb.g, %._crit_edge
  %lpad.loopexit.split-lp105 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt5dequeIcSaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  resume { ptr, i32 } %lpad.loopexit.split-lp105

bb.g:                                             ; preds = %bb.f
  %i.aq = load i64, ptr %i.ad, align 8, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !234, !noalias !439
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !234, !noalias !440
  %i.ax = getelementptr inbounds nuw i8, ptr %12, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.ay = load <2 x ptr>, ptr %i.au, align 8, !tbaa !70, !noalias !439
  %i.az = insertelement <4 x ptr> poison, ptr %i.aj, i64 0
  %i.ba = insertelement <4 x ptr> %i.az, ptr %i.at, i64 1
  %i.bb = shufflevector <2 x ptr> %i.ay, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bc = shufflevector <4 x ptr> %i.ba, <4 x ptr> %i.bb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.bc, ptr %7, align 8, !tbaa !70
  %i.bd = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !70, !noalias !440
  %i.be = insertelement <4 x ptr> poison, ptr %i.ai, i64 0
  %i.bf = insertelement <4 x ptr> %i.be, ptr %i.aw, i64 1
  %i.bg = shufflevector <2 x ptr> %i.bd, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bh = shufflevector <4 x ptr> %i.bf, <4 x ptr> %i.bg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.bh, ptr %8, align 8, !tbaa !70
  %i.bi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE19_M_replace_dispatchISt15_Deque_iteratorIcRcPcEEERS4_N9__gnu_cxx17__normal_iteratorIPKcS4_EESF_T_SG_St12__false_type(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %i.ar, ptr %i.ar, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8)
          to label %_ZN5boost9algorithm6detail6insertINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt15_Deque_iteratorIcRcPcEEEvRT_NSD_8iteratorET0_SG_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN5boost9algorithm6detail6insertINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt15_Deque_iteratorIcRcPcEEEvRT_NSD_8iteratorET0_SG_.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.h

bb.h:                                             ; preds = %_ZN5boost9algorithm6detail6insertINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt15_Deque_iteratorIcRcPcEEEvRT_NSD_8iteratorET0_SG_.exit, %_ZN5boost9algorithm6detail5eraseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENT_8iteratorERS9_SA_SA_.exit
  %i.bj = load ptr, ptr %12, align 8, !tbaa !240  ; 2 uses
  %.not.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i, label %_ZNSt5dequeIcSaIcEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !241 ; 2 uses
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !242 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = icmp ult ptr %i.bm, %i.bo
  br i1 %i.bp, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i ], [ %i.bm, %bb.i ] ; 3 uses
  %i.bq = load ptr, ptr %.06.i.i.i, align 8, !tbaa !42
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef 512) #31
  %i.br = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.bs = icmp ult ptr %.06.i.i.i, %i.bn
  br i1 %i.bs, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.loopexit.i.i, !llvm.loop !17

_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %12, align 8, !tbaa !240
  br label %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i.i

_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.loopexit.i.i, %bb.i
  %i.bt = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.loopexit.i.i ], [ %i.bj, %bb.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !243
  %i.bw = shl i64 %i.bv, 3
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #31
  br label %_ZNSt5dequeIcSaIcEED2Ev.exit

_ZNSt5dequeIcSaIcEED2Ev.exit:                     ; preds = %bb.h, %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIcSaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !240    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt11_Deque_baseIcSaIcEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !241  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !242  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i, align 8, !tbaa !42
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 512) #31
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.loopexit.i, !llvm.loop !17

_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !240
  br label %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i

_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i: ; preds = %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.loopexit.i, %bb.b
  %i.k = phi ptr [ %.pre.i, %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.loopexit.i ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !243
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #31
  br label %_ZNSt11_Deque_baseIcSaIcEED2Ev.exit

_ZNSt11_Deque_baseIcSaIcEED2Ev.exit:              ; preds = %bb.a, %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm.exit:
  %i.a = lshr i64 %1, 9                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !243
  %i.e = shl nuw nsw i64 %.sroa.speculated, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #32 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !240
  %i.g = load i64, ptr %i.d, align 8, !tbaa !243
  %i.h = sub i64 %i.g, %i.b
  %i.i = lshr i64 %i.h, 1
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.i ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.m, %_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv.exit.i ], [ %i.j, %_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.l = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #32
          to label %_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv.exit.i unwind label %bb.a

_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.l, ptr %.011.i, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.n = icmp ult ptr %i.m, %i.k
  br i1 %i.n, label %.lr.ph.i, label %_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_.exit, !llvm.loop !441

bb.a:                                             ; preds = %.lr.ph.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.p) #28 ; 0 uses
  %i.r = icmp ult ptr %i.j, %.011.i
  br i1 %i.r, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.j, %bb.a ] ; 2 uses
  %i.s = load ptr, ptr %.06.i.i, align 8, !tbaa !42
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef 512) #31
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.u = icmp ult ptr %i.t, %.011.i
end_hunk_1
begin_hunk_2_@_ZNK5boost3log11v2_mt_posix5sinks9anonymous23date_and_time_formatterclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj:bb.a
  br label %common.resume

common.resume:                                    ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %common.resume.op = phi { ptr, i32 } [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10 ], [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bq, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.f
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

bb.j:                                             ; preds = %.noexc, %bb.a
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.i
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.j
  %i.by = load i64, ptr %i.i, align 8, !tbaa !40
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %common.resume

bb.k:                                             ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.az, i32 noundef 0)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ca, ptr %0, align 8, !tbaa !35
  %i.cb = load ptr, ptr %2, align 8, !tbaa !39    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !41 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.cd, ptr %i.a, align 8, !tbaa !37
  %i.ce = icmp ugt i64 %i.cd, 15
  br i1 %i.ce, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.k
  %i.cf = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.cf, ptr %0, align 8, !tbaa !39
  %i.cg = load i64, ptr %i.a, align 8, !tbaa !37
  store i64 %i.cg, ptr %i.ca, align 8, !tbaa !40
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.k
  %i.ch = phi ptr [ %i.cf, %.noexc.i ], [ %i.ca, %bb.k ] ; 2 uses
  switch i64 %i.cd, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.ci = load i8, ptr %i.cb, align 1, !tbaa !40
  store i8 %i.ci, ptr %i.ch, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.m:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ch, ptr align 1 %i.cb, i64 %i.cd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.l, %bb.m
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !41
  %i.cl = load ptr, ptr %0, align 8, !tbaa !39
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cj
  store i8 0, ptr %i.cm, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNK5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES7_RSt8ios_basecRKS3_(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr %1, i8 %2, ptr noundef nonnull align 8 dereferenceable(216) %3, i8 noundef signext %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"struct.boost::algorithm::detail::first_finderF", align 8 ; 5 uses
  %7 = alloca %"class.boost::iterator_range", align 8 ; 6 uses
  %8 = alloca %"struct.boost::algorithm::detail::first_finderF", align 8 ; 5 uses
  %9 = alloca %"class.boost::iterator_range", align 8 ; 6 uses
  %10 = alloca %"struct.boost::algorithm::detail::first_finderF", align 8 ; 5 uses
  %11 = alloca %"struct.boost::algorithm::detail::first_finderF", align 8 ; 5 uses
  %12 = alloca %"struct.boost::algorithm::detail::first_finderF", align 8 ; 5 uses
  %13 = alloca %"struct.boost::algorithm::detail::first_finderF.248", align 8 ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %14 = alloca %"struct.boost::algorithm::detail::first_finderF.248", align 8 ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %15 = alloca %"struct.boost::algorithm::detail::first_finderF", align 8 ; 5 uses
  %16 = alloca %"class.boost::iterator_range", align 8 ; 6 uses
  %17 = alloca %"struct.boost::algorithm::detail::first_finderF", align 8 ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %18 = alloca %"class.boost::iterator_range.160", align 8 ; 6 uses
  %19 = alloca %"struct.boost::algorithm::detail::first_finderF", align 8 ; 5 uses
  %20 = alloca %"class.boost::iterator_range.160", align 8 ; 6 uses
  %21 = alloca %"struct.boost::algorithm::detail::first_finderF", align 8 ; 5 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 42 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 23 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %25 = alloca %"class.std::locale", align 8      ; 7 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %27 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %29 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %33 = alloca %"class.std::locale", align 8      ; 7 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %35 = alloca %struct.tm, align 8                ; 5 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.f = load i64, ptr %5, align 8, !tbaa !155    ; 2 uses
  %i.g = add i64 %i.f, -9223372036854775806
  %i.h = icmp ult i64 %i.g, 3
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i64 %i.f, label %default.unreachable.i.i.i [
    i64 9223372036854775806, label %_ZNK5boost9date_time9base_timeINS_10posix_time5ptimeENS0_19counted_time_systemINS0_16counted_time_repINS2_33millisec_posix_time_system_configEEEEEE4dateEv.exit.thread
    i64 -9223372036854775808, label %.fold.split.i.i
    i64 9223372036854775807, label %_ZNK5boost9date_time4dateINS_9gregorian4dateENS2_18gregorian_calendarENS2_13date_durationEE10as_specialEv.exit
  ]

default.unreachable.i.i.i:                        ; preds = %bb.b
  unreachable

_ZNK5boost9date_time9base_timeINS_10posix_time5ptimeENS0_19counted_time_systemINS0_16counted_time_repINS2_33millisec_posix_time_system_configEEEEEE4dateEv.exit.thread: ; preds = %bb.b
  br label %_ZNK5boost9date_time4dateINS_9gregorian4dateENS2_18gregorian_calendarENS2_13date_durationEE10as_specialEv.exit

.fold.split.i.i:                                  ; preds = %bb.b
  br label %_ZNK5boost9date_time4dateINS_9gregorian4dateENS2_18gregorian_calendarENS2_13date_durationEE10as_specialEv.exit

_ZNK5boost9date_time4dateINS_9gregorian4dateENS2_18gregorian_calendarENS2_13date_durationEE10as_specialEv.exit: ; preds = %bb.b, %_ZNK5boost9date_time9base_timeINS_10posix_time5ptimeENS0_19counted_time_systemINS0_16counted_time_repINS2_33millisec_posix_time_system_configEEEEEE4dateEv.exit.thread, %.fold.split.i.i
  %.0.i.i = phi i32 [ 2, %bb.b ], [ 0, %_ZNK5boost9date_time9base_timeINS_10posix_time5ptimeENS0_19counted_time_systemINS0_16counted_time_repINS2_33millisec_posix_time_system_configEEEEEE4dateEv.exit.thread ], [ 1, %.fold.split.i.i ]
  %i.i = load ptr, ptr %0, align 8, !tbaa !65
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call { ptr, i8 } %i.k(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr %1, i8 %2, ptr noundef nonnull align 8 dereferenceable(216) %3, i8 noundef signext %4, i32 noundef %.0.i.i)
  br label %bb.ec

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  store ptr %i.n, ptr %22, align 8, !tbaa !35
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !39   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !41   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  store i64 %i.q, ptr %i.e, align 8, !tbaa !37
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.s, ptr %22, align 8, !tbaa !39
  %i.t = load i64, ptr %i.e, align 8, !tbaa !37
  store i64 %i.t, ptr %i.n, align 8, !tbaa !40
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.u = phi ptr [ %i.s, %.noexc.i ], [ %i.n, %bb.c ] ; 2 uses
  switch i64 %i.q, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.v = load i8, ptr %i.o, align 1, !tbaa !40
  store i8 %i.v, ptr %i.u, align 1, !tbaa !40
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.o, i64 %i.q, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.w = load i64, ptr %i.e, align 8, !tbaa !37   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 13 uses
  store i64 %i.w, ptr %i.x, align 8, !tbaa !41
  %i.y = load ptr, ptr %22, align 8, !tbaa !39
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  store ptr @_ZN5boost9date_time12time_formatsIcE24full_24_hour_time_formatE, ptr %21, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost9date_time12time_formatsIcE24full_24_hour_time_formatE, i64 2), ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.aa = load ptr, ptr %22, align 8, !tbaa !39   ; 4 uses
  %i.ab = load i64, ptr %i.x, align 8, !tbaa !41  ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  %.not2633.i.i.i = icmp samesign eq i64 %i.ab, 0
  br i1 %.not2633.i.i.i, label %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.f, %.critedge15.i.i.i
  %indvars.iv.in = phi i64 [ %indvars.iv, %.critedge15.i.i.i ], [ %i.ab, %bb.f ]
  %.sroa.018.034.i.i.i = phi ptr [ %i.af, %.critedge15.i.i.i ], [ %i.aa, %bb.f ] ; 7 uses
  %indvars.iv = add i64 %indvars.iv.in, -1        ; 2 uses
  %.not799 = icmp eq i64 %indvars.iv, 0           ; 2 uses
  %i.ad = select i1 %.not799, i64 1, i64 2        ; 2 uses
  %37 = load i8, ptr %.sroa.018.034.i.i.i, align 1, !tbaa !40
  %38 = icmp eq i8 %37, 37
  br i1 %38, label %.lr.ph.i.i.i, label %.critedge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.preheader.i.i.i
  %.01228.i.i.i.ptr.ptr = getelementptr inbounds nuw i8, ptr %.sroa.018.034.i.i.i, i64 1 ; 3 uses
  br i1 %.not799, label %.critedge.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %39 = load i8, ptr %.01228.i.i.i.ptr.ptr, align 1, !tbaa !40
  %40 = icmp eq i8 %39, 84                        ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.018.034.i.i.i, i64 2
  %spec.select = select i1 %40, ptr %i.ae, ptr %.01228.i.i.i.ptr.ptr
  %spec.select894 = select i1 %40, i64 %i.ad, i64 1
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.g, %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.0.lcssa.ph.i.i.i = phi ptr [ %.sroa.018.034.i.i.i, %.lr.ph.preheader.i.i.i ], [ %.01228.i.i.i.ptr.ptr, %.lr.ph.i.i.i ], [ %spec.select, %bb.g ] ; 2 uses
  %.012.lcssa.ph.i.i.i.idx = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.ad, %.lr.ph.i.i.i ], [ %spec.select894, %bb.g ]
  %.not13.i.i.i = icmp eq i64 %.012.lcssa.ph.i.i.i.idx, 2
  br i1 %.not13.i.i.i, label %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i, label %.critedge15.i.i.i

.critedge15.i.i.i:                                ; preds = %.critedge.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.018.034.i.i.i, i64 1 ; 2 uses
  %.not26.i.i.i = icmp eq ptr %i.af, %i.ac
  br i1 %.not26.i.i.i, label %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i, label %.lr.ph.preheader.i.i.i, !llvm.loop !15

_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i: ; preds = %.critedge15.i.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  br label %bb.i

_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i: ; preds = %.critedge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  %.not.i9.i.i = icmp eq ptr %.sroa.018.034.i.i.i, %.sroa.0.0.lcssa.ph.i.i.i
  br i1 %.not.i9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i
  store ptr @_ZN5boost9date_time12time_formatsIcE33full_24_hour_time_expanded_formatE, ptr %20, align 8
  %.sroa.34.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost9date_time12time_formatsIcE33full_24_hour_time_expanded_formatE, i64 8), ptr %.sroa.34.0..sroa_idx.i.i.i, align 8
  invoke void @_ZN5boost9algorithm6detail21find_format_all_impl2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13first_finderFIPKcNS0_8is_equalEEENS1_13const_formatFINS_14iterator_rangeISB_EEEENSF_IN9__gnu_cxx17__normal_iteratorIPcS8_EEEESG_EEvRT_T0_T1_T2_T3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull byval(%"struct.boost::algorithm::detail::first_finderF") align 8 %21, ptr nonnull @_ZN5boost9date_time12time_formatsIcE33full_24_hour_time_expanded_formatE, ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZN5boost9date_time12time_formatsIcE33full_24_hour_time_expanded_formatE, i64 8), ptr nonnull %.sroa.018.034.i.i.i, ptr nonnull %.sroa.0.0.lcssa.ph.i.i.i, ptr noundef nonnull byval(%"class.boost::iterator_range.160") align 8 %20)
          to label %._crit_edge unwind label %bb.ag

._crit_edge:                                      ; preds = %bb.h
  %.pre = load ptr, ptr %22, align 8, !tbaa !39
  %.pre687 = load i64, ptr %i.x, align 8, !tbaa !41
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i
  %i.ag = phi i64 [ %.pre687, %._crit_edge ], [ %i.ab, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i ], [ %i.ab, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i ] ; 3 uses
  %i.ah = phi ptr [ %.pre, %._crit_edge ], [ %i.aa, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i ], [ %i.aa, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  store ptr @_ZN5boost9date_time12time_formatsIcE25short_24_hour_time_formatE, ptr %19, align 8
  %.sroa.2.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost9date_time12time_formatsIcE25short_24_hour_time_formatE, i64 2), ptr %.sroa.2.0..sroa_idx.i98, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  %.not2633.i.i.i99 = icmp samesign eq i64 %i.ag, 0
  br i1 %.not2633.i.i.i99, label %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i112, label %.lr.ph.preheader.i.i.i101

.lr.ph.preheader.i.i.i101:                        ; preds = %bb.i, %.critedge15.i.i.i110
  %indvars.iv683.in = phi i64 [ %indvars.iv683, %.critedge15.i.i.i110 ], [ %i.ag, %bb.i ]
  %.sroa.018.034.i.i.i102 = phi ptr [ %i.al, %.critedge15.i.i.i110 ], [ %i.ah, %bb.i ] ; 7 uses
  %indvars.iv683 = add i64 %indvars.iv683.in, -1  ; 2 uses
  %.not800 = icmp eq i64 %indvars.iv683, 0        ; 2 uses
  %i.aj = select i1 %.not800, i64 1, i64 2        ; 2 uses
  %41 = load i8, ptr %.sroa.018.034.i.i.i102, align 1, !tbaa !40
  %42 = icmp eq i8 %41, 37
  br i1 %42, label %.lr.ph.i.i.i103, label %.critedge.i.i.i106

.lr.ph.i.i.i103:                                  ; preds = %.lr.ph.preheader.i.i.i101
  %.01228.i.i.i104.ptr.ptr = getelementptr inbounds nuw i8, ptr %.sroa.018.034.i.i.i102, i64 1 ; 3 uses
  br i1 %.not800, label %.critedge.i.i.i106, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i103
  %43 = load i8, ptr %.01228.i.i.i104.ptr.ptr, align 1, !tbaa !40
  %44 = icmp eq i8 %43, 82                        ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.018.034.i.i.i102, i64 2
  %spec.select895 = select i1 %44, ptr %i.ak, ptr %.01228.i.i.i104.ptr.ptr
  %spec.select896 = select i1 %44, i64 %i.aj, i64 1
  br label %.critedge.i.i.i106

.critedge.i.i.i106:                               ; preds = %bb.j, %.lr.ph.i.i.i103, %.lr.ph.preheader.i.i.i101
  %.sroa.0.0.lcssa.ph.i.i.i107 = phi ptr [ %.sroa.018.034.i.i.i102, %.lr.ph.preheader.i.i.i101 ], [ %.01228.i.i.i104.ptr.ptr, %.lr.ph.i.i.i103 ], [ %spec.select895, %bb.j ] ; 2 uses
  %.012.lcssa.ph.i.i.i108.idx = phi i64 [ 0, %.lr.ph.preheader.i.i.i101 ], [ %i.aj, %.lr.ph.i.i.i103 ], [ %spec.select896, %bb.j ]
  %.not13.i.i.i109 = icmp eq i64 %.012.lcssa.ph.i.i.i108.idx, 2
  br i1 %.not13.i.i.i109, label %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i113, label %.critedge15.i.i.i110

.critedge15.i.i.i110:                             ; preds = %.critedge.i.i.i106
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.018.034.i.i.i102, i64 1 ; 2 uses
  %.not26.i.i.i111 = icmp eq ptr %i.al, %i.ai
  br i1 %.not26.i.i.i111, label %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i112, label %.lr.ph.preheader.i.i.i101, !llvm.loop !15

_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i112: ; preds = %.critedge15.i.i.i110, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  br label %bb.l

_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i113: ; preds = %.critedge.i.i.i106
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  %.not.i9.i.i114 = icmp eq ptr %.sroa.018.034.i.i.i102, %.sroa.0.0.lcssa.ph.i.i.i107
  br i1 %.not.i9.i.i114, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i113
  store ptr @_ZN5boost9date_time12time_formatsIcE34short_24_hour_time_expanded_formatE, ptr %18, align 8
  %.sroa.34.0..sroa_idx.i.i.i115 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost9date_time12time_formatsIcE34short_24_hour_time_expanded_formatE, i64 5), ptr %.sroa.34.0..sroa_idx.i.i.i115, align 8
  invoke void @_ZN5boost9algorithm6detail21find_format_all_impl2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13first_finderFIPKcNS0_8is_equalEEENS1_13const_formatFINS_14iterator_rangeISB_EEEENSF_IN9__gnu_cxx17__normal_iteratorIPcS8_EEEESG_EEvRT_T0_T1_T2_T3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull byval(%"struct.boost::algorithm::detail::first_finderF") align 8 %19, ptr nonnull @_ZN5boost9date_time12time_formatsIcE34short_24_hour_time_expanded_formatE, ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZN5boost9date_time12time_formatsIcE34short_24_hour_time_expanded_formatE, i64 5), ptr nonnull %.sroa.018.034.i.i.i102, ptr nonnull %.sroa.0.0.lcssa.ph.i.i.i107, ptr noundef nonnull byval(%"class.boost::iterator_range.160") align 8 %18)
          to label %bb.l unwind label %bb.ag

bb.l:                                             ; preds = %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i113, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i112, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  %i.am = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 12 uses
  store ptr %i.am, ptr %23, align 8, !tbaa !35
  %i.an = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 15 uses
  store i64 0, ptr %i.an, align 8, !tbaa !41
  store i8 0, ptr %i.am, align 8, !tbaa !40
  %i.ao = load ptr, ptr @_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE38seconds_with_fractional_seconds_formatE, align 8, !tbaa !42 ; 2 uses
  %i.ap = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ao) #28
  %i.aq = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull %i.ao, i64 noundef 0, i64 noundef %i.ap) #28
  %.not = icmp eq i64 %i.aq, -1
  br i1 %.not, label %bb.al, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  %i.ar = load i64, ptr %5, align 8, !tbaa !155   ; 3 uses
  %i.as = add i64 %i.ar, -9223372036854775806
  %spec.select.i.i.i.i120 = icmp ult i64 %i.as, 3
  br i1 %spec.select.i.i.i.i120, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  switch i64 %i.ar, label %default.unreachable.i.i [
    i64 9223372036854775806, label %_ZNK5boost9date_time11int_adapterIlE10as_specialEv.exit.thread.i.i
    i64 -9223372036854775808, label %_ZNK5boost9date_time9base_timeINS_10posix_time5ptimeENS0_19counted_time_systemINS0_16counted_time_repINS2_33millisec_posix_time_system_configEEEEEE11time_of_dayEv.exit
    i64 9223372036854775807, label %_ZNK5boost9date_time11int_adapterIlE10as_specialEv.exit.i.i
  ]

default.unreachable.i.i:                          ; preds = %bb.n
  unreachable

_ZNK5boost9date_time11int_adapterIlE10as_specialEv.exit.thread.i.i: ; preds = %bb.n
  br label %_ZNK5boost9date_time9base_timeINS_10posix_time5ptimeENS0_19counted_time_systemINS0_16counted_time_repINS2_33millisec_posix_time_system_configEEEEEE11time_of_dayEv.exit

_ZNK5boost9date_time11int_adapterIlE10as_specialEv.exit.i.i: ; preds = %bb.n
  br label %_ZNK5boost9date_time9base_timeINS_10posix_time5ptimeENS0_19counted_time_systemINS0_16counted_time_repINS2_33millisec_posix_time_system_configEEEEEE11time_of_dayEv.exit

bb.o:                                             ; preds = %bb.m
  %i.at = srem i64 %i.ar, 86400000000
  %i.au = srem i64 %i.at, 1000000
  %i.av = call i64 @llvm.abs.i64(i64 %i.au, i1 true)
  br label %_ZNK5boost9date_time9base_timeINS_10posix_time5ptimeENS0_19counted_time_systemINS0_16counted_time_repINS2_33millisec_posix_time_system_configEEEEEE11time_of_dayEv.exit

_ZNK5boost9date_time9base_timeINS_10posix_time5ptimeENS0_19counted_time_systemINS0_16counted_time_repINS2_33millisec_posix_time_system_configEEEEEE11time_of_dayEv.exit: ; preds = %bb.o, %_ZNK5boost9date_time11int_adapterIlE10as_specialEv.exit.i.i, %_ZNK5boost9date_time11int_adapterIlE10as_specialEv.exit.thread.i.i, %bb.n
  %.sroa.04.0.i.i = phi i64 [ 775808, %bb.n ], [ 775806, %_ZNK5boost9date_time11int_adapterIlE10as_specialEv.exit.thread.i.i ], [ 775807, %_ZNK5boost9date_time11int_adapterIlE10as_specialEv.exit.i.i ], [ %i.av, %bb.o ]
  invoke void @_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE18integral_as_stringIlEENSt7__cxx1112basic_stringIcS6_SaIcEEET_i(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, i64 noundef %.sroa.04.0.i.i, i32 noundef 6)
          to label %_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE28fractional_seconds_as_stringB5cxx11ERKNS2_13time_durationEb.exit unwind label %bb.ah

_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE28fractional_seconds_as_stringB5cxx11ERKNS2_13time_durationEb.exit: ; preds = %_ZNK5boost9date_time9base_timeINS_10posix_time5ptimeENS0_19counted_time_systemINS0_16counted_time_repINS2_33millisec_posix_time_system_configEEEEEE11time_of_dayEv.exit
  %i.aw = load ptr, ptr %23, align 8, !tbaa !39   ; 6 uses
  %i.ax = icmp eq ptr %i.aw, %i.am
  %i.ay = load ptr, ptr %24, align 8, !tbaa !39   ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %i.ba = icmp eq ptr %i.ay, %i.az                ; 2 uses
  br i1 %i.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE28fractional_seconds_as_stringB5cxx11ERKNS2_13time_durationEb.exit
  br i1 %i.ba, label %bb.p, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE28fractional_seconds_as_stringB5cxx11ERKNS2_13time_durationEb.exit
  br i1 %i.ba, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !41 ; 3 uses
  %i.bd = icmp ult i64 %i.bc, 16
  call void @llvm.assume(i1 %i.bd)
  switch i64 %i.bc, label %bb.r [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.be = load i8, ptr %i.ay, align 1, !tbaa !40
  store i8 %i.be, ptr %i.aw, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr align 1 %i.ay, i64 %i.bc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.r, %bb.q, %bb.p
  %i.bf = load i64, ptr %i.bb, align 8, !tbaa !41 ; 2 uses
  store i64 %i.bf, ptr %i.an, align 8, !tbaa !41
  %i.bg = load ptr, ptr %23, align 8, !tbaa !39
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf
  store i8 0, ptr %i.bh, align 1, !tbaa !40
  %.pre.i = load ptr, ptr %24, align 8, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ay, ptr %23, align 8, !tbaa !39
  %i.bi = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.bj = load <2 x i64>, ptr %i.bi, align 8, !tbaa !40
  store <2 x i64> %i.bj, ptr %i.an, align 8, !tbaa !40
  br label %bb.t

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bk = load i64, ptr %i.am, align 8, !tbaa !40
  store ptr %i.ay, ptr %23, align 8, !tbaa !39
  %i.bl = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.bm = load <2 x i64>, ptr %i.bl, align 8, !tbaa !40
  store <2 x i64> %i.bm, ptr %i.an, align 8, !tbaa !40
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.aw, ptr %24, align 8, !tbaa !39
  store i64 %i.bk, ptr %i.az, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.az, ptr %24, align 8, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.s, %bb.t
  %i.bn = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.aw, %bb.s ], [ %i.az, %bb.t ]
  %i.bo = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 0, ptr %i.bo, align 8, !tbaa !41
  store i8 0, ptr %i.bn, align 1, !tbaa !40
  %i.bp = load ptr, ptr %24, align 8, !tbaa !39   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !40
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 208
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.bu) #28
  %i.bv = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt7__cxx118numpunctIcE2idE) #28
  %i.bw = load ptr, ptr %25, align 8, !tbaa !223
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !228
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bv
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !230 ; 3 uses
  %.not.not.i = icmp eq ptr %i.ca, null
  br i1 %.not.not.i, label %bb.u, label %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZSt16__throw_bad_castv() #29
          to label %.noexc123 unwind label %bb.ai

.noexc123:                                        ; preds = %bb.u
  unreachable

_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !65
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = invoke noundef signext i8 %i.cd(ptr noundef nonnull align 8 dereferenceable(24) %i.ca)
          to label %_ZNKSt7__cxx118numpunctIcE13decimal_pointEv.exit unwind label %bb.ai, !inline_history !740

_ZNKSt7__cxx118numpunctIcE13decimal_pointEv.exit: ; preds = %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  %i.cf = load ptr, ptr @_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE14seconds_formatE, align 8, !tbaa !42 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 9 uses
  store ptr %i.cg, ptr %26, align 8, !tbaa !35
  %i.ch = icmp eq ptr %i.cf, null
  br i1 %i.ch, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNKSt7__cxx118numpunctIcE13decimal_pointEv.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.96) #29
          to label %.noexc127 unwind label %bb.aj

.noexc127:                                        ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %_ZNKSt7__cxx118numpunctIcE13decimal_pointEv.exit
  %i.ci = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cf) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 %i.ci, ptr %i.d, align 8, !tbaa !37
  %i.cj = icmp ugt i64 %i.ci, 15
  br i1 %i.cj, label %.noexc.i126, label %._crit_edge.i.i125

.noexc.i126:                                      ; preds = %bb.w
  %i.ck = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc128 unwind label %bb.aj ; 2 uses

.noexc128:                                        ; preds = %.noexc.i126
  store ptr %i.ck, ptr %26, align 8, !tbaa !39
  %i.cl = load i64, ptr %i.d, align 8, !tbaa !37
  store i64 %i.cl, ptr %i.cg, align 8, !tbaa !40
  br label %._crit_edge.i.i125

._crit_edge.i.i125:                               ; preds = %.noexc128, %bb.w
  %i.cm = phi ptr [ %i.ck, %.noexc128 ], [ %i.cg, %bb.w ] ; 2 uses
  switch i64 %i.ci, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %bb.z
  ]

bb.x:                                             ; preds = %._crit_edge.i.i125
  %i.cn = load i8, ptr %i.cf, align 1, !tbaa !40
  store i8 %i.cn, ptr %i.cm, align 1, !tbaa !40
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i125
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cm, ptr nonnull align 1 %i.cf, i64 %i.ci, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %._crit_edge.i.i125
  %i.co = load i64, ptr %i.d, align 8, !tbaa !37  ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 5 uses
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !41
  %i.cq = load ptr, ptr %26, align 8, !tbaa !39
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.co
  store i8 0, ptr %i.cr, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  %i.cs = load i64, ptr %i.cp, align 8, !tbaa !41 ; 4 uses
  %i.ct = add i64 %i.cs, 1                        ; 3 uses
  %i.cu = load ptr, ptr %26, align 8, !tbaa !39   ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.cg
  br i1 %i.cv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.z
  %i.cw = icmp ult i64 %i.cs, 16
  call void @llvm.assume(i1 %i.cw)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.z
  %i.cx = load i64, ptr %i.cg, align 8, !tbaa !40
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.cy = phi i64 [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.cz = icmp ugt i64 %i.ct, %i.cy
  br i1 %i.cz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %26, i64 noundef %i.cs, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc129 unwind label %bb.ak

.noexc129:                                        ; preds = %bb.aa
  %.pre.i.i = load ptr, ptr %26, align 8, !tbaa !39
  br label %bb.ab

bb.ab:                                            ; preds = %.noexc129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.da = phi ptr [ %.pre.i.i, %.noexc129 ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cs
  store i8 %i.ce, ptr %i.db, align 1, !tbaa !40
  store i64 %i.ct, ptr %i.cp, align 8, !tbaa !41
  %i.dc = load ptr, ptr %26, align 8, !tbaa !39
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.ct
  store i8 0, ptr %i.dd, align 1, !tbaa !40
  %i.de = load i64, ptr %i.an, align 8, !tbaa !41 ; 2 uses
  %i.df = load i64, ptr %i.cp, align 8, !tbaa !41
  %i.dg = sub i64 4611686018427387903, %i.df
  %i.dh = icmp ult i64 %i.dg, %i.de
  br i1 %i.dh, label %bb.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.74) #29
          to label %.noexc130 unwind label %bb.ak

.noexc130:                                        ; preds = %bb.ac
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.ab
  %i.di = load ptr, ptr %23, align 8, !tbaa !39
  %i.dj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef %i.di, i64 noundef %i.de)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.ak ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.dk = load ptr, ptr @_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE38seconds_with_fractional_seconds_formatE, align 8, !tbaa !42, !noalias !769 ; 4 uses
  %i.dl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dk) #33, !noalias !769 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dl ; 3 uses
  %i.dn = load ptr, ptr %26, align 8, !tbaa !39   ; 5 uses
  %i.do = load i64, ptr %i.cp, align 8, !tbaa !41
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.do ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  store ptr %i.dk, ptr %17, align 8
  %.sroa.2.0..sroa_idx.i132 = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.dm, ptr %.sroa.2.0..sroa_idx.i132, align 8
  %i.dq = load ptr, ptr %22, align 8, !tbaa !39   ; 2 uses
  %i.dr = load i64, ptr %i.x, align 8, !tbaa !41  ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dr ; 2 uses
  %.not2633.i.i.i133 = icmp samesign eq i64 %i.dr, 0
  %i.dt = icmp samesign eq i64 %i.dl, 0
  %or.cond.i134 = select i1 %.not2633.i.i.i133, i1 true, i1 %i.dt
  br i1 %or.cond.i134, label %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i146, label %.lr.ph.preheader.i.i.i135

.lr.ph.preheader.i.i.i135:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %.critedge15.i.i.i144
  %.sroa.018.034.i.i.i136 = phi ptr [ %i.ea, %.critedge15.i.i.i144 ], [ %i.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit ] ; 4 uses
  br label %.lr.ph.i.i.i137

.lr.ph.i.i.i137:                                  ; preds = %bb.ad, %.lr.ph.preheader.i.i.i135
  %.01228.i.i.i138 = phi ptr [ %i.dy, %bb.ad ], [ %i.dk, %.lr.ph.preheader.i.i.i135 ] ; 3 uses
  %.sroa.0.027.i.i.i139 = phi ptr [ %i.dx, %bb.ad ], [ %.sroa.018.034.i.i.i136, %.lr.ph.preheader.i.i.i135 ] ; 3 uses
  %i.du = load i8, ptr %.sroa.0.027.i.i.i139, align 1, !tbaa !40
  %i.dv = load i8, ptr %.01228.i.i.i138, align 1, !tbaa !40
  %i.dw = icmp eq i8 %i.du, %i.dv
  br i1 %i.dw, label %bb.ad, label %.critedge.i.i.i140

bb.ad:                                            ; preds = %.lr.ph.i.i.i137
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i.i139, i64 1 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.01228.i.i.i138, i64 1 ; 3 uses
  %i.dz = icmp eq ptr %i.dx, %i.ds
  %.not.i.i.i150 = icmp eq ptr %i.dy, %i.dm
  %or.cond.i.i.i151 = select i1 %i.dz, i1 true, i1 %.not.i.i.i150
  br i1 %or.cond.i.i.i151, label %.critedge.i.i.i140, label %.lr.ph.i.i.i137, !llvm.loop !16

.critedge.i.i.i140:                               ; preds = %bb.ad, %.lr.ph.i.i.i137
  %.sroa.0.0.lcssa.ph.i.i.i141 = phi ptr [ %.sroa.0.027.i.i.i139, %.lr.ph.i.i.i137 ], [ %i.dx, %bb.ad ] ; 2 uses
  %.012.lcssa.ph.i.i.i142 = phi ptr [ %.01228.i.i.i138, %.lr.ph.i.i.i137 ], [ %i.dy, %bb.ad ]
  %.not13.i.i.i143 = icmp eq ptr %.012.lcssa.ph.i.i.i142, %i.dm
  br i1 %.not13.i.i.i143, label %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i147, label %.critedge15.i.i.i144

.critedge15.i.i.i144:                             ; preds = %.critedge.i.i.i140
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.018.034.i.i.i136, i64 1 ; 2 uses
  %.not26.i.i.i145 = icmp eq ptr %i.ea, %i.ds
  br i1 %.not26.i.i.i145, label %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i146, label %.lr.ph.preheader.i.i.i135, !llvm.loop !15

_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i146: ; preds = %.critedge15.i.i.i144, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  br label %bb.af

_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i147: ; preds = %.critedge.i.i.i140
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  %.not.i9.i.i148 = icmp eq ptr %.sroa.018.034.i.i.i136, %.sroa.0.0.lcssa.ph.i.i.i141
  br i1 %.not.i9.i.i148, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i147
  store ptr %i.dn, ptr %16, align 8
  %.sroa.34.0..sroa_idx.i.i.i149 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.dp, ptr %.sroa.34.0..sroa_idx.i.i.i149, align 8
  invoke void @_ZN5boost9algorithm6detail21find_format_all_impl2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13first_finderFIPKcNS0_8is_equalEEENS1_13const_formatFINS_14iterator_rangeIN9__gnu_cxx17__normal_iteratorISB_S8_EEEEEENSF_INSH_IPcS8_EEEESJ_EEvRT_T0_T1_T2_T3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull byval(%"struct.boost::algorithm::detail::first_finderF") align 8 %17, ptr %i.dn, ptr %i.dp, ptr %.sroa.018.034.i.i.i136, ptr nonnull %.sroa.0.0.lcssa.ph.i.i.i141, ptr noundef nonnull byval(%"class.boost::iterator_range") align 8 %16)
          to label %._crit_edge688 unwind label %bb.ak

._crit_edge688:                                   ; preds = %bb.ae
  %.pre689 = load ptr, ptr %26, align 8, !tbaa !39
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge688, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i147, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i146
  %i.eb = phi ptr [ %.pre689, %._crit_edge688 ], [ %i.dn, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i147 ], [ %i.dn, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i146 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %i.ec = icmp eq ptr %i.eb, %i.cg
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %bb.af
  %i.ed = load i64, ptr %i.cg, align 8, !tbaa !40
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br label %bb.al

bb.ag:                                            ; preds = %bb.h, %bb.k
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.ah:                                            ; preds = %_ZNK5boost9date_time9base_timeINS_10posix_time5ptimeENS0_19counted_time_systemINS0_16counted_time_repINS2_33millisec_posix_time_system_configEEEEEE11time_of_dayEv.exit
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  br label %bb.ea

bb.ai:                                            ; preds = %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit, %bb.u
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  br label %bb.ea

bb.aj:                                            ; preds = %.noexc.i126, %bb.v
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

bb.ak:                                            ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.ac, %bb.aa
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = load ptr, ptr %26, align 8, !tbaa !39   ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.cg
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %bb.ak
  %i.em = load i64, ptr %i.cg, align 8, !tbaa !40
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156, %bb.aj
  %.pn61 = phi { ptr, i32 } [ %i.ei, %bb.aj ], [ %i.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156 ], [ %i.ej, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br label %bb.ea

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %bb.l
  %i.eo = load ptr, ptr @_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE24posix_zone_string_formatE, align 8, !tbaa !42 ; 2 uses
  %i.ep = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eo) #28
  %i.eq = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull %i.eo, i64 noundef 0, i64 noundef %i.ep) #28
  %.not64 = icmp eq i64 %i.eq, -1
  br i1 %.not64, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.er = load ptr, ptr @_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE24posix_zone_string_formatE, align 8, !tbaa !42, !noalias !770 ; 4 uses
  %i.es = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.er) #33, !noalias !770 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.es ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  store ptr %i.er, ptr %15, align 8
  %.sroa.2.0..sroa_idx.i162 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.et, ptr %.sroa.2.0..sroa_idx.i162, align 8
  %i.eu = load ptr, ptr %22, align 8, !tbaa !39   ; 2 uses
  %i.ev = load i64, ptr %i.x, align 8, !tbaa !41  ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ev ; 2 uses
  %.not2633.i.i.i163 = icmp samesign eq i64 %i.ev, 0
  %i.ex = icmp samesign eq i64 %i.es, 0
  %or.cond.i164 = select i1 %.not2633.i.i.i163, i1 true, i1 %i.ex
  br i1 %or.cond.i164, label %_ZN5boost9algorithm9erase_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEvRT_RKT0_.exit, label %.lr.ph.preheader.i.i.i165

.lr.ph.preheader.i.i.i165:                        ; preds = %bb.am, %.critedge15.i.i.i174
  %.sroa.018.034.i.i.i166 = phi ptr [ %i.fe, %.critedge15.i.i.i174 ], [ %i.eu, %bb.am ] ; 4 uses
  br label %.lr.ph.i.i.i167

.lr.ph.i.i.i167:                                  ; preds = %bb.an, %.lr.ph.preheader.i.i.i165
  %.01228.i.i.i168 = phi ptr [ %i.fc, %bb.an ], [ %i.er, %.lr.ph.preheader.i.i.i165 ] ; 3 uses
  %.sroa.0.027.i.i.i169 = phi ptr [ %i.fb, %bb.an ], [ %.sroa.018.034.i.i.i166, %.lr.ph.preheader.i.i.i165 ] ; 3 uses
  %i.ey = load i8, ptr %.sroa.0.027.i.i.i169, align 1, !tbaa !40
  %i.ez = load i8, ptr %.01228.i.i.i168, align 1, !tbaa !40
  %i.fa = icmp eq i8 %i.ey, %i.ez
  br i1 %i.fa, label %bb.an, label %.critedge.i.i.i170

bb.an:                                            ; preds = %.lr.ph.i.i.i167
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i.i169, i64 1 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.01228.i.i.i168, i64 1 ; 3 uses
  %i.fd = icmp eq ptr %i.fb, %i.ew
  %.not.i.i.i177 = icmp eq ptr %i.fc, %i.et
  %or.cond.i.i.i178 = select i1 %i.fd, i1 true, i1 %.not.i.i.i177
  br i1 %or.cond.i.i.i178, label %.critedge.i.i.i170, label %.lr.ph.i.i.i167, !llvm.loop !16

.critedge.i.i.i170:                               ; preds = %bb.an, %.lr.ph.i.i.i167
  %.sroa.0.0.lcssa.ph.i.i.i171 = phi ptr [ %.sroa.0.027.i.i.i169, %.lr.ph.i.i.i167 ], [ %i.fb, %bb.an ] ; 2 uses
  %.012.lcssa.ph.i.i.i172 = phi ptr [ %.01228.i.i.i168, %.lr.ph.i.i.i167 ], [ %i.fc, %bb.an ]
  %.not13.i.i.i173 = icmp eq ptr %.012.lcssa.ph.i.i.i172, %i.et
  br i1 %.not13.i.i.i173, label %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i176, label %.critedge15.i.i.i174

.critedge15.i.i.i174:                             ; preds = %.critedge.i.i.i170
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.018.034.i.i.i166, i64 1 ; 2 uses
  %.not26.i.i.i175 = icmp eq ptr %i.fe, %i.ew
  br i1 %.not26.i.i.i175, label %_ZN5boost9algorithm9erase_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEvRT_RKT0_.exit, label %.lr.ph.preheader.i.i.i165, !llvm.loop !15

_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i176: ; preds = %.critedge.i.i.i170
  %.not.i5.i.i = icmp eq ptr %.sroa.018.034.i.i.i166, %.sroa.0.0.lcssa.ph.i.i.i171
  br i1 %.not.i5.i.i, label %_ZN5boost9algorithm9erase_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEvRT_RKT0_.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i176
  invoke void @_ZN5boost9algorithm6detail21find_format_all_impl2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13first_finderFIPKcNS0_8is_equalEEENS1_13empty_formatFIcEENS_14iterator_rangeIN9__gnu_cxx17__normal_iteratorIPcS8_EEEENS1_15empty_containerIcEEEEvRT_T0_T1_T2_T3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull byval(%"struct.boost::algorithm::detail::first_finderF") align 8 %15, ptr %.sroa.018.034.i.i.i166, ptr nonnull %.sroa.0.0.lcssa.ph.i.i.i171)
          to label %_ZN5boost9algorithm9erase_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEvRT_RKT0_.exit unwind label %bb.ap

_ZN5boost9algorithm9erase_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEvRT_RKT0_.exit: ; preds = %.critedge15.i.i.i174, %bb.ao, %bb.am, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br label %bb.aq

bb.ap:                                            ; preds = %bb.dr, %bb.cv, %bb.ch, %bb.cd, %bb.ao
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.aq:                                            ; preds = %_ZN5boost9algorithm9erase_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEvRT_RKT0_.exit, %bb.al
  %i.fg = load ptr, ptr @_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE16zone_name_formatE, align 8, !tbaa !42 ; 2 uses
  %i.fh = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fg) #28
  %i.fi = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull %i.fg, i64 noundef 0, i64 noundef %i.fh) #28
  %.not65 = icmp eq i64 %i.fi, -1
  br i1 %.not65, label %bb.bi, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %27)
          to label %bb.as unwind label %bb.bd

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 32, ptr %i.c, align 1, !tbaa !40
  %i.fj = load ptr, ptr %27, align 8, !tbaa !65
  %i.fk = getelementptr i8, ptr %i.fj, i64 -24
  %i.fl = load i64, ptr %i.fk, align 8
  %i.fm = getelementptr inbounds i8, ptr %27, i64 %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !271
  %.not.i211 = icmp eq i64 %i.fo, 0
  br i1 %.not.i211, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %bb.av unwind label %bb.be

bb.au:                                            ; preds = %bb.as
  %i.fq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %27, i8 noundef signext 32)
          to label %bb.av unwind label %bb.be     ; 0 uses

bb.av:                                            ; preds = %bb.at, %bb.au
  %.0.i = phi ptr [ %i.fp, %bb.at ], [ %27, %bb.au ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.fr = load ptr, ptr @_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE16zone_name_formatE, align 8, !tbaa !42 ; 3 uses
  %.not.i214 = icmp eq ptr %i.fr, null
  br i1 %.not.i214, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fs = load ptr, ptr %.0.i, align 8, !tbaa !65
  %i.ft = getelementptr i8, ptr %i.fs, i64 -24
  %i.fu = load i64, ptr %i.ft, align 8
  %i.fv = getelementptr inbounds i8, ptr %.0.i, i64 %i.fu ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !207
  %i.fy = or i32 %i.fx, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.fv, i32 noundef %i.fy)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.be

bb.ax:                                            ; preds = %bb.av
  %i.fz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fr) #28
  %i.ga = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef nonnull %i.fr, i64 noundef %i.fz)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.be ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !771)
  call void @llvm.experimental.noalias.scope.decl(metadata !772)
  %i.gb = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 7 uses
  store ptr %i.gb, ptr %28, align 8, !tbaa !35, !alias.scope !773
  %i.gc = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  store i64 0, ptr %i.gc, align 8, !tbaa !41, !alias.scope !773
  store i8 0, ptr %i.gb, align 8, !tbaa !40, !alias.scope !773
  %i.gd = getelementptr inbounds nuw i8, ptr %27, i64 48
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !269, !noalias !773 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ge, null
  %i.gf = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.gg = load ptr, ptr %i.gf, align 8, !noalias !773 ; 2 uses
  %i.gh = icmp ugt ptr %i.ge, %i.gg
  %.08.i.i.i = select i1 %i.gh, ptr %i.ge, ptr %i.gg ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.gi = getelementptr inbounds nuw i8, ptr %27, i64 40
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !270, !noalias !773 ; 2 uses
  %i.gk = ptrtoint ptr %.08.i.i.i to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %28, i64 noundef 0, i64 noundef 0, ptr noundef %i.gj, i64 noundef %i.gm)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.az ; 0 uses

bb.az:                                            ; preds = %bb.ba, %bb.ay
  %i.go = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gp = load ptr, ptr %28, align 8, !tbaa !39, !alias.scope !773 ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.gb
  br i1 %i.gq, label %.body, label %.body.sink.split

bb.ba:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.gr = getelementptr inbounds nuw i8, ptr %27, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(32) %i.gr)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.az

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.ba, %bb.ay
  %i.gs = load ptr, ptr %28, align 8, !tbaa !39, !noalias !774 ; 6 uses
  %i.gt = load i64, ptr %i.gc, align 8, !tbaa !41, !noalias !774 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gt ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr %i.gs, ptr %14, align 8
  %.sroa.2.0..sroa_idx.i217 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.gu, ptr %.sroa.2.0..sroa_idx.i217, align 8
  %i.gv = load ptr, ptr %22, align 8, !tbaa !39   ; 2 uses
  %i.gw = load i64, ptr %i.x, align 8, !tbaa !41  ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gw ; 2 uses
  %.not34.i.i.i = icmp samesign eq i64 %i.gw, 0
  %i.gy = icmp samesign eq i64 %i.gt, 0
  %or.cond.i218 = select i1 %.not34.i.i.i, i1 true, i1 %i.gy
  br i1 %or.cond.i218, label %.loopexit638, label %.lr.ph.preheader.i.i.i219

.lr.ph.preheader.i.i.i219:                        ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %.critedge9.i.i.i
  %.sroa.020.035.i.i.i = phi ptr [ %i.hh, %.critedge9.i.i.i ], [ %i.gv, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ] ; 4 uses
  br label %.lr.ph.i.i.i220

.lr.ph.i.i.i220:                                  ; preds = %bb.bb, %.lr.ph.preheader.i.i.i219
  %.sroa.013.029.i.i.i = phi ptr [ %i.hd, %bb.bb ], [ %i.gs, %.lr.ph.preheader.i.i.i219 ] ; 3 uses
  %.sroa.017.028.i.i.i = phi ptr [ %i.hc, %bb.bb ], [ %.sroa.020.035.i.i.i, %.lr.ph.preheader.i.i.i219 ] ; 3 uses
  %i.gz = load i8, ptr %.sroa.017.028.i.i.i, align 1, !tbaa !40
  %i.ha = load i8, ptr %.sroa.013.029.i.i.i, align 1, !tbaa !40
  %i.hb = icmp eq i8 %i.gz, %i.ha
  br i1 %i.hb, label %bb.bb, label %.critedge.i.i.i221

bb.bb:                                            ; preds = %.lr.ph.i.i.i220
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.017.028.i.i.i, i64 1 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.013.029.i.i.i, i64 1 ; 3 uses
  %i.he = icmp ne ptr %i.hc, %i.gx
  %i.hf = icmp ne ptr %i.hd, %i.gu
  %or.cond.i.i.i224 = select i1 %i.he, i1 %i.hf, i1 false
  br i1 %or.cond.i.i.i224, label %.lr.ph.i.i.i220, label %.critedge.i.i.i221, !llvm.loop !21

.critedge.i.i.i221:                               ; preds = %bb.bb, %.lr.ph.i.i.i220
  %.sroa.017.0.lcssa.ph.i.i.i = phi ptr [ %.sroa.017.028.i.i.i, %.lr.ph.i.i.i220 ], [ %i.hc, %bb.bb ] ; 2 uses
  %.sroa.013.0.lcssa.ph.i.i.i = phi ptr [ %.sroa.013.029.i.i.i, %.lr.ph.i.i.i220 ], [ %i.hd, %bb.bb ]
  %i.hg = icmp eq ptr %.sroa.013.0.lcssa.ph.i.i.i, %i.gu
  br i1 %i.hg, label %_ZNK5boost9algorithm6detail13first_finderFIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_8is_equalEEclINS4_IPcSC_EEEENS_14iterator_rangeIT_EESK_SK_.exit.i.i, label %.critedge9.i.i.i

.critedge9.i.i.i:                                 ; preds = %.critedge.i.i.i221
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.020.035.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i222 = icmp eq ptr %i.hh, %i.gx
  br i1 %.not.i.i.i222, label %.loopexit638, label %.lr.ph.preheader.i.i.i219, !llvm.loop !22

_ZNK5boost9algorithm6detail13first_finderFIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_8is_equalEEclINS4_IPcSC_EEEENS_14iterator_rangeIT_EESK_SK_.exit.i.i: ; preds = %.critedge.i.i.i221
  %.not.i5.i.i223 = icmp eq ptr %.sroa.020.035.i.i.i, %.sroa.017.0.lcssa.ph.i.i.i
  br i1 %.not.i5.i.i223, label %.loopexit638, label %bb.bc

bb.bc:                                            ; preds = %_ZNK5boost9algorithm6detail13first_finderFIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_8is_equalEEclINS4_IPcSC_EEEENS_14iterator_rangeIT_EESK_SK_.exit.i.i
  invoke void @_ZN5boost9algorithm6detail21find_format_all_impl2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13first_finderFIN9__gnu_cxx17__normal_iteratorIPKcS8_EENS0_8is_equalEEENS1_13empty_formatFIcEENS_14iterator_rangeINSB_IPcS8_EEEENS1_15empty_containerIcEEEEvRT_T0_T1_T2_T3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull byval(%"struct.boost::algorithm::detail::first_finderF.248") align 8 %14, ptr %.sroa.020.035.i.i.i, ptr nonnull %.sroa.017.0.lcssa.ph.i.i.i)
          to label %..loopexit638_crit_edge unwind label %bb.bf

..loopexit638_crit_edge:                          ; preds = %bb.bc
  %.pre690 = load ptr, ptr %28, align 8, !tbaa !39
  br label %.loopexit638

.loopexit638:                                     ; preds = %.critedge9.i.i.i, %..loopexit638_crit_edge, %_ZNK5boost9algorithm6detail13first_finderFIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_8is_equalEEclINS4_IPcSC_EEEENS_14iterator_rangeIT_EESK_SK_.exit.i.i, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.hi = phi ptr [ %.pre690, %..loopexit638_crit_edge ], [ %i.gs, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ], [ %i.gs, %_ZNK5boost9algorithm6detail13first_finderFIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_8is_equalEEclINS4_IPcSC_EEEENS_14iterator_rangeIT_EESK_SK_.exit.i.i ], [ %i.gs, %.critedge9.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.hj = icmp eq ptr %i.hi, %i.gb
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226: ; preds = %.loopexit638
  %i.hk = load i64, ptr %i.gb, align 8, !tbaa !40
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228: ; preds = %.loopexit638, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  %i.hm = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.hm, ptr %27, align 8, !tbaa !65
  %i.hn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ho = getelementptr i8, ptr %i.hm, i64 -24
  %i.hp = load i64, ptr %i.ho, align 8
  %i.hq = getelementptr inbounds i8, ptr %27, i64 %i.hp
  store ptr %i.hn, ptr %i.hq, align 8, !tbaa !65
  %i.hr = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.hr, align 8, !tbaa !65
  %i.hs = getelementptr inbounds nuw i8, ptr %27, i64 80
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !39 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %27, i64 96 ; 2 uses
  %i.hv = icmp eq ptr %i.ht, %i.hu
end_hunk_2
begin_hunk_3_@_ZNK5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES7_RSt8ios_basecRKS3_:bb.a
  %i.jn = sub i64 %i.jl, %i.jm
  %i.jo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %30, i64 noundef 0, i64 noundef 0, ptr noundef %i.jk, i64 noundef %i.jn)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit281 unwind label %bb.br ; 0 uses

bb.br:                                            ; preds = %bb.bs, %bb.bq
  %i.jp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jq = load ptr, ptr %30, align 8, !tbaa !39, !alias.scope !777 ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %i.jc
  br i1 %i.jr, label %.body279, label %.body279.sink.split

bb.bs:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit271
  %i.js = getelementptr inbounds nuw i8, ptr %29, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(32) %i.js)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit281 unwind label %bb.br

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit281: ; preds = %bb.bs, %bb.bq
  %i.jt = load ptr, ptr %30, align 8, !tbaa !39, !noalias !778 ; 6 uses
  %i.ju = load i64, ptr %i.jd, align 8, !tbaa !41, !noalias !778 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.ju ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store ptr %i.jt, ptr %13, align 8
  %.sroa.2.0..sroa_idx.i282 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.jv, ptr %.sroa.2.0..sroa_idx.i282, align 8
  %i.jw = load ptr, ptr %22, align 8, !tbaa !39   ; 2 uses
  %i.jx = load i64, ptr %i.x, align 8, !tbaa !41  ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.jx ; 2 uses
  %.not34.i.i.i283 = icmp samesign eq i64 %i.jx, 0
  %i.jz = icmp samesign eq i64 %i.ju, 0
  %or.cond.i284 = select i1 %.not34.i.i.i283, i1 true, i1 %i.jz
  br i1 %or.cond.i284, label %.loopexit, label %.lr.ph.preheader.i.i.i285

.lr.ph.preheader.i.i.i285:                        ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit281, %.critedge9.i.i.i293
  %.sroa.020.035.i.i.i286 = phi ptr [ %i.ki, %.critedge9.i.i.i293 ], [ %i.jw, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit281 ] ; 4 uses
  br label %.lr.ph.i.i.i287

.lr.ph.i.i.i287:                                  ; preds = %bb.bt, %.lr.ph.preheader.i.i.i285
  %.sroa.013.029.i.i.i288 = phi ptr [ %i.ke, %bb.bt ], [ %i.jt, %.lr.ph.preheader.i.i.i285 ] ; 3 uses
  %.sroa.017.028.i.i.i289 = phi ptr [ %i.kd, %bb.bt ], [ %.sroa.020.035.i.i.i286, %.lr.ph.preheader.i.i.i285 ] ; 3 uses
  %i.ka = load i8, ptr %.sroa.017.028.i.i.i289, align 1, !tbaa !40
  %i.kb = load i8, ptr %.sroa.013.029.i.i.i288, align 1, !tbaa !40
  %i.kc = icmp eq i8 %i.ka, %i.kb
  br i1 %i.kc, label %bb.bt, label %.critedge.i.i.i290

bb.bt:                                            ; preds = %.lr.ph.i.i.i287
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.017.028.i.i.i289, i64 1 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.013.029.i.i.i288, i64 1 ; 3 uses
  %i.kf = icmp ne ptr %i.kd, %i.jy
  %i.kg = icmp ne ptr %i.ke, %i.jv
  %or.cond.i.i.i297 = select i1 %i.kf, i1 %i.kg, i1 false
  br i1 %or.cond.i.i.i297, label %.lr.ph.i.i.i287, label %.critedge.i.i.i290, !llvm.loop !21

.critedge.i.i.i290:                               ; preds = %bb.bt, %.lr.ph.i.i.i287
  %.sroa.017.0.lcssa.ph.i.i.i291 = phi ptr [ %.sroa.017.028.i.i.i289, %.lr.ph.i.i.i287 ], [ %i.kd, %bb.bt ] ; 2 uses
  %.sroa.013.0.lcssa.ph.i.i.i292 = phi ptr [ %.sroa.013.029.i.i.i288, %.lr.ph.i.i.i287 ], [ %i.ke, %bb.bt ]
  %i.kh = icmp eq ptr %.sroa.013.0.lcssa.ph.i.i.i292, %i.jv
  br i1 %i.kh, label %_ZNK5boost9algorithm6detail13first_finderFIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_8is_equalEEclINS4_IPcSC_EEEENS_14iterator_rangeIT_EESK_SK_.exit.i.i295, label %.critedge9.i.i.i293

.critedge9.i.i.i293:                              ; preds = %.critedge.i.i.i290
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.020.035.i.i.i286, i64 1 ; 2 uses
  %.not.i.i.i294 = icmp eq ptr %i.ki, %i.jy
  br i1 %.not.i.i.i294, label %.loopexit, label %.lr.ph.preheader.i.i.i285, !llvm.loop !22

_ZNK5boost9algorithm6detail13first_finderFIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_8is_equalEEclINS4_IPcSC_EEEENS_14iterator_rangeIT_EESK_SK_.exit.i.i295: ; preds = %.critedge.i.i.i290
  %.not.i5.i.i296 = icmp eq ptr %.sroa.020.035.i.i.i286, %.sroa.017.0.lcssa.ph.i.i.i291
  br i1 %.not.i5.i.i296, label %.loopexit, label %bb.bu

bb.bu:                                            ; preds = %_ZNK5boost9algorithm6detail13first_finderFIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_8is_equalEEclINS4_IPcSC_EEEENS_14iterator_rangeIT_EESK_SK_.exit.i.i295
  invoke void @_ZN5boost9algorithm6detail21find_format_all_impl2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13first_finderFIN9__gnu_cxx17__normal_iteratorIPKcS8_EENS0_8is_equalEEENS1_13empty_formatFIcEENS_14iterator_rangeINSB_IPcS8_EEEENS1_15empty_containerIcEEEEvRT_T0_T1_T2_T3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull byval(%"struct.boost::algorithm::detail::first_finderF.248") align 8 %13, ptr %.sroa.020.035.i.i.i286, ptr nonnull %.sroa.017.0.lcssa.ph.i.i.i291)
          to label %..loopexit_crit_edge unwind label %bb.bx

..loopexit_crit_edge:                             ; preds = %bb.bu
  %.pre691 = load ptr, ptr %30, align 8, !tbaa !39
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge9.i.i.i293, %..loopexit_crit_edge, %_ZNK5boost9algorithm6detail13first_finderFIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_8is_equalEEclINS4_IPcSC_EEEENS_14iterator_rangeIT_EESK_SK_.exit.i.i295, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit281
  %i.kj = phi ptr [ %.pre691, %..loopexit_crit_edge ], [ %i.jt, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit281 ], [ %i.jt, %_ZNK5boost9algorithm6detail13first_finderFIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_8is_equalEEclINS4_IPcSC_EEEENS_14iterator_rangeIT_EESK_SK_.exit.i.i295 ], [ %i.jt, %.critedge9.i.i.i293 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.kk = icmp eq ptr %i.kj, %i.jc
  br i1 %i.kk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300: ; preds = %.loopexit
  %i.kl = load i64, ptr %i.jc, align 8, !tbaa !40
  %i.km = add i64 %i.kl, 1
  call void @_ZdlPvm(ptr noundef %i.kj, i64 noundef %i.km) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  %i.kn = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.kn, ptr %29, align 8, !tbaa !65
  %i.ko = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.kp = getelementptr i8, ptr %i.kn, i64 -24
  %i.kq = load i64, ptr %i.kp, align 8
  %i.kr = getelementptr inbounds i8, ptr %29, i64 %i.kq
  store ptr %i.ko, ptr %i.kr, align 8, !tbaa !65
  %i.ks = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ks, align 8, !tbaa !65
  %i.kt = getelementptr inbounds nuw i8, ptr %29, i64 80
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !39 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %29, i64 96 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit305, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i303

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i303: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !40
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #31
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit305

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit305: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i303
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ks, align 8, !tbaa !65
  %i.kz = getelementptr inbounds nuw i8, ptr %29, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.kz) #28
  %i.la = getelementptr inbounds nuw i8, ptr %29, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.la) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  br label %bb.ca

bb.bv:                                            ; preds = %bb.bj
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bw:                                            ; preds = %bb.bp, %bb.bo, %bb.bm, %bb.bl
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bx:                                            ; preds = %bb.bu
  %i.ld = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.le = load ptr, ptr %30, align 8, !tbaa !39   ; 2 uses
  %i.lf = icmp eq ptr %i.le, %i.jc
  br i1 %i.lf, label %.body279, label %.body279.sink.split

.body279.sink.split:                              ; preds = %bb.bx, %bb.br
  %.sink847 = phi ptr [ %i.jq, %bb.br ], [ %i.le, %bb.bx ]
  %.pn75.ph = phi { ptr, i32 } [ %i.jp, %bb.br ], [ %i.ld, %bb.bx ]
  %i.lg = load i64, ptr %i.jc, align 8, !tbaa !40
  %i.lh = add i64 %i.lg, 1
  call void @_ZdlPvm(ptr noundef %.sink847, i64 noundef %i.lh) #31
  br label %.body279

.body279:                                         ; preds = %.body279.sink.split, %bb.bx, %bb.br
  %.pn75 = phi { ptr, i32 } [ %i.jp, %bb.br ], [ %i.ld, %bb.bx ], [ %.pn75.ph, %.body279.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  br label %bb.by

bb.by:                                            ; preds = %.body279, %bb.bw
  %.pn75.pn = phi { ptr, i32 } [ %.pn75, %.body279 ], [ %i.lc, %bb.bw ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %29) #28
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bv
  %.pn75.pn.pn = phi { ptr, i32 } [ %.pn75.pn, %bb.by ], [ %i.lb, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  br label %bb.ea

bb.ca:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit305, %bb.bi
  %i.li = load ptr, ptr @_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE24zone_iso_extended_formatE, align 8, !tbaa !42 ; 2 uses
  %i.lj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.li) #28
  %i.lk = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull %i.li, i64 noundef 0, i64 noundef %i.lj) #28
  %.not79 = icmp eq i64 %i.lk, -1
  br i1 %.not79, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ll = load ptr, ptr @_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE24zone_iso_extended_formatE, align 8, !tbaa !42, !noalias !779 ; 4 uses
  %i.lm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ll) #33, !noalias !779 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.lm ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr %i.ll, ptr %12, align 8
  %.sroa.2.0..sroa_idx.i340 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.ln, ptr %.sroa.2.0..sroa_idx.i340, align 8
  %i.lo = load ptr, ptr %22, align 8, !tbaa !39   ; 2 uses
  %i.lp = load i64, ptr %i.x, align 8, !tbaa !41  ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.lp ; 2 uses
  %.not2633.i.i.i341 = icmp samesign eq i64 %i.lp, 0
  %i.lr = icmp samesign eq i64 %i.lm, 0
  %or.cond.i342 = select i1 %.not2633.i.i.i341, i1 true, i1 %i.lr
  br i1 %or.cond.i342, label %_ZN5boost9algorithm9erase_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEvRT_RKT0_.exit359, label %.lr.ph.preheader.i.i.i343

.lr.ph.preheader.i.i.i343:                        ; preds = %bb.cb, %.critedge15.i.i.i352
  %.sroa.018.034.i.i.i344 = phi ptr [ %i.ly, %.critedge15.i.i.i352 ], [ %i.lo, %bb.cb ] ; 4 uses
  br label %.lr.ph.i.i.i345

.lr.ph.i.i.i345:                                  ; preds = %bb.cc, %.lr.ph.preheader.i.i.i343
  %.01228.i.i.i346 = phi ptr [ %i.lw, %bb.cc ], [ %i.ll, %.lr.ph.preheader.i.i.i343 ] ; 3 uses
  %.sroa.0.027.i.i.i347 = phi ptr [ %i.lv, %bb.cc ], [ %.sroa.018.034.i.i.i344, %.lr.ph.preheader.i.i.i343 ] ; 3 uses
  %i.ls = load i8, ptr %.sroa.0.027.i.i.i347, align 1, !tbaa !40
  %i.lt = load i8, ptr %.01228.i.i.i346, align 1, !tbaa !40
  %i.lu = icmp eq i8 %i.ls, %i.lt
  br i1 %i.lu, label %bb.cc, label %.critedge.i.i.i348

bb.cc:                                            ; preds = %.lr.ph.i.i.i345
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i.i347, i64 1 ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.01228.i.i.i346, i64 1 ; 3 uses
  %i.lx = icmp eq ptr %i.lv, %i.lq
  %.not.i.i.i356 = icmp eq ptr %i.lw, %i.ln
  %or.cond.i.i.i357 = select i1 %i.lx, i1 true, i1 %.not.i.i.i356
  br i1 %or.cond.i.i.i357, label %.critedge.i.i.i348, label %.lr.ph.i.i.i345, !llvm.loop !16

.critedge.i.i.i348:                               ; preds = %bb.cc, %.lr.ph.i.i.i345
  %.sroa.0.0.lcssa.ph.i.i.i349 = phi ptr [ %.sroa.0.027.i.i.i347, %.lr.ph.i.i.i345 ], [ %i.lv, %bb.cc ] ; 2 uses
  %.012.lcssa.ph.i.i.i350 = phi ptr [ %.01228.i.i.i346, %.lr.ph.i.i.i345 ], [ %i.lw, %bb.cc ]
  %.not13.i.i.i351 = icmp eq ptr %.012.lcssa.ph.i.i.i350, %i.ln
  br i1 %.not13.i.i.i351, label %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i354, label %.critedge15.i.i.i352

.critedge15.i.i.i352:                             ; preds = %.critedge.i.i.i348
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.018.034.i.i.i344, i64 1 ; 2 uses
  %.not26.i.i.i353 = icmp eq ptr %i.ly, %i.lq
  br i1 %.not26.i.i.i353, label %_ZN5boost9algorithm9erase_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEvRT_RKT0_.exit359, label %.lr.ph.preheader.i.i.i343, !llvm.loop !15

_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i354: ; preds = %.critedge.i.i.i348
  %.not.i5.i.i355 = icmp eq ptr %.sroa.018.034.i.i.i344, %.sroa.0.0.lcssa.ph.i.i.i349
  br i1 %.not.i5.i.i355, label %_ZN5boost9algorithm9erase_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEvRT_RKT0_.exit359, label %bb.cd

bb.cd:                                            ; preds = %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i354
  invoke void @_ZN5boost9algorithm6detail21find_format_all_impl2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13first_finderFIPKcNS0_8is_equalEEENS1_13empty_formatFIcEENS_14iterator_rangeIN9__gnu_cxx17__normal_iteratorIPcS8_EEEENS1_15empty_containerIcEEEEvRT_T0_T1_T2_T3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull byval(%"struct.boost::algorithm::detail::first_finderF") align 8 %12, ptr %.sroa.018.034.i.i.i344, ptr nonnull %.sroa.0.0.lcssa.ph.i.i.i349)
          to label %_ZN5boost9algorithm9erase_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEvRT_RKT0_.exit359 unwind label %bb.ap

_ZN5boost9algorithm9erase_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEvRT_RKT0_.exit359: ; preds = %.critedge15.i.i.i352, %bb.cd, %bb.cb, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i354
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN5boost9algorithm9erase_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEvRT_RKT0_.exit359, %bb.ca
  %i.lz = load ptr, ptr @_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE15zone_iso_formatE, align 8, !tbaa !42 ; 2 uses
  %i.ma = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lz) #28
  %i.mb = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull %i.lz, i64 noundef 0, i64 noundef %i.ma) #28
  %.not82 = icmp eq i64 %i.mb, -1
  br i1 %.not82, label %bb.ci, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.mc = load ptr, ptr @_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE15zone_iso_formatE, align 8, !tbaa !42, !noalias !780 ; 4 uses
  %i.md = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.mc) #33, !noalias !780 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.md ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr %i.mc, ptr %11, align 8
  %.sroa.2.0..sroa_idx.i391 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.me, ptr %.sroa.2.0..sroa_idx.i391, align 8
  %i.mf = load ptr, ptr %22, align 8, !tbaa !39   ; 2 uses
  %i.mg = load i64, ptr %i.x, align 8, !tbaa !41  ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.mg ; 2 uses
  %.not2633.i.i.i392 = icmp samesign eq i64 %i.mg, 0
  %i.mi = icmp samesign eq i64 %i.md, 0
  %or.cond.i393 = select i1 %.not2633.i.i.i392, i1 true, i1 %i.mi
  br i1 %or.cond.i393, label %_ZN5boost9algorithm9erase_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEvRT_RKT0_.exit410, label %.lr.ph.preheader.i.i.i394

.lr.ph.preheader.i.i.i394:                        ; preds = %bb.cf, %.critedge15.i.i.i403
  %.sroa.018.034.i.i.i395 = phi ptr [ %i.mp, %.critedge15.i.i.i403 ], [ %i.mf, %bb.cf ] ; 4 uses
  br label %.lr.ph.i.i.i396

.lr.ph.i.i.i396:                                  ; preds = %bb.cg, %.lr.ph.preheader.i.i.i394
  %.01228.i.i.i397 = phi ptr [ %i.mn, %bb.cg ], [ %i.mc, %.lr.ph.preheader.i.i.i394 ] ; 3 uses
  %.sroa.0.027.i.i.i398 = phi ptr [ %i.mm, %bb.cg ], [ %.sroa.018.034.i.i.i395, %.lr.ph.preheader.i.i.i394 ] ; 3 uses
  %i.mj = load i8, ptr %.sroa.0.027.i.i.i398, align 1, !tbaa !40
  %i.mk = load i8, ptr %.01228.i.i.i397, align 1, !tbaa !40
  %i.ml = icmp eq i8 %i.mj, %i.mk
  br i1 %i.ml, label %bb.cg, label %.critedge.i.i.i399

bb.cg:                                            ; preds = %.lr.ph.i.i.i396
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i.i398, i64 1 ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.01228.i.i.i397, i64 1 ; 3 uses
  %i.mo = icmp eq ptr %i.mm, %i.mh
  %.not.i.i.i407 = icmp eq ptr %i.mn, %i.me
  %or.cond.i.i.i408 = select i1 %i.mo, i1 true, i1 %.not.i.i.i407
  br i1 %or.cond.i.i.i408, label %.critedge.i.i.i399, label %.lr.ph.i.i.i396, !llvm.loop !16

.critedge.i.i.i399:                               ; preds = %bb.cg, %.lr.ph.i.i.i396
  %.sroa.0.0.lcssa.ph.i.i.i400 = phi ptr [ %.sroa.0.027.i.i.i398, %.lr.ph.i.i.i396 ], [ %i.mm, %bb.cg ] ; 2 uses
  %.012.lcssa.ph.i.i.i401 = phi ptr [ %.01228.i.i.i397, %.lr.ph.i.i.i396 ], [ %i.mn, %bb.cg ]
  %.not13.i.i.i402 = icmp eq ptr %.012.lcssa.ph.i.i.i401, %i.me
  br i1 %.not13.i.i.i402, label %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i405, label %.critedge15.i.i.i403

.critedge15.i.i.i403:                             ; preds = %.critedge.i.i.i399
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.018.034.i.i.i395, i64 1 ; 2 uses
  %.not26.i.i.i404 = icmp eq ptr %i.mp, %i.mh
  br i1 %.not26.i.i.i404, label %_ZN5boost9algorithm9erase_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEvRT_RKT0_.exit410, label %.lr.ph.preheader.i.i.i394, !llvm.loop !15

_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i405: ; preds = %.critedge.i.i.i399
  %.not.i5.i.i406 = icmp eq ptr %.sroa.018.034.i.i.i395, %.sroa.0.0.lcssa.ph.i.i.i400
  br i1 %.not.i5.i.i406, label %_ZN5boost9algorithm9erase_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEvRT_RKT0_.exit410, label %bb.ch

bb.ch:                                            ; preds = %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i405
  invoke void @_ZN5boost9algorithm6detail21find_format_all_impl2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13first_finderFIPKcNS0_8is_equalEEENS1_13empty_formatFIcEENS_14iterator_rangeIN9__gnu_cxx17__normal_iteratorIPcS8_EEEENS1_15empty_containerIcEEEEvRT_T0_T1_T2_T3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull byval(%"struct.boost::algorithm::detail::first_finderF") align 8 %11, ptr %.sroa.018.034.i.i.i395, ptr nonnull %.sroa.0.0.lcssa.ph.i.i.i400)
          to label %_ZN5boost9algorithm9erase_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEvRT_RKT0_.exit410 unwind label %bb.ap

_ZN5boost9algorithm9erase_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEvRT_RKT0_.exit410: ; preds = %.critedge15.i.i.i403, %bb.ch, %bb.cf, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i405
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.ci

bb.ci:                                            ; preds = %_ZN5boost9algorithm9erase_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEvRT_RKT0_.exit410, %bb.ce
  %i.mq = load ptr, ptr @_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE25fractional_seconds_formatE, align 8, !tbaa !42 ; 2 uses
  %i.mr = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.mq) #28
  %i.ms = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull %i.mq, i64 noundef 0, i64 noundef %i.mr) #28
  %.not85 = icmp eq i64 %i.ms, -1
  br i1 %.not85, label %bb.cw, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.mt = load i64, ptr %i.an, align 8, !tbaa !41 ; 2 uses
  %i.mu = icmp eq i64 %i.mt, 0
  br i1 %i.mu, label %bb.ck, label %bb.ct

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #28
  %i.mv = load i64, ptr %5, align 8, !tbaa !155   ; 3 uses
  %i.mw = add i64 %i.mv, -9223372036854775806
  %spec.select.i.i.i.i439 = icmp ult i64 %i.mw, 3
  br i1 %spec.select.i.i.i.i439, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  switch i64 %i.mv, label %default.unreachable.i.i443 [
    i64 9223372036854775806, label %_ZNK5boost9date_time11int_adapterIlE10as_specialEv.exit.thread.i.i442
    i64 -9223372036854775808, label %_ZNK5boost9date_time9base_timeINS_10posix_time5ptimeENS0_19counted_time_systemINS0_16counted_time_repINS2_33millisec_posix_time_system_configEEEEEE11time_of_dayEv.exit444
    i64 9223372036854775807, label %_ZNK5boost9date_time11int_adapterIlE10as_specialEv.exit.i.i441
  ]

default.unreachable.i.i443:                       ; preds = %bb.cl
  unreachable

_ZNK5boost9date_time11int_adapterIlE10as_specialEv.exit.thread.i.i442: ; preds = %bb.cl
  br label %_ZNK5boost9date_time9base_timeINS_10posix_time5ptimeENS0_19counted_time_systemINS0_16counted_time_repINS2_33millisec_posix_time_system_configEEEEEE11time_of_dayEv.exit444

_ZNK5boost9date_time11int_adapterIlE10as_specialEv.exit.i.i441: ; preds = %bb.cl
  br label %_ZNK5boost9date_time9base_timeINS_10posix_time5ptimeENS0_19counted_time_systemINS0_16counted_time_repINS2_33millisec_posix_time_system_configEEEEEE11time_of_dayEv.exit444

bb.cm:                                            ; preds = %bb.ck
  %i.mx = srem i64 %i.mv, 86400000000
  %i.my = srem i64 %i.mx, 1000000
  %i.mz = call i64 @llvm.abs.i64(i64 %i.my, i1 true)
  br label %_ZNK5boost9date_time9base_timeINS_10posix_time5ptimeENS0_19counted_time_systemINS0_16counted_time_repINS2_33millisec_posix_time_system_configEEEEEE11time_of_dayEv.exit444

_ZNK5boost9date_time9base_timeINS_10posix_time5ptimeENS0_19counted_time_systemINS0_16counted_time_repINS2_33millisec_posix_time_system_configEEEEEE11time_of_dayEv.exit444: ; preds = %bb.cm, %_ZNK5boost9date_time11int_adapterIlE10as_specialEv.exit.i.i441, %_ZNK5boost9date_time11int_adapterIlE10as_specialEv.exit.thread.i.i442, %bb.cl
  %.sroa.04.0.i.i440 = phi i64 [ 775808, %bb.cl ], [ 775806, %_ZNK5boost9date_time11int_adapterIlE10as_specialEv.exit.thread.i.i442 ], [ 775807, %_ZNK5boost9date_time11int_adapterIlE10as_specialEv.exit.i.i441 ], [ %i.mz, %bb.cm ]
  invoke void @_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE18integral_as_stringIlEENSt7__cxx1112basic_stringIcS6_SaIcEEET_i(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, i64 noundef %.sroa.04.0.i.i440, i32 noundef 6)
          to label %_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE28fractional_seconds_as_stringB5cxx11ERKNS2_13time_durationEb.exit448 unwind label %bb.cs

_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE28fractional_seconds_as_stringB5cxx11ERKNS2_13time_durationEb.exit448: ; preds = %_ZNK5boost9date_time9base_timeINS_10posix_time5ptimeENS0_19counted_time_systemINS0_16counted_time_repINS2_33millisec_posix_time_system_configEEEEEE11time_of_dayEv.exit444
  %i.na = load ptr, ptr %23, align 8, !tbaa !39   ; 6 uses
  %i.nb = icmp eq ptr %i.na, %i.am
  %i.nc = load ptr, ptr %31, align 8, !tbaa !39   ; 5 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 4 uses
  %i.ne = icmp eq ptr %i.nc, %i.nd                ; 2 uses
  br i1 %i.nb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i454, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i454: ; preds = %_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE28fractional_seconds_as_stringB5cxx11ERKNS2_13time_durationEb.exit448
  br i1 %i.ne, label %bb.cn, label %.thread.i455

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i449: ; preds = %_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE28fractional_seconds_as_stringB5cxx11ERKNS2_13time_durationEb.exit448
  br i1 %i.ne, label %bb.cn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i450

bb.cn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i449, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i454
  %i.nf = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !41 ; 3 uses
  %i.nh = icmp ult i64 %i.ng, 16
  call void @llvm.assume(i1 %i.nh)
  switch i64 %i.ng, label %bb.cp [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i452
    i64 1, label %bb.co
  ]

bb.co:                                            ; preds = %bb.cn
  %i.ni = load i8, ptr %i.nc, align 1, !tbaa !40
  store i8 %i.ni, ptr %i.na, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i452

bb.cp:                                            ; preds = %bb.cn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.na, ptr align 1 %i.nc, i64 %i.ng, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i452

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i452: ; preds = %bb.cp, %bb.co, %bb.cn
  %i.nj = load i64, ptr %i.nf, align 8, !tbaa !41 ; 2 uses
  store i64 %i.nj, ptr %i.an, align 8, !tbaa !41
  %i.nk = load ptr, ptr %23, align 8, !tbaa !39
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.nj
  store i8 0, ptr %i.nl, align 1, !tbaa !40
  %.pre.i453 = load ptr, ptr %31, align 8, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit456

.thread.i455:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i454
  store ptr %i.nc, ptr %23, align 8, !tbaa !39
  %i.nm = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.nn = load <2 x i64>, ptr %i.nm, align 8, !tbaa !40
  store <2 x i64> %i.nn, ptr %i.an, align 8, !tbaa !40
  br label %bb.cr

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i450: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i449
  %i.no = load i64, ptr %i.am, align 8, !tbaa !40
  store ptr %i.nc, ptr %23, align 8, !tbaa !39
  %i.np = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.nq = load <2 x i64>, ptr %i.np, align 8, !tbaa !40
  store <2 x i64> %i.nq, ptr %i.an, align 8, !tbaa !40
  %.not.i451 = icmp eq ptr %i.na, null
  br i1 %.not.i451, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i450
  store ptr %i.na, ptr %31, align 8, !tbaa !39
  store i64 %i.no, ptr %i.nd, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit456

bb.cr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i450, %.thread.i455
  store ptr %i.nd, ptr %31, align 8, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit456

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit456: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i452, %bb.cq, %bb.cr
  %i.nr = phi ptr [ %.pre.i453, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i452 ], [ %i.na, %bb.cq ], [ %i.nd, %bb.cr ]
  %i.ns = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 0, ptr %i.ns, align 8, !tbaa !41
  store i8 0, ptr %i.nr, align 1, !tbaa !40
  %i.nt = load ptr, ptr %31, align 8, !tbaa !39   ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.nv = icmp eq ptr %i.nt, %i.nu
  br i1 %i.nv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit456
  %i.nw = load i64, ptr %i.nu, align 8, !tbaa !40
  %i.nx = add i64 %i.nw, 1
  call void @_ZdlPvm(ptr noundef %i.nt, i64 noundef %i.nx) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit456, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  %.pre692 = load i64, ptr %i.an, align 8, !tbaa !41
  br label %bb.ct

bb.cs:                                            ; preds = %_ZNK5boost9date_time9base_timeINS_10posix_time5ptimeENS0_19counted_time_systemINS0_16counted_time_repINS2_33millisec_posix_time_system_configEEEEEE11time_of_dayEv.exit444
  %i.ny = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  br label %bb.ea

bb.ct:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459, %bb.cj
  %i.nz = phi i64 [ %.pre692, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459 ], [ %i.mt, %bb.cj ]
  %i.oa = load ptr, ptr @_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE25fractional_seconds_formatE, align 8, !tbaa !42, !noalias !781 ; 4 uses
  %i.ob = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.oa) #33, !noalias !781 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 %i.ob ; 3 uses
  %i.od = load ptr, ptr %23, align 8, !tbaa !39   ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 %i.nz ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %i.oa, ptr %10, align 8
  %.sroa.2.0..sroa_idx.i460 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.oc, ptr %.sroa.2.0..sroa_idx.i460, align 8
  %i.of = load ptr, ptr %22, align 8, !tbaa !39   ; 2 uses
  %i.og = load i64, ptr %i.x, align 8, !tbaa !41  ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.og ; 2 uses
  %.not2633.i.i.i461 = icmp samesign eq i64 %i.og, 0
  %i.oi = icmp samesign eq i64 %i.ob, 0
  %or.cond.i462 = select i1 %.not2633.i.i.i461, i1 true, i1 %i.oi
  br i1 %or.cond.i462, label %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i474, label %.lr.ph.preheader.i.i.i463

.lr.ph.preheader.i.i.i463:                        ; preds = %bb.ct, %.critedge15.i.i.i472
  %.sroa.018.034.i.i.i464 = phi ptr [ %i.op, %.critedge15.i.i.i472 ], [ %i.of, %bb.ct ] ; 4 uses
  br label %.lr.ph.i.i.i465

.lr.ph.i.i.i465:                                  ; preds = %bb.cu, %.lr.ph.preheader.i.i.i463
  %.01228.i.i.i466 = phi ptr [ %i.on, %bb.cu ], [ %i.oa, %.lr.ph.preheader.i.i.i463 ] ; 3 uses
  %.sroa.0.027.i.i.i467 = phi ptr [ %i.om, %bb.cu ], [ %.sroa.018.034.i.i.i464, %.lr.ph.preheader.i.i.i463 ] ; 3 uses
  %i.oj = load i8, ptr %.sroa.0.027.i.i.i467, align 1, !tbaa !40
  %i.ok = load i8, ptr %.01228.i.i.i466, align 1, !tbaa !40
  %i.ol = icmp eq i8 %i.oj, %i.ok
  br i1 %i.ol, label %bb.cu, label %.critedge.i.i.i468

bb.cu:                                            ; preds = %.lr.ph.i.i.i465
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i.i467, i64 1 ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.01228.i.i.i466, i64 1 ; 3 uses
  %i.oo = icmp eq ptr %i.om, %i.oh
  %.not.i.i.i478 = icmp eq ptr %i.on, %i.oc
  %or.cond.i.i.i479 = select i1 %i.oo, i1 true, i1 %.not.i.i.i478
  br i1 %or.cond.i.i.i479, label %.critedge.i.i.i468, label %.lr.ph.i.i.i465, !llvm.loop !16

.critedge.i.i.i468:                               ; preds = %bb.cu, %.lr.ph.i.i.i465
  %.sroa.0.0.lcssa.ph.i.i.i469 = phi ptr [ %.sroa.0.027.i.i.i467, %.lr.ph.i.i.i465 ], [ %i.om, %bb.cu ] ; 2 uses
  %.012.lcssa.ph.i.i.i470 = phi ptr [ %.01228.i.i.i466, %.lr.ph.i.i.i465 ], [ %i.on, %bb.cu ]
  %.not13.i.i.i471 = icmp eq ptr %.012.lcssa.ph.i.i.i470, %i.oc
  br i1 %.not13.i.i.i471, label %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i475, label %.critedge15.i.i.i472

.critedge15.i.i.i472:                             ; preds = %.critedge.i.i.i468
  %i.op = getelementptr inbounds nuw i8, ptr %.sroa.018.034.i.i.i464, i64 1 ; 2 uses
  %.not26.i.i.i473 = icmp eq ptr %i.op, %i.oh
  br i1 %.not26.i.i.i473, label %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i474, label %.lr.ph.preheader.i.i.i463, !llvm.loop !15

_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i474: ; preds = %.critedge15.i.i.i472, %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br label %_ZN5boost9algorithm11replace_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS7_EEvRT_RKT0_RKT1_.exit481

_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i475: ; preds = %.critedge.i.i.i468
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %.not.i9.i.i476 = icmp eq ptr %.sroa.018.034.i.i.i464, %.sroa.0.0.lcssa.ph.i.i.i469
  br i1 %.not.i9.i.i476, label %_ZN5boost9algorithm11replace_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS7_EEvRT_RKT0_RKT1_.exit481, label %bb.cv

bb.cv:                                            ; preds = %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i475
  store ptr %i.od, ptr %9, align 8
  %.sroa.34.0..sroa_idx.i.i.i477 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.oe, ptr %.sroa.34.0..sroa_idx.i.i.i477, align 8
  invoke void @_ZN5boost9algorithm6detail21find_format_all_impl2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13first_finderFIPKcNS0_8is_equalEEENS1_13const_formatFINS_14iterator_rangeIN9__gnu_cxx17__normal_iteratorISB_S8_EEEEEENSF_INSH_IPcS8_EEEESJ_EEvRT_T0_T1_T2_T3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull byval(%"struct.boost::algorithm::detail::first_finderF") align 8 %10, ptr %i.od, ptr %i.oe, ptr %.sroa.018.034.i.i.i464, ptr nonnull %.sroa.0.0.lcssa.ph.i.i.i469, ptr noundef nonnull byval(%"class.boost::iterator_range") align 8 %9)
          to label %_ZN5boost9algorithm11replace_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS7_EEvRT_RKT0_RKT1_.exit481 unwind label %bb.ap

_ZN5boost9algorithm11replace_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS7_EEvRT_RKT0_RKT1_.exit481: ; preds = %bb.cv, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i474, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i475
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.cw

bb.cw:                                            ; preds = %_ZN5boost9algorithm11replace_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS7_EEvRT_RKT0_RKT1_.exit481, %bb.ci
  %i.oq = load ptr, ptr @_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE33fractional_seconds_or_none_formatE, align 8, !tbaa !42 ; 2 uses
  %i.or = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.oq) #28
  %i.os = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull %i.oq, i64 noundef 0, i64 noundef %i.or) #28
  %.not86 = icmp eq i64 %i.os, -1
  br i1 %.not86, label %bb.ds, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #28
  %i.ot = load i64, ptr %5, align 8, !tbaa !155   ; 3 uses
  %i.ou = add i64 %i.ot, -9223372036854775806
  %spec.select.i.i.i.i482 = icmp ult i64 %i.ou, 3
  br i1 %spec.select.i.i.i.i482, label %_ZNK5boost9date_time9base_timeINS_10posix_time5ptimeENS0_19counted_time_systemINS0_16counted_time_repINS2_33millisec_posix_time_system_configEEEEEE11time_of_dayEv.exit487.thread, label %_ZNK5boost9date_time9base_timeINS_10posix_time5ptimeENS0_19counted_time_systemINS0_16counted_time_repINS2_33millisec_posix_time_system_configEEEEEE11time_of_dayEv.exit487

_ZNK5boost9date_time9base_timeINS_10posix_time5ptimeENS0_19counted_time_systemINS0_16counted_time_repINS2_33millisec_posix_time_system_configEEEEEE11time_of_dayEv.exit487.thread: ; preds = %bb.cx
  %i.ov = srem i64 %i.ot, 1000000
  br label %bb.cz

_ZNK5boost9date_time9base_timeINS_10posix_time5ptimeENS0_19counted_time_systemINS0_16counted_time_repINS2_33millisec_posix_time_system_configEEEEEE11time_of_dayEv.exit487: ; preds = %bb.cx
  %i.ow = srem i64 %i.ot, 86400000000
  %i.ox = srem i64 %i.ow, 1000000                 ; 2 uses
  %i.oy = icmp eq i64 %i.ox, 0
  br i1 %i.oy, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %_ZNK5boost9date_time9base_timeINS_10posix_time5ptimeENS0_19counted_time_systemINS0_16counted_time_repINS2_33millisec_posix_time_system_configEEEEEE11time_of_dayEv.exit487
  %i.oz = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  store ptr %i.oz, ptr %32, align 8, !tbaa !35, !alias.scope !782
  %i.pa = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 0, ptr %i.pa, align 8, !tbaa !41, !alias.scope !782
  store i8 0, ptr %i.oz, align 8, !tbaa !40, !alias.scope !782
  br label %_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE28fractional_seconds_as_stringB5cxx11ERKNS2_13time_durationEb.exit491

bb.cz:                                            ; preds = %_ZNK5boost9date_time9base_timeINS_10posix_time5ptimeENS0_19counted_time_systemINS0_16counted_time_repINS2_33millisec_posix_time_system_configEEEEEE11time_of_dayEv.exit487.thread, %_ZNK5boost9date_time9base_timeINS_10posix_time5ptimeENS0_19counted_time_systemINS0_16counted_time_repINS2_33millisec_posix_time_system_configEEEEEE11time_of_dayEv.exit487
  %i.pb = phi i64 [ %i.ov, %_ZNK5boost9date_time9base_timeINS_10posix_time5ptimeENS0_19counted_time_systemINS0_16counted_time_repINS2_33millisec_posix_time_system_configEEEEEE11time_of_dayEv.exit487.thread ], [ %i.ox, %_ZNK5boost9date_time9base_timeINS_10posix_time5ptimeENS0_19counted_time_systemINS0_16counted_time_repINS2_33millisec_posix_time_system_configEEEEEE11time_of_dayEv.exit487 ]
  %i.pc = call noundef i64 @llvm.abs.i64(i64 %i.pb, i1 true)
  invoke void @_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE18integral_as_stringIlEENSt7__cxx1112basic_stringIcS6_SaIcEEET_i(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %32, i64 noundef %i.pc, i32 noundef 6)
          to label %_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE28fractional_seconds_as_stringB5cxx11ERKNS2_13time_durationEb.exit491 unwind label %bb.dm

_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE28fractional_seconds_as_stringB5cxx11ERKNS2_13time_durationEb.exit491: ; preds = %bb.cy, %bb.cz
  %i.pd = load ptr, ptr %23, align 8, !tbaa !39   ; 6 uses
  %i.pe = icmp eq ptr %i.pd, %i.am
  %i.pf = load ptr, ptr %32, align 8, !tbaa !39   ; 5 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 4 uses
  %i.ph = icmp eq ptr %i.pf, %i.pg                ; 2 uses
  br i1 %i.pe, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i497, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i492

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i497: ; preds = %_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE28fractional_seconds_as_stringB5cxx11ERKNS2_13time_durationEb.exit491
  br i1 %i.ph, label %bb.da, label %.thread.i498

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i492: ; preds = %_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE28fractional_seconds_as_stringB5cxx11ERKNS2_13time_durationEb.exit491
  br i1 %i.ph, label %bb.da, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i493

bb.da:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i492, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i497
  %i.pi = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !41 ; 3 uses
  %i.pk = icmp ult i64 %i.pj, 16
  call void @llvm.assume(i1 %i.pk)
  switch i64 %i.pj, label %bb.dc [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i495
    i64 1, label %bb.db
  ]

bb.db:                                            ; preds = %bb.da
  %i.pl = load i8, ptr %i.pf, align 1, !tbaa !40
  store i8 %i.pl, ptr %i.pd, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i495

bb.dc:                                            ; preds = %bb.da
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pd, ptr align 1 %i.pf, i64 %i.pj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i495

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i495: ; preds = %bb.dc, %bb.db, %bb.da
  %i.pm = load i64, ptr %i.pi, align 8, !tbaa !41 ; 2 uses
  store i64 %i.pm, ptr %i.an, align 8, !tbaa !41
  %i.pn = load ptr, ptr %23, align 8, !tbaa !39
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.pm
  store i8 0, ptr %i.po, align 1, !tbaa !40
  %.pre.i496 = load ptr, ptr %32, align 8, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit499

.thread.i498:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i497
  store ptr %i.pf, ptr %23, align 8, !tbaa !39
  %i.pp = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.pq = load <2 x i64>, ptr %i.pp, align 8, !tbaa !40
  store <2 x i64> %i.pq, ptr %i.an, align 8, !tbaa !40
  br label %bb.de

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i493: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i492
  %i.pr = load i64, ptr %i.am, align 8, !tbaa !40
  store ptr %i.pf, ptr %23, align 8, !tbaa !39
  %i.ps = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.pt = load <2 x i64>, ptr %i.ps, align 8, !tbaa !40
  store <2 x i64> %i.pt, ptr %i.an, align 8, !tbaa !40
  %.not.i494 = icmp eq ptr %i.pd, null
  br i1 %.not.i494, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i493
  store ptr %i.pd, ptr %32, align 8, !tbaa !39
  store i64 %i.pr, ptr %i.pg, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit499

bb.de:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i493, %.thread.i498
  store ptr %i.pg, ptr %32, align 8, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit499

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit499: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i495, %bb.dd, %bb.de
  %i.pu = phi ptr [ %.pre.i496, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i495 ], [ %i.pd, %bb.dd ], [ %i.pg, %bb.de ]
  %i.pv = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 0, ptr %i.pv, align 8, !tbaa !41
  store i8 0, ptr %i.pu, align 1, !tbaa !40
  %i.pw = load ptr, ptr %32, align 8, !tbaa !39   ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.py = icmp eq ptr %i.pw, %i.px
  br i1 %i.py, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit502, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i500

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i500: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit499
  %i.pz = load i64, ptr %i.px, align 8, !tbaa !40
  %i.qa = add i64 %i.pz, 1
  call void @_ZdlPvm(ptr noundef %i.pw, i64 noundef %i.qa) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit502

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit502: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit499, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i500
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  %i.qb = load i64, ptr %i.an, align 8, !tbaa !41
  %i.qc = icmp eq i64 %i.qb, 0
  br i1 %i.qc, label %bb.dp, label %bb.df

bb.df:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit502
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28
  %i.qd = getelementptr inbounds nuw i8, ptr %3, i64 208
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull align 8 dereferenceable(8) %i.qd) #28
  %i.qe = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt7__cxx118numpunctIcE2idE) #28
  %i.qf = load ptr, ptr %33, align 8, !tbaa !223
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !228
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.qh, i64 %i.qe
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !230 ; 3 uses
  %.not.not.i503 = icmp eq ptr %i.qj, null
  br i1 %.not.not.i503, label %bb.dg, label %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit505

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZSt16__throw_bad_castv() #29
          to label %.noexc504 unwind label %bb.dn

.noexc504:                                        ; preds = %bb.dg
  unreachable

_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit505: ; preds = %bb.df
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !65
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  %i.qm = load ptr, ptr %i.ql, align 8
  %i.qn = invoke noundef signext i8 %i.qm(ptr noundef nonnull align 8 dereferenceable(24) %i.qj)
          to label %bb.dh unwind label %bb.dn, !inline_history !740

bb.dh:                                            ; preds = %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit505
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  %i.qo = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 6 uses
  store ptr %i.qo, ptr %34, align 8, !tbaa !35
  %i.qp = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  store i8 %i.qn, ptr %i.qo, align 8, !tbaa !40
  store i64 1, ptr %i.qp, align 8, !tbaa !41
  %i.qq = getelementptr inbounds nuw i8, ptr %34, i64 17
  store i8 0, ptr %i.qq, align 1, !tbaa !40
  %i.qr = load i64, ptr %i.an, align 8, !tbaa !41 ; 2 uses
  %i.qs = icmp ugt i64 %i.qr, 4611686018427387902
  br i1 %i.qs, label %bb.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i514

bb.di:                                            ; preds = %bb.dh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.74) #29
          to label %.noexc515 unwind label %bb.do

.noexc515:                                        ; preds = %bb.di
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i514: ; preds = %bb.dh
  %i.qt = load ptr, ptr %23, align 8, !tbaa !39
  %i.qu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef %i.qt, i64 noundef %i.qr)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit517 unwind label %bb.do ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit517: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i514
  %i.qv = load ptr, ptr @_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE33fractional_seconds_or_none_formatE, align 8, !tbaa !42, !noalias !783 ; 4 uses
  %i.qw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.qv) #33, !noalias !783 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qv, i64 %i.qw ; 3 uses
  %i.qy = load ptr, ptr %34, align 8, !tbaa !39   ; 5 uses
  %i.qz = load i64, ptr %i.qp, align 8, !tbaa !41
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 %i.qz ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.qv, ptr %8, align 8
  %.sroa.2.0..sroa_idx.i518 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.qx, ptr %.sroa.2.0..sroa_idx.i518, align 8
  %i.rb = load ptr, ptr %22, align 8, !tbaa !39   ; 2 uses
  %i.rc = load i64, ptr %i.x, align 8, !tbaa !41  ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rb, i64 %i.rc ; 2 uses
  %.not2633.i.i.i519 = icmp samesign eq i64 %i.rc, 0
  %i.re = icmp samesign eq i64 %i.qw, 0
  %or.cond.i520 = select i1 %.not2633.i.i.i519, i1 true, i1 %i.re
  br i1 %or.cond.i520, label %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i532, label %.lr.ph.preheader.i.i.i521

.lr.ph.preheader.i.i.i521:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit517, %.critedge15.i.i.i530
  %.sroa.018.034.i.i.i522 = phi ptr [ %i.rl, %.critedge15.i.i.i530 ], [ %i.rb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit517 ] ; 4 uses
  br label %.lr.ph.i.i.i523

.lr.ph.i.i.i523:                                  ; preds = %bb.dj, %.lr.ph.preheader.i.i.i521
  %.01228.i.i.i524 = phi ptr [ %i.rj, %bb.dj ], [ %i.qv, %.lr.ph.preheader.i.i.i521 ] ; 3 uses
  %.sroa.0.027.i.i.i525 = phi ptr [ %i.ri, %bb.dj ], [ %.sroa.018.034.i.i.i522, %.lr.ph.preheader.i.i.i521 ] ; 3 uses
  %i.rf = load i8, ptr %.sroa.0.027.i.i.i525, align 1, !tbaa !40
  %i.rg = load i8, ptr %.01228.i.i.i524, align 1, !tbaa !40
  %i.rh = icmp eq i8 %i.rf, %i.rg
  br i1 %i.rh, label %bb.dj, label %.critedge.i.i.i526

bb.dj:                                            ; preds = %.lr.ph.i.i.i523
  %i.ri = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i.i525, i64 1 ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %.01228.i.i.i524, i64 1 ; 3 uses
  %i.rk = icmp eq ptr %i.ri, %i.rd
  %.not.i.i.i536 = icmp eq ptr %i.rj, %i.qx
  %or.cond.i.i.i537 = select i1 %i.rk, i1 true, i1 %.not.i.i.i536
  br i1 %or.cond.i.i.i537, label %.critedge.i.i.i526, label %.lr.ph.i.i.i523, !llvm.loop !16

.critedge.i.i.i526:                               ; preds = %bb.dj, %.lr.ph.i.i.i523
  %.sroa.0.0.lcssa.ph.i.i.i527 = phi ptr [ %.sroa.0.027.i.i.i525, %.lr.ph.i.i.i523 ], [ %i.ri, %bb.dj ] ; 2 uses
  %.012.lcssa.ph.i.i.i528 = phi ptr [ %.01228.i.i.i524, %.lr.ph.i.i.i523 ], [ %i.rj, %bb.dj ]
  %.not13.i.i.i529 = icmp eq ptr %.012.lcssa.ph.i.i.i528, %i.qx
  br i1 %.not13.i.i.i529, label %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i533, label %.critedge15.i.i.i530

.critedge15.i.i.i530:                             ; preds = %.critedge.i.i.i526
  %i.rl = getelementptr inbounds nuw i8, ptr %.sroa.018.034.i.i.i522, i64 1 ; 2 uses
  %.not26.i.i.i531 = icmp eq ptr %i.rl, %i.rd
  br i1 %.not26.i.i.i531, label %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i532, label %.lr.ph.preheader.i.i.i521, !llvm.loop !15

_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i532: ; preds = %.critedge15.i.i.i530, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit517
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  br label %bb.dl

_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i533: ; preds = %.critedge.i.i.i526
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %.not.i9.i.i534 = icmp eq ptr %.sroa.018.034.i.i.i522, %.sroa.0.0.lcssa.ph.i.i.i527
  br i1 %.not.i9.i.i534, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i533
  store ptr %i.qy, ptr %7, align 8
  %.sroa.34.0..sroa_idx.i.i.i535 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ra, ptr %.sroa.34.0..sroa_idx.i.i.i535, align 8
  invoke void @_ZN5boost9algorithm6detail21find_format_all_impl2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13first_finderFIPKcNS0_8is_equalEEENS1_13const_formatFINS_14iterator_rangeIN9__gnu_cxx17__normal_iteratorISB_S8_EEEEEENSF_INSH_IPcS8_EEEESJ_EEvRT_T0_T1_T2_T3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull byval(%"struct.boost::algorithm::detail::first_finderF") align 8 %8, ptr %i.qy, ptr %i.ra, ptr %.sroa.018.034.i.i.i522, ptr nonnull %.sroa.0.0.lcssa.ph.i.i.i527, ptr noundef nonnull byval(%"class.boost::iterator_range") align 8 %7)
          to label %._crit_edge693 unwind label %bb.do

._crit_edge693:                                   ; preds = %bb.dk
  %.pre694 = load ptr, ptr %34, align 8, !tbaa !39
  br label %bb.dl

bb.dl:                                            ; preds = %._crit_edge693, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i533, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i532
  %i.rm = phi ptr [ %.pre694, %._crit_edge693 ], [ %i.qy, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i533 ], [ %i.qy, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.thread.i.i532 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.rn = icmp eq ptr %i.rm, %i.qo
  br i1 %i.rn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540: ; preds = %bb.dl
  %i.ro = load i64, ptr %i.qo, align 8, !tbaa !40
  %i.rp = add i64 %i.ro, 1
  call void @_ZdlPvm(ptr noundef %i.rm, i64 noundef %i.rp) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542: ; preds = %bb.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  br label %bb.ds

bb.dm:                                            ; preds = %bb.cz
  %i.rq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  br label %bb.ea

bb.dn:                                            ; preds = %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit505, %bb.dg
  %i.rr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  br label %bb.ea

bb.do:                                            ; preds = %bb.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i514, %bb.di
  %i.rs = landingpad { ptr, i32 }
          cleanup
  %i.rt = load ptr, ptr %34, align 8, !tbaa !39   ; 2 uses
  %i.ru = icmp eq ptr %i.rt, %i.qo
  br i1 %i.ru, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i543

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i543: ; preds = %bb.do
  %i.rv = load i64, ptr %i.qo, align 8, !tbaa !40
  %i.rw = add i64 %i.rv, 1
  call void @_ZdlPvm(ptr noundef %i.rt, i64 noundef %i.rw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545: ; preds = %bb.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i543
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  br label %bb.ea

bb.dp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit502
  %i.rx = load ptr, ptr @_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE33fractional_seconds_or_none_formatE, align 8, !tbaa !42, !noalias !784 ; 4 uses
  %i.ry = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.rx) #33, !noalias !784 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rx, i64 %i.ry ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.rx, ptr %6, align 8
  %.sroa.2.0..sroa_idx.i546 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.rz, ptr %.sroa.2.0..sroa_idx.i546, align 8
  %i.sa = load ptr, ptr %22, align 8, !tbaa !39   ; 2 uses
  %i.sb = load i64, ptr %i.x, align 8, !tbaa !41  ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sa, i64 %i.sb ; 2 uses
  %.not2633.i.i.i547 = icmp samesign eq i64 %i.sb, 0
  %i.sd = icmp samesign eq i64 %i.ry, 0
  %or.cond.i548 = select i1 %.not2633.i.i.i547, i1 true, i1 %i.sd
  br i1 %or.cond.i548, label %_ZN5boost9algorithm9erase_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEvRT_RKT0_.exit565, label %.lr.ph.preheader.i.i.i549

.lr.ph.preheader.i.i.i549:                        ; preds = %bb.dp, %.critedge15.i.i.i558
  %.sroa.018.034.i.i.i550 = phi ptr [ %i.sk, %.critedge15.i.i.i558 ], [ %i.sa, %bb.dp ] ; 4 uses
  br label %.lr.ph.i.i.i551

.lr.ph.i.i.i551:                                  ; preds = %bb.dq, %.lr.ph.preheader.i.i.i549
  %.01228.i.i.i552 = phi ptr [ %i.si, %bb.dq ], [ %i.rx, %.lr.ph.preheader.i.i.i549 ] ; 3 uses
  %.sroa.0.027.i.i.i553 = phi ptr [ %i.sh, %bb.dq ], [ %.sroa.018.034.i.i.i550, %.lr.ph.preheader.i.i.i549 ] ; 3 uses
  %i.se = load i8, ptr %.sroa.0.027.i.i.i553, align 1, !tbaa !40
  %i.sf = load i8, ptr %.01228.i.i.i552, align 1, !tbaa !40
  %i.sg = icmp eq i8 %i.se, %i.sf
  br i1 %i.sg, label %bb.dq, label %.critedge.i.i.i554

bb.dq:                                            ; preds = %.lr.ph.i.i.i551
  %i.sh = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i.i553, i64 1 ; 3 uses
  %i.si = getelementptr inbounds nuw i8, ptr %.01228.i.i.i552, i64 1 ; 3 uses
  %i.sj = icmp eq ptr %i.sh, %i.sc
  %.not.i.i.i562 = icmp eq ptr %i.si, %i.rz
  %or.cond.i.i.i563 = select i1 %i.sj, i1 true, i1 %.not.i.i.i562
  br i1 %or.cond.i.i.i563, label %.critedge.i.i.i554, label %.lr.ph.i.i.i551, !llvm.loop !16

.critedge.i.i.i554:                               ; preds = %bb.dq, %.lr.ph.i.i.i551
  %.sroa.0.0.lcssa.ph.i.i.i555 = phi ptr [ %.sroa.0.027.i.i.i553, %.lr.ph.i.i.i551 ], [ %i.sh, %bb.dq ] ; 2 uses
  %.012.lcssa.ph.i.i.i556 = phi ptr [ %.01228.i.i.i552, %.lr.ph.i.i.i551 ], [ %i.si, %bb.dq ]
  %.not13.i.i.i557 = icmp eq ptr %.012.lcssa.ph.i.i.i556, %i.rz
  br i1 %.not13.i.i.i557, label %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i560, label %.critedge15.i.i.i558

.critedge15.i.i.i558:                             ; preds = %.critedge.i.i.i554
  %i.sk = getelementptr inbounds nuw i8, ptr %.sroa.018.034.i.i.i550, i64 1 ; 2 uses
  %.not26.i.i.i559 = icmp eq ptr %i.sk, %i.sc
  br i1 %.not26.i.i.i559, label %_ZN5boost9algorithm9erase_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEvRT_RKT0_.exit565, label %.lr.ph.preheader.i.i.i549, !llvm.loop !15

_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i560: ; preds = %.critedge.i.i.i554
  %.not.i5.i.i561 = icmp eq ptr %.sroa.018.034.i.i.i550, %.sroa.0.0.lcssa.ph.i.i.i555
  br i1 %.not.i5.i.i561, label %_ZN5boost9algorithm9erase_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEvRT_RKT0_.exit565, label %bb.dr

bb.dr:                                            ; preds = %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i560
  invoke void @_ZN5boost9algorithm6detail21find_format_all_impl2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13first_finderFIPKcNS0_8is_equalEEENS1_13empty_formatFIcEENS_14iterator_rangeIN9__gnu_cxx17__normal_iteratorIPcS8_EEEENS1_15empty_containerIcEEEEvRT_T0_T1_T2_T3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull byval(%"struct.boost::algorithm::detail::first_finderF") align 8 %6, ptr %.sroa.018.034.i.i.i550, ptr nonnull %.sroa.0.0.lcssa.ph.i.i.i555)
          to label %_ZN5boost9algorithm9erase_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEvRT_RKT0_.exit565 unwind label %bb.ap

_ZN5boost9algorithm9erase_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEvRT_RKT0_.exit565: ; preds = %.critedge15.i.i.i558, %bb.dr, %bb.dp, %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i560
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.ds

bb.ds:                                            ; preds = %_ZN5boost9algorithm9erase_allINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEvRT_RKT0_.exit565, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542, %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #28
  invoke void @_ZN5boost10posix_time5to_tmERKNS0_5ptimeE(ptr dead_on_unwind nonnull writable sret(%struct.tm) align 8 %35, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.dt unwind label %bb.dy

bb.dt:                                            ; preds = %bb.ds
  %i.sl = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 7 uses
  store ptr %i.sl, ptr %36, align 8, !tbaa !35
  %i.sm = load ptr, ptr %22, align 8, !tbaa !39   ; 2 uses
  %i.sn = load i64, ptr %i.x, align 8, !tbaa !41  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.sn, ptr %i.a, align 8, !tbaa !37
  %i.so = icmp ugt i64 %i.sn, 15
  br i1 %i.so, label %.noexc.i567, label %._crit_edge.i.i566

.noexc.i567:                                      ; preds = %bb.dt
  %i.sp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc568 unwind label %bb.dy ; 2 uses

.noexc568:                                        ; preds = %.noexc.i567
  store ptr %i.sp, ptr %36, align 8, !tbaa !39
  %i.sq = load i64, ptr %i.a, align 8, !tbaa !37
  store i64 %i.sq, ptr %i.sl, align 8, !tbaa !40
  br label %._crit_edge.i.i566

._crit_edge.i.i566:                               ; preds = %.noexc568, %bb.dt
  %i.sr = phi ptr [ %i.sp, %.noexc568 ], [ %i.sl, %bb.dt ] ; 2 uses
  switch i64 %i.sn, label %bb.dv [
    i64 1, label %bb.du
    i64 0, label %bb.dw
  ]

bb.du:                                            ; preds = %._crit_edge.i.i566
  %i.ss = load i8, ptr %i.sm, align 1, !tbaa !40
  store i8 %i.ss, ptr %i.sr, align 1, !tbaa !40
  br label %bb.dw

bb.dv:                                            ; preds = %._crit_edge.i.i566
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sr, ptr align 1 %i.sm, i64 %i.sn, i1 false)
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du, %._crit_edge.i.i566
  %i.st = load i64, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 %i.st, ptr %i.su, align 8, !tbaa !41
  %i.sv = load ptr, ptr %36, align 8, !tbaa !39
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.st
  store i8 0, ptr %i.sw, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.sx = load ptr, ptr %0, align 8, !tbaa !65
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 40
  %i.sz = load ptr, ptr %i.sy, align 8
  %i.ta = invoke { ptr, i8 } %i.sz(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr %1, i8 %2, ptr noundef nonnull align 8 dereferenceable(216) %3, i8 noundef signext %4, ptr noundef nonnull align 8 dereferenceable(56) %35, ptr noundef nonnull align 8 %36)
          to label %bb.dx unwind label %bb.dz

bb.dx:                                            ; preds = %bb.dw
  %i.tb = load ptr, ptr %36, align 8, !tbaa !39   ; 2 uses
  %i.tc = icmp eq ptr %i.tb, %i.sl
  br i1 %i.tc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i570

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i570: ; preds = %bb.dx
  %i.td = load i64, ptr %i.sl, align 8, !tbaa !40
  %i.te = add i64 %i.td, 1
  call void @_ZdlPvm(ptr noundef %i.tb, i64 noundef %i.te) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572: ; preds = %bb.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i570
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  %i.tf = load ptr, ptr %23, align 8, !tbaa !39   ; 2 uses
  %i.tg = icmp eq ptr %i.tf, %i.am
  br i1 %i.tg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit575, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i573

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i573: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572
  %i.th = load i64, ptr %i.am, align 8, !tbaa !40
  %i.ti = add i64 %i.th, 1
  call void @_ZdlPvm(ptr noundef %i.tf, i64 noundef %i.ti) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit575

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit575: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i573
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  %i.tj = load ptr, ptr %22, align 8, !tbaa !39   ; 2 uses
  %i.tk = icmp eq ptr %i.tj, %i.n
  br i1 %i.tk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i576

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i576: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit575
  %i.tl = load i64, ptr %i.n, align 8, !tbaa !40
  %i.tm = add i64 %i.tl, 1
  call void @_ZdlPvm(ptr noundef %i.tj, i64 noundef %i.tm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit575, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i576
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %bb.ec

bb.dy:                                            ; preds = %.noexc.i567, %bb.ds
  %i.tn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581

bb.dz:                                            ; preds = %bb.dw
  %i.to = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tp = load ptr, ptr %36, align 8, !tbaa !39   ; 2 uses
  %i.tq = icmp eq ptr %i.tp, %i.sl
  br i1 %i.tq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579: ; preds = %bb.dz
  %i.tr = load i64, ptr %i.sl, align 8, !tbaa !40
  %i.ts = add i64 %i.tr, 1
  call void @_ZdlPvm(ptr noundef %i.tp, i64 noundef %i.ts) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581: ; preds = %bb.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579, %bb.dy
  %.pn89 = phi { ptr, i32 } [ %i.tn, %bb.dy ], [ %i.to, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579 ], [ %i.to, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545, %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581, %bb.dm, %bb.cs, %bb.bz, %bb.bh, %bb.ap, %bb.ah
  %.pn89.pn = phi { ptr, i32 } [ %.pn89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581 ], [ %i.ff, %bb.ap ], [ %i.eh, %bb.ai ], [ %i.rq, %bb.dm ], [ %i.ny, %bb.cs ], [ %i.rs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545 ], [ %.pn68.pn.pn, %bb.bh ], [ %i.eg, %bb.ah ], [ %.pn61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158 ], [ %.pn75.pn.pn, %bb.bz ], [ %i.rr, %bb.dn ]
  %i.tt = load ptr, ptr %23, align 8, !tbaa !39   ; 2 uses
  %i.tu = icmp eq ptr %i.tt, %i.am
  br i1 %i.tu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit584, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i582

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i582: ; preds = %bb.ea
  %i.tv = load i64, ptr %i.am, align 8, !tbaa !40
  %i.tw = add i64 %i.tv, 1
  call void @_ZdlPvm(ptr noundef %i.tt, i64 noundef %i.tw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit584

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit584: ; preds = %bb.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i582
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit584
  %.pn89.pn.pn = phi { ptr, i32 } [ %.pn89.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit584 ], [ %i.ef, %bb.ag ]
  %i.tx = load ptr, ptr %22, align 8, !tbaa !39   ; 2 uses
  %i.ty = icmp eq ptr %i.tx, %i.n
  br i1 %i.ty, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit587, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i585

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i585: ; preds = %bb.eb
  %i.tz = load i64, ptr %i.n, align 8, !tbaa !40
  %i.ua = add i64 %i.tz, 1
  call void @_ZdlPvm(ptr noundef %i.tx, i64 noundef %i.ua) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit587

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit587: ; preds = %bb.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i585
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  resume { ptr, i32 } %.pn89.pn.pn

bb.ec:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578, %_ZNK5boost9date_time4dateINS_9gregorian4dateENS2_18gregorian_calendarENS2_13date_durationEE10as_specialEv.exit
  %.pn93 = phi { ptr, i8 } [ %i.l, %_ZNK5boost9date_time4dateINS_9gregorian4dateENS2_18gregorian_calendarENS2_13date_durationEE10as_specialEv.exit ], [ %i.ta, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578 ]
  ret { ptr, i8 } %.pn93
}

declare void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost10posix_time5to_tmERKNS0_5ptimeE(ptr dead_on_unwind noalias writable sret(%struct.tm) align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.boost::gregorian::date", align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = load i64, ptr %1, align 8, !tbaa !155    ; 3 uses
  %i.b = add i64 %i.a, -9223372036854775806
  %spec.select.i.i.i.i = icmp ult i64 %i.b, 3
  br i1 %spec.select.i.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  switch i64 %i.a, label %default.unreachable.i.i.i [
    i64 9223372036854775806, label %_ZN5boost9date_time11int_adapterIjE12from_specialENS0_14special_valuesE.exit.fold.split.i.i.i.i.i
    i64 -9223372036854775808, label %_ZNK5boost9date_time9base_timeINS_10posix_time5ptimeENS0_19counted_time_systemINS0_16counted_time_repINS2_33millisec_posix_time_system_configEEEEEE4dateEv.exit
    i64 9223372036854775807, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %_ZNK5boost9date_time9base_timeINS_10posix_time5ptimeENS0_19counted_time_systemINS0_16counted_time_repINS2_33millisec_posix_time_system_configEEEEEE4dateEv.exit

default.unreachable.i.i.i:                        ; preds = %bb.b
  unreachable

_ZN5boost9date_time11int_adapterIjE12from_specialENS0_14special_valuesE.exit.fold.split.i.i.i.i.i: ; preds = %bb.b
  br label %_ZNK5boost9date_time9base_timeINS_10posix_time5ptimeENS0_19counted_time_systemINS0_16counted_time_repINS2_33millisec_posix_time_system_configEEEEEE4dateEv.exit

bb.d:                                             ; preds = %bb.a
  %i.c = sdiv i64 %i.a, 86400000000
  %i.d = trunc nsw i64 %i.c to i32
  %i.e = tail call i48 @_ZN5boost9date_time23gregorian_calendar_baseINS0_19year_month_day_baseINS_9gregorian9greg_yearENS3_10greg_monthENS3_8greg_dayEEEjE15from_day_numberEj(i32 noundef %i.d) ; 3 uses
  %.sroa.0.0.extract.trunc.i.i.i = trunc i48 %i.e to i32
  %.sroa.4.0.extract.shift.i.i.i = lshr i48 %i.e, 16
  %.sroa.4.0.extract.trunc.i.i.i = trunc nuw i48 %.sroa.4.0.extract.shift.i.i.i to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i.i = lshr i48 %i.e, 32
  %.sroa.5.0.extract.trunc.i.i.i = trunc nuw nsw i48 %.sroa.5.0.extract.shift.i.i.i to i32
  %i.f = and i32 %.sroa.4.0.extract.trunc.i.i.i, 65535
  %i.g = sub nsw i32 14, %i.f
  %i.h = sdiv i32 %i.g, 12                        ; 2 uses
  %i.i = add i32 %.sroa.0.0.extract.trunc.i.i.i, 4800
  %i.j = sub i32 %i.i, %i.h                       ; 2 uses
  %i.k = mul nsw i32 %i.h, 12
  %i.l = add i32 %.sroa.4.0.extract.trunc.i.i.i, 65533
  %i.m = add i32 %i.l, %i.k
  %i.n = and i32 %i.m, 65535
  %i.o = mul nuw nsw i32 %i.n, 153
  %i.p = add nuw nsw i32 %i.o, 2
  %i.q = udiv i32 %i.p, 5
  %i.r = and i32 %i.j, 65535                      ; 2 uses
  %i.s = mul nuw nsw i32 %i.r, 365
  %i.t = lshr i32 %i.r, 2
  %.lhs.trunc.i.i.i.i.i.i = trunc i32 %i.j to i16 ; 2 uses
  %i.u = udiv i16 %.lhs.trunc.i.i.i.i.i.i, 100
  %.zext.i.i.i.i.i.i = zext nneg i16 %i.u to i32
  %i.v = udiv i16 %.lhs.trunc.i.i.i.i.i.i, 400
  %.zext12.i.i.i.i.i.i = zext nneg i16 %i.v to i32
  %i.w = add nsw i32 %.sroa.5.0.extract.trunc.i.i.i, -32045
  %i.x = add nsw i32 %i.w, %i.s
  %i.y = add nsw i32 %i.x, %i.t
  %i.z = sub nsw i32 %i.y, %.zext.i.i.i.i.i.i
  %i.aa = add nsw i32 %i.z, %.zext12.i.i.i.i.i.i
  %i.ab = add nsw i32 %i.aa, %i.q
  br label %_ZNK5boost9date_time9base_timeINS_10posix_time5ptimeENS0_19counted_time_systemINS0_16counted_time_repINS2_33millisec_posix_time_system_configEEEEEE4dateEv.exit

_ZNK5boost9date_time9base_timeINS_10posix_time5ptimeENS0_19counted_time_systemINS0_16counted_time_repINS2_33millisec_posix_time_system_configEEEEEE4dateEv.exit: ; preds = %bb.b, %bb.c, %_ZN5boost9date_time11int_adapterIjE12from_specialENS0_14special_valuesE.exit.fold.split.i.i.i.i.i, %bb.d
  %.sroa.01.0.i.i.i = phi i32 [ %i.ab, %bb.d ], [ -2, %_ZN5boost9date_time11int_adapterIjE12from_specialENS0_14special_valuesE.exit.fold.split.i.i.i.i.i ], [ -1, %bb.c ], [ 0, %bb.b ]
  store i32 %.sroa.01.0.i.i.i, ptr %2, align 4
  call void @_ZN5boost9gregorian5to_tmERKNS0_4dateE(ptr dead_on_unwind writable sret(%struct.tm) align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.ac = load i64, ptr %1, align 8, !tbaa !155   ; 3 uses
  %i.ad = add i64 %i.ac, -9223372036854775806
  %spec.select.i.i.i.i2 = icmp ult i64 %i.ad, 3
  %i.ae = srem i64 %i.ac, 86400000000
  %.sroa.04.0.i.i = select i1 %spec.select.i.i.i.i2, i64 %i.ac, i64 %i.ae ; 3 uses
  %i.af = sdiv i64 %.sroa.04.0.i.i, 3600000000
  %i.ag = trunc i64 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !272
  %i.ai = sdiv i64 %.sroa.04.0.i.i, 60000000
  %i.aj = srem i64 %i.ai, 60
  %i.ak = trunc nsw i64 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !273
  %i.am = sdiv i64 %.sroa.04.0.i.i, 1000000
  %i.an = srem i64 %i.am, 60
  %i.ao = trunc nsw i64 %i.an to i32
  store i32 %i.ao, ptr %0, align 8, !tbaa !274
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -1, ptr %i.ap, align 8, !tbaa !275
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9algorithm6detail21find_format_all_impl2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13first_finderFIPKcNS0_8is_equalEEENS1_13const_formatFINS_14iterator_rangeISB_EEEENSF_IN9__gnu_cxx17__normal_iteratorIPcS8_EEEESG_EEvRT_T0_T1_T2_T3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef byval(%"struct.boost::algorithm::detail::first_finderF") align 8 %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr noundef byval(%"class.boost::iterator_range.160") align 8 %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.std::_Deque_iterator", align 8 ; 4 uses
  %8 = alloca %"struct.std::_Deque_iterator", align 8 ; 4 uses
  %9 = alloca %"struct.boost::algorithm::detail::process_segment_helper", align 1 ; 3 uses
  %10 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %11 = alloca %"struct.boost::algorithm::detail::process_segment_helper", align 1 ; 3 uses
  %12 = alloca %"class.std::deque", align 8       ; 22 uses
  %.sroa.10.16.copyload = load ptr, ptr %6, align 8
  %.sroa.13.16..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.13.16.copyload = load ptr, ptr %.sroa.13.16..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %12, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %12, i64 noundef 0)
  %i.a = load ptr, ptr %0, align 8, !tbaa !39     ; 5 uses
  %.not.i57 = icmp eq ptr %4, %5
  br i1 %.not.i57, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !41
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit
  %.sroa.017.063 = phi ptr [ %i.a, %.lr.ph ], [ %i.i, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit ]
  %.sroa.016.062 = phi ptr [ %i.a, %.lr.ph ], [ %.sroa.7.059, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit ]
  %.sroa.13.061 = phi ptr [ %.sroa.13.16.copyload, %.lr.ph ], [ %spec.select52, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit ] ; 2 uses
  %.sroa.10.060 = phi ptr [ %.sroa.10.16.copyload, %.lr.ph ], [ %spec.select, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit ] ; 2 uses
  %.sroa.7.059 = phi ptr [ %5, %.lr.ph ], [ %.sroa.0.0.lcssa.ph.i, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit ] ; 7 uses
  %.sroa.040.058 = phi ptr [ %4, %.lr.ph ], [ %.sroa.018.034.i, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.i = invoke ptr @_ZN5boost9algorithm6detail22process_segment_helperILb0EEclISt5dequeIcSaIcEENSt7__cxx1112basic_stringIcSt11char_traitsIcES6_EEN9__gnu_cxx17__normal_iteratorIPcSC_EEEET1_RT_RT0_SH_SH_SH_(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %.sroa.017.063, ptr %.sroa.016.062, ptr %.sroa.040.058)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !232, !noalias !795
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !233, !noalias !795 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.experimental.noalias.scope.decl(metadata !796)
  store ptr %i.j, ptr %10, align 8, !tbaa !232, !alias.scope !796, !noalias !797
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42, !noalias !798 ; 2 uses
  store ptr %i.l, ptr %i.d, align 8, !tbaa !234, !alias.scope !796, !noalias !797
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 512
  store ptr %i.m, ptr %i.e, align 8, !tbaa !235, !alias.scope !796, !noalias !797
  store ptr %i.k, ptr %i.f, align 8, !tbaa !233, !alias.scope !796, !noalias !797
  invoke void @_ZNSt5dequeIcSaIcEE19_M_range_insert_auxIPKcEEvSt15_Deque_iteratorIcRcPcET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef %.sroa.10.060, ptr noundef %.sroa.13.061)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.n = load ptr, ptr %0, align 8, !tbaa !39     ; 5 uses
  %i.o = load i64, ptr %i.g, align 8, !tbaa !41   ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o ; 3 uses
  %.not2633.i = icmp eq ptr %.sroa.7.059, %i.p
  br i1 %.not2633.i, label %._crit_edge, label %.lr.ph35.i

.lr.ph35.i:                                       ; preds = %bb.d
  %i.q = load ptr, ptr %1, align 8, !tbaa !237    ; 2 uses
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !238  ; 3 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %._crit_edge, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph35.i, %.critedge15.i
  %.sroa.018.034.i = phi ptr [ %i.z, %.critedge15.i ], [ %.sroa.7.059, %.lr.ph35.i ] ; 5 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %.01228.i = phi ptr [ %i.x, %bb.e ], [ %i.q, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.0.027.i = phi ptr [ %i.w, %bb.e ], [ %.sroa.018.034.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.t = load i8, ptr %.sroa.0.027.i, align 1, !tbaa !40
  %i.u = load i8, ptr %.01228.i, align 1, !tbaa !40
  %i.v = icmp eq i8 %i.t, %i.u
  br i1 %i.v, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 1 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01228.i, i64 1 ; 3 uses
  %i.y = icmp eq ptr %i.w, %i.p
  %.not.i33 = icmp eq ptr %i.x, %i.r
  %or.cond.i = select i1 %i.y, i1 true, i1 %.not.i33
  br i1 %or.cond.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !16

.critedge.i:                                      ; preds = %bb.e, %.lr.ph.i
  %.sroa.0.0.lcssa.ph.i = phi ptr [ %.sroa.0.027.i, %.lr.ph.i ], [ %i.w, %bb.e ] ; 3 uses
  %.012.lcssa.ph.i = phi ptr [ %.01228.i, %.lr.ph.i ], [ %i.x, %bb.e ]
  %.not13.i = icmp eq ptr %.012.lcssa.ph.i, %i.r
  br i1 %.not13.i, label %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit, label %.critedge15.i

.critedge15.i:                                    ; preds = %.critedge.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.018.034.i, i64 1 ; 2 uses
  %.not26.i = icmp eq ptr %i.z, %i.p
  br i1 %.not26.i, label %._crit_edge, label %.lr.ph.preheader.i, !llvm.loop !15

_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit: ; preds = %.critedge.i
  %i.aa = icmp eq ptr %.sroa.018.034.i, %.sroa.0.0.lcssa.ph.i ; 2 uses
  %spec.select = select i1 %i.aa, ptr %.sroa.10.060, ptr %2
  %spec.select52 = select i1 %i.aa, ptr %.sroa.13.061, ptr %3
  %.not.i = icmp eq ptr %.sroa.018.034.i, %.sroa.0.0.lcssa.ph.i
  br i1 %.not.i, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.lr.ph35.i, %bb.d, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit, %.critedge15.i, %.._crit_edge_crit_edge
  %i.ab = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.o, %.critedge15.i ], [ %i.o, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit ], [ %i.o, %bb.d ], [ %i.o, %.lr.ph35.i ]
  %i.ac = phi ptr [ %i.a, %.._crit_edge_crit_edge ], [ %i.n, %.critedge15.i ], [ %i.n, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit ], [ %i.n, %bb.d ], [ %i.n, %.lr.ph35.i ]
  %.sroa.016.0.lcssa = phi ptr [ %i.a, %.._crit_edge_crit_edge ], [ %.sroa.7.059, %.critedge15.i ], [ %.sroa.7.059, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit ], [ %.sroa.7.059, %bb.d ], [ %.sroa.7.059, %.lr.ph35.i ]
  %.sroa.017.0.lcssa = phi ptr [ %i.a, %.._crit_edge_crit_edge ], [ %i.i, %.critedge15.i ], [ %i.i, %_ZN5boost9algorithm6detail17find_format_storeIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_13const_formatFINS_14iterator_rangeIPKcEEEESH_EaSINSE_ISC_EEEERSJ_T_.exit ], [ %i.i, %bb.d ], [ %i.i, %.lr.ph35.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.af = invoke ptr @_ZN5boost9algorithm6detail22process_segment_helperILb0EEclISt5dequeIcSaIcEENSt7__cxx1112basic_stringIcSt11char_traitsIcES6_EEN9__gnu_cxx17__normal_iteratorIPcSC_EEEET1_RT_RT0_SH_SH_SH_(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %.sroa.017.0.lcssa, ptr %.sroa.016.0.lcssa, ptr %i.ae)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !232 ; 2 uses
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !232 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  %i.al = load ptr, ptr %0, align 8, !tbaa !39    ; 3 uses
  br i1 %i.ak, label %_ZN5boost9algorithm6detail5eraseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENT_8iteratorERS9_SA_SA_.exit, label %bb.g

_ZN5boost9algorithm6detail5eraseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENT_8iteratorERS9_SA_SA_.exit: ; preds = %bb.f
  %i.am = ptrtoint ptr %i.af to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 2 uses
  store i64 %i.ao, ptr %i.ad, align 8, !tbaa !41
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ao
  store i8 0, ptr %i.ap, align 1, !tbaa !40
  br label %bb.h

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %bb.b, %bb.g, %._crit_edge
  %lpad.loopexit.split-lp105 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt5dequeIcSaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  resume { ptr, i32 } %lpad.loopexit.split-lp105

bb.g:                                             ; preds = %bb.f
  %i.aq = load i64, ptr %i.ad, align 8, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !234, !noalias !799
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !234, !noalias !800
  %i.ax = getelementptr inbounds nuw i8, ptr %12, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.ay = load <2 x ptr>, ptr %i.au, align 8, !tbaa !70, !noalias !799
  %i.az = insertelement <4 x ptr> poison, ptr %i.aj, i64 0
  %i.ba = insertelement <4 x ptr> %i.az, ptr %i.at, i64 1
  %i.bb = shufflevector <2 x ptr> %i.ay, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bc = shufflevector <4 x ptr> %i.ba, <4 x ptr> %i.bb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.bc, ptr %7, align 8, !tbaa !70
  %i.bd = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !70, !noalias !800
  %i.be = insertelement <4 x ptr> poison, ptr %i.ai, i64 0
  %i.bf = insertelement <4 x ptr> %i.be, ptr %i.aw, i64 1
  %i.bg = shufflevector <2 x ptr> %i.bd, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bh = shufflevector <4 x ptr> %i.bf, <4 x ptr> %i.bg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.bh, ptr %8, align 8, !tbaa !70
  %i.bi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE19_M_replace_dispatchISt15_Deque_iteratorIcRcPcEEERS4_N9__gnu_cxx17__normal_iteratorIPKcS4_EESF_T_SG_St12__false_type(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %i.ar, ptr %i.ar, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8)
          to label %_ZN5boost9algorithm6detail6insertINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt15_Deque_iteratorIcRcPcEEEvRT_NSD_8iteratorET0_SG_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN5boost9algorithm6detail6insertINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt15_Deque_iteratorIcRcPcEEEvRT_NSD_8iteratorET0_SG_.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.h

bb.h:                                             ; preds = %_ZN5boost9algorithm6detail6insertINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt15_Deque_iteratorIcRcPcEEEvRT_NSD_8iteratorET0_SG_.exit, %_ZN5boost9algorithm6detail5eraseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENT_8iteratorERS9_SA_SA_.exit
  %i.bj = load ptr, ptr %12, align 8, !tbaa !240  ; 2 uses
  %.not.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i, label %_ZNSt5dequeIcSaIcEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !241 ; 2 uses
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !242 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = icmp ult ptr %i.bm, %i.bo
  br i1 %i.bp, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i ], [ %i.bm, %bb.i ] ; 3 uses
  %i.bq = load ptr, ptr %.06.i.i.i, align 8, !tbaa !42
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef 512) #31
  %i.br = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.bs = icmp ult ptr %.06.i.i.i, %i.bn
  br i1 %i.bs, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.loopexit.i.i, !llvm.loop !17

_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %12, align 8, !tbaa !240
  br label %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i.i

_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.loopexit.i.i, %bb.i
  %i.bt = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.loopexit.i.i ], [ %i.bj, %bb.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !243
  %i.bw = shl i64 %i.bv, 3
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #31
  br label %_ZNSt5dequeIcSaIcEED2Ev.exit

_ZNSt5dequeIcSaIcEED2Ev.exit:                     ; preds = %bb.h, %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIcSaIcEE19_M_range_insert_auxIPKcEEvSt15_Deque_iteratorIcRcPcET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef align 8 dead_on_return %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Deque_iterator", align 8 ; 4 uses
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 13 uses
  %i.d = sub i64 0, %i.c
  %i.e = load ptr, ptr %1, align 8, !tbaa !232    ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !244  ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !246, !noalias !833 ; 2 uses
  %i.k = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp ugt i64 %i.c, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = sub nuw i64 %i.c, %i.m
  tail call void @_ZNSt5dequeIcSaIcEE24_M_new_elements_at_frontEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.o), !noalias !833
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !232, !noalias !834 ; 2 uses
  %.pre7.i = load ptr, ptr %i.i, align 8, !tbaa !234, !noalias !834 ; 2 uses
  %.pre8.i = ptrtoint ptr %.pre.i to i64
  %.pre9.i = ptrtoint ptr %.pre7.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi10.i = phi i64 [ %.pre9.i, %bb.c ], [ %i.l, %bb.b ]
  %.pre-phi.i = phi i64 [ %.pre8.i, %bb.c ], [ %i.k, %bb.b ]
  %i.p = phi ptr [ %.pre7.i, %bb.c ], [ %i.j, %bb.b ]
  %i.q = phi ptr [ %.pre.i, %bb.c ], [ %i.g, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !235, !noalias !834
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !233, !noalias !834 ; 2 uses
  %i.v = add i64 %.pre-phi10.i, %i.c
  %i.w = sub i64 %.pre-phi.i, %i.v                ; 5 uses
  %i.x = icmp sgt i64 %i.w, -1
  br i1 %i.x, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.y = icmp samesign ult i64 %i.w, 512
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds i8, ptr %i.q, i64 %i.d
  br label %_ZNSt5dequeIcSaIcEE28_M_reserve_elements_at_frontEm.exit

bb.g:                                             ; preds = %bb.e
  %i.aa = lshr i64 %i.w, 9
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.ab = ashr i64 %i.w, 9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = phi i64 [ %i.aa, %bb.g ], [ %i.ab, %bb.h ] ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.ac ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !42, !noalias !834 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 512
  %i.ag = shl nsw i64 %i.ac, 9
  %i.ah = sub nsw i64 %i.w, %i.ag
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 %i.ah
  br label %_ZNSt5dequeIcSaIcEE28_M_reserve_elements_at_frontEm.exit

_ZNSt5dequeIcSaIcEE28_M_reserve_elements_at_frontEm.exit: ; preds = %bb.f, %bb.i
  %.sroa.655.0 = phi ptr [ %i.p, %bb.f ], [ %i.ae, %bb.i ] ; 2 uses
  %.sroa.956.0 = phi ptr [ %i.s, %bb.f ], [ %i.af, %bb.i ] ; 2 uses
  %.sroa.12.0 = phi ptr [ %i.u, %bb.f ], [ %i.ad, %bb.i ] ; 2 uses
  %storemerge.i.i.i.i = phi ptr [ %i.z, %bb.f ], [ %i.ai, %bb.i ] ; 2 uses
  %i.aj = icmp sgt i64 %i.c, 0
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKcSt15_Deque_iteratorIcRcPcEcET0_T_S7_S6_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt5dequeIcSaIcEE28_M_reserve_elements_at_frontEm.exit, %_ZNSt15_Deque_iteratorIcRcPcEpLEl.exit.i.i.i.i.i.i
  %.sroa.02.0.i.i.i.i.i = phi ptr [ %storemerge.i.i.i.i.i.i.i, %_ZNSt15_Deque_iteratorIcRcPcEpLEl.exit.i.i.i.i.i.i ], [ %storemerge.i.i.i.i, %_ZNSt5dequeIcSaIcEE28_M_reserve_elements_at_frontEm.exit ] ; 4 uses
  %.sroa.43.0.i.i.i.i.i = phi ptr [ %.sroa.43.1.i.i.i.i.i, %_ZNSt15_Deque_iteratorIcRcPcEpLEl.exit.i.i.i.i.i.i ], [ %.sroa.655.0, %_ZNSt5dequeIcSaIcEE28_M_reserve_elements_at_frontEm.exit ] ; 2 uses
  %.sroa.8.0.i.i.i.i.i = phi ptr [ %.sroa.8.1.i.i.i.i.i, %_ZNSt15_Deque_iteratorIcRcPcEpLEl.exit.i.i.i.i.i.i ], [ %.sroa.956.0, %_ZNSt5dequeIcSaIcEE28_M_reserve_elements_at_frontEm.exit ] ; 2 uses
  %.sroa.12.0.i.i.i.i.i = phi ptr [ %.sroa.12.1.i.i.i.i.i, %_ZNSt15_Deque_iteratorIcRcPcEpLEl.exit.i.i.i.i.i.i ], [ %.sroa.12.0, %_ZNSt5dequeIcSaIcEE28_M_reserve_elements_at_frontEm.exit ] ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE18integral_as_stringIlEENSt7__cxx1112basic_stringIcS6_SaIcEEET_i:bb.a
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !65
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef signext i8 %i.w(ptr noundef nonnull align 8 dereferenceable(570) %i.r, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i unwind label %bb.k, !inline_history !1021 ; 0 uses

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i: ; preds = %.noexc4, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  store i8 1, ptr %i.n, align 1, !tbaa !262
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  store i8 48, ptr %i.y, align 8, !tbaa !261
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %1)
          to label %_ZNSolsEl.exit unwind label %bb.k ; 0 uses

_ZNSolsEl.exit:                                   ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !35, !alias.scope !1028
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !41, !alias.scope !1028
  store i8 0, ptr %i.aa, align 8, !tbaa !40, !alias.scope !1028
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !269, !noalias !1028 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ad, null
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !1028 ; 2 uses
  %i.ag = icmp ugt ptr %i.ad, %i.af
  %.08.i.i.i = select i1 %i.ag, ptr %i.ad, ptr %i.af ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNSolsEl.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !270, !noalias !1028 ; 2 uses
  %i.aj = ptrtoint ptr %.08.i.i.i to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ai, i64 noundef %i.al)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !39, !alias.scope !1028 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.aa
  br i1 %i.ap, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.aq = load i64, ptr %i.aa, align 8, !tbaa !40, !alias.scope !1028
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #31
  br label %.body

bb.j:                                             ; preds = %_ZNSolsEl.exit
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.as)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.i

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.j, %bb.h
  %i.at = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.at, ptr %3, align 8, !tbaa !65
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.av = getelementptr i8, ptr %i.at, i64 -24
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %3, i64 %i.aw
  store ptr %i.au, ptr %i.ax, align 8, !tbaa !65
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ay, align 8, !tbaa !65
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !39 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !40
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #31
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ay, align 8, !tbaa !65
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bf) #28
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bg) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.k:                                             ; preds = %bb.g, %.noexc4, %bb.f, %bb.e, %bb.b, %bb.a
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.bh, %bb.k ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.an, %bb.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %eh.lpad-body
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind writable sret(%"class.std::locale") align 8, ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9algorithm6detail21find_format_all_impl2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13first_finderFIPKcNS0_8is_equalEEENS1_13empty_formatFIcEENS_14iterator_rangeIN9__gnu_cxx17__normal_iteratorIPcS8_EEEENS1_15empty_containerIcEEEEvRT_T0_T1_T2_T3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef byval(%"struct.boost::algorithm::detail::first_finderF") align 8 %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Deque_iterator", align 8 ; 4 uses
  %5 = alloca %"struct.std::_Deque_iterator", align 8 ; 4 uses
  %6 = alloca %"struct.boost::algorithm::detail::process_segment_helper", align 1 ; 3 uses
  %7 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %8 = alloca %"struct.boost::algorithm::detail::process_segment_helper", align 1 ; 3 uses
  %9 = alloca %"class.std::deque", align 8        ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %9, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %9, i64 noundef 0)
  %i.a = load ptr, ptr %0, align 8, !tbaa !39     ; 5 uses
  %.not.i47 = icmp eq ptr %2, %3
  br i1 %.not.i47, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !41
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %.sroa.017.051 = phi ptr [ %i.a, %.lr.ph ], [ %i.i, %.loopexit ]
  %.sroa.016.050 = phi ptr [ %i.a, %.lr.ph ], [ %.sroa.7.049, %.loopexit ]
  %.sroa.7.049 = phi ptr [ %3, %.lr.ph ], [ %.sroa.0.0.lcssa.ph.i, %.loopexit ] ; 7 uses
  %.sroa.040.048 = phi ptr [ %2, %.lr.ph ], [ %.sroa.018.034.i, %.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.i = invoke ptr @_ZN5boost9algorithm6detail22process_segment_helperILb0EEclISt5dequeIcSaIcEENSt7__cxx1112basic_stringIcSt11char_traitsIcES6_EEN9__gnu_cxx17__normal_iteratorIPcSC_EEEET1_RT_RT0_SH_SH_SH_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %.sroa.017.051, ptr %.sroa.016.050, ptr %.sroa.040.048)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !232, !noalias !1039
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !233, !noalias !1039 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  store ptr %i.j, ptr %7, align 8, !tbaa !232, !alias.scope !1040, !noalias !1041
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42, !noalias !1042 ; 2 uses
  store ptr %i.l, ptr %i.d, align 8, !tbaa !234, !alias.scope !1040, !noalias !1041
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 512
  store ptr %i.m, ptr %i.e, align 8, !tbaa !235, !alias.scope !1040, !noalias !1041
  store ptr %i.k, ptr %i.f, align 8, !tbaa !233, !alias.scope !1040, !noalias !1041
  invoke void @_ZNSt5dequeIcSaIcEE19_M_range_insert_auxIPKcEEvSt15_Deque_iteratorIcRcPcET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef null, ptr noundef null)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.n = load ptr, ptr %0, align 8, !tbaa !39     ; 5 uses
  %i.o = load i64, ptr %i.g, align 8, !tbaa !41   ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o ; 3 uses
  %.not2633.i = icmp eq ptr %.sroa.7.049, %i.p
  br i1 %.not2633.i, label %._crit_edge, label %.lr.ph35.i

.lr.ph35.i:                                       ; preds = %bb.d
  %i.q = load ptr, ptr %1, align 8, !tbaa !237    ; 2 uses
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !238  ; 3 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %._crit_edge, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph35.i, %.critedge15.i
  %.sroa.018.034.i = phi ptr [ %i.z, %.critedge15.i ], [ %.sroa.7.049, %.lr.ph35.i ] ; 4 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %.01228.i = phi ptr [ %i.x, %bb.e ], [ %i.q, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.0.027.i = phi ptr [ %i.w, %bb.e ], [ %.sroa.018.034.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.t = load i8, ptr %.sroa.0.027.i, align 1, !tbaa !40
  %i.u = load i8, ptr %.01228.i, align 1, !tbaa !40
  %i.v = icmp eq i8 %i.t, %i.u
  br i1 %i.v, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 1 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01228.i, i64 1 ; 3 uses
  %i.y = icmp eq ptr %i.w, %i.p
  %.not.i33 = icmp eq ptr %i.x, %i.r
  %or.cond.i = select i1 %i.y, i1 true, i1 %.not.i33
  br i1 %or.cond.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !16

.critedge.i:                                      ; preds = %bb.e, %.lr.ph.i
  %.sroa.0.0.lcssa.ph.i = phi ptr [ %.sroa.0.027.i, %.lr.ph.i ], [ %i.w, %bb.e ] ; 2 uses
  %.012.lcssa.ph.i = phi ptr [ %.01228.i, %.lr.ph.i ], [ %i.x, %bb.e ]
  %.not13.i = icmp eq ptr %.012.lcssa.ph.i, %i.r
  br i1 %.not13.i, label %.loopexit, label %.critedge15.i

.critedge15.i:                                    ; preds = %.critedge.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.018.034.i, i64 1 ; 2 uses
  %.not26.i = icmp eq ptr %i.z, %i.p
  br i1 %.not26.i, label %._crit_edge, label %.lr.ph.preheader.i, !llvm.loop !15

.loopexit:                                        ; preds = %.critedge.i
  %.not.i = icmp eq ptr %.sroa.018.034.i, %.sroa.0.0.lcssa.ph.i
  br i1 %.not.i, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.d, %.lr.ph35.i, %.loopexit, %.critedge15.i, %.._crit_edge_crit_edge
  %i.aa = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.o, %.critedge15.i ], [ %i.o, %.loopexit ], [ %i.o, %.lr.ph35.i ], [ %i.o, %bb.d ]
  %i.ab = phi ptr [ %i.a, %.._crit_edge_crit_edge ], [ %i.n, %.critedge15.i ], [ %i.n, %.loopexit ], [ %i.n, %.lr.ph35.i ], [ %i.n, %bb.d ]
  %.sroa.016.0.lcssa = phi ptr [ %i.a, %.._crit_edge_crit_edge ], [ %.sroa.7.049, %.critedge15.i ], [ %.sroa.7.049, %.loopexit ], [ %.sroa.7.049, %.lr.ph35.i ], [ %.sroa.7.049, %bb.d ]
  %.sroa.017.0.lcssa = phi ptr [ %i.a, %.._crit_edge_crit_edge ], [ %i.i, %.critedge15.i ], [ %i.i, %.loopexit ], [ %i.i, %.lr.ph35.i ], [ %i.i, %bb.d ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.ae = invoke ptr @_ZN5boost9algorithm6detail22process_segment_helperILb0EEclISt5dequeIcSaIcEENSt7__cxx1112basic_stringIcSt11char_traitsIcES6_EEN9__gnu_cxx17__normal_iteratorIPcSC_EEEET1_RT_RT0_SH_SH_SH_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %.sroa.017.0.lcssa, ptr %.sroa.016.0.lcssa, ptr %i.ad)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !232 ; 2 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !232 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  %i.ak = load ptr, ptr %0, align 8, !tbaa !39    ; 3 uses
  br i1 %i.aj, label %_ZN5boost9algorithm6detail5eraseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENT_8iteratorERS9_SA_SA_.exit, label %bb.g

_ZN5boost9algorithm6detail5eraseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENT_8iteratorERS9_SA_SA_.exit: ; preds = %bb.f
  %i.al = ptrtoint ptr %i.ae to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am                    ; 2 uses
  store i64 %i.an, ptr %i.ac, align 8, !tbaa !41
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an
  store i8 0, ptr %i.ao, align 1, !tbaa !40
  br label %bb.h

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %bb.b, %bb.g, %._crit_edge
  %lpad.loopexit.split-lp89 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt5dequeIcSaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  resume { ptr, i32 } %lpad.loopexit.split-lp89

bb.g:                                             ; preds = %bb.f
  %i.ap = load i64, ptr %i.ac, align 8, !tbaa !41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !234, !noalias !1043
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !234, !noalias !1044
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ax = load <2 x ptr>, ptr %i.at, align 8, !tbaa !70, !noalias !1043
  %i.ay = insertelement <4 x ptr> poison, ptr %i.ai, i64 0
  %i.az = insertelement <4 x ptr> %i.ay, ptr %i.as, i64 1
  %i.ba = shufflevector <2 x ptr> %i.ax, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bb = shufflevector <4 x ptr> %i.az, <4 x ptr> %i.ba, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.bb, ptr %4, align 8, !tbaa !70
  %i.bc = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !70, !noalias !1044
  %i.bd = insertelement <4 x ptr> poison, ptr %i.ah, i64 0
  %i.be = insertelement <4 x ptr> %i.bd, ptr %i.av, i64 1
  %i.bf = shufflevector <2 x ptr> %i.bc, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bg = shufflevector <4 x ptr> %i.be, <4 x ptr> %i.bf, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.bg, ptr %5, align 8, !tbaa !70
  %i.bh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE19_M_replace_dispatchISt15_Deque_iteratorIcRcPcEEERS4_N9__gnu_cxx17__normal_iteratorIPKcS4_EESF_T_SG_St12__false_type(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %i.aq, ptr %i.aq, ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dead_on_return %5)
          to label %_ZN5boost9algorithm6detail6insertINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt15_Deque_iteratorIcRcPcEEEvRT_NSD_8iteratorET0_SG_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN5boost9algorithm6detail6insertINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt15_Deque_iteratorIcRcPcEEEvRT_NSD_8iteratorET0_SG_.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.h

bb.h:                                             ; preds = %_ZN5boost9algorithm6detail6insertINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt15_Deque_iteratorIcRcPcEEEvRT_NSD_8iteratorET0_SG_.exit, %_ZN5boost9algorithm6detail5eraseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENT_8iteratorERS9_SA_SA_.exit
  %i.bi = load ptr, ptr %9, align 8, !tbaa !240   ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNSt5dequeIcSaIcEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !241 ; 2 uses
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !242 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = icmp ult ptr %i.bl, %i.bn
  br i1 %i.bo, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i ], [ %i.bl, %bb.i ] ; 3 uses
  %i.bp = load ptr, ptr %.06.i.i.i, align 8, !tbaa !42
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef 512) #31
  %i.bq = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.br = icmp ult ptr %.06.i.i.i, %i.bm
  br i1 %i.br, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.loopexit.i.i, !llvm.loop !17

_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %9, align 8, !tbaa !240
  br label %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i.i

_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.loopexit.i.i, %bb.i
  %i.bs = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.loopexit.i.i ], [ %i.bi, %bb.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !243
  %i.bv = shl i64 %i.bu, 3
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #31
  br label %_ZNSt5dequeIcSaIcEED2Ev.exit

_ZNSt5dequeIcSaIcEED2Ev.exit:                     ; preds = %bb.h, %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9algorithm6detail21find_format_all_impl2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13first_finderFIN9__gnu_cxx17__normal_iteratorIPKcS8_EENS0_8is_equalEEENS1_13empty_formatFIcEENS_14iterator_rangeINSB_IPcS8_EEEENS1_15empty_containerIcEEEEvRT_T0_T1_T2_T3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef byval(%"struct.boost::algorithm::detail::first_finderF.248") align 8 %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Deque_iterator", align 8 ; 4 uses
  %5 = alloca %"struct.std::_Deque_iterator", align 8 ; 4 uses
  %6 = alloca %"struct.boost::algorithm::detail::process_segment_helper", align 1 ; 3 uses
  %7 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %8 = alloca %"struct.boost::algorithm::detail::process_segment_helper", align 1 ; 3 uses
  %9 = alloca %"class.std::deque", align 8        ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %9, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %9, i64 noundef 0)
  %i.a = load ptr, ptr %0, align 8, !tbaa !39     ; 5 uses
  %.not.i47 = icmp eq ptr %2, %3
  br i1 %.not.i47, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !41
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %.sroa.017.051 = phi ptr [ %i.a, %.lr.ph ], [ %i.i, %.loopexit ]
  %.sroa.016.050 = phi ptr [ %i.a, %.lr.ph ], [ %.sroa.7.049, %.loopexit ]
  %.sroa.7.049 = phi ptr [ %3, %.lr.ph ], [ %.sroa.017.0.lcssa.ph.i, %.loopexit ] ; 7 uses
  %.sroa.040.048 = phi ptr [ %2, %.lr.ph ], [ %.sroa.020.035.i, %.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.i = invoke ptr @_ZN5boost9algorithm6detail22process_segment_helperILb0EEclISt5dequeIcSaIcEENSt7__cxx1112basic_stringIcSt11char_traitsIcES6_EEN9__gnu_cxx17__normal_iteratorIPcSC_EEEET1_RT_RT0_SH_SH_SH_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %.sroa.017.051, ptr %.sroa.016.050, ptr %.sroa.040.048)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !232, !noalias !1055
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !233, !noalias !1055 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  store ptr %i.j, ptr %7, align 8, !tbaa !232, !alias.scope !1056, !noalias !1057
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42, !noalias !1058 ; 2 uses
  store ptr %i.l, ptr %i.d, align 8, !tbaa !234, !alias.scope !1056, !noalias !1057
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 512
  store ptr %i.m, ptr %i.e, align 8, !tbaa !235, !alias.scope !1056, !noalias !1057
  store ptr %i.k, ptr %i.f, align 8, !tbaa !233, !alias.scope !1056, !noalias !1057
  invoke void @_ZNSt5dequeIcSaIcEE19_M_range_insert_auxIPKcEEvSt15_Deque_iteratorIcRcPcET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef null, ptr noundef null)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.n = load ptr, ptr %0, align 8, !tbaa !39     ; 5 uses
  %i.o = load i64, ptr %i.g, align 8, !tbaa !41   ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o ; 3 uses
  %.not34.i = icmp eq ptr %.sroa.7.049, %i.p
  br i1 %.not34.i, label %._crit_edge, label %.lr.ph36.i

.lr.ph36.i:                                       ; preds = %bb.d
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !42 ; 2 uses
  %.sroa.0.0.copyload.i.i.i2.i.i = load ptr, ptr %i.h, align 8, !tbaa !42 ; 3 uses
  %i.q = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i2.i.i
  br i1 %i.q, label %._crit_edge, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph36.i, %.critedge9.i
  %.sroa.020.035.i = phi ptr [ %i.z, %.critedge9.i ], [ %.sroa.7.049, %.lr.ph36.i ] ; 4 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %.sroa.013.029.i = phi ptr [ %i.v, %bb.e ], [ %.sroa.0.0.copyload.i.i.i.i.i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.017.028.i = phi ptr [ %i.u, %bb.e ], [ %.sroa.020.035.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.r = load i8, ptr %.sroa.017.028.i, align 1, !tbaa !40
  %i.s = load i8, ptr %.sroa.013.029.i, align 1, !tbaa !40
  %i.t = icmp eq i8 %i.r, %i.s
  br i1 %i.t, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.017.028.i, i64 1 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.013.029.i, i64 1 ; 3 uses
  %i.w = icmp ne ptr %i.u, %i.p
  %i.x = icmp ne ptr %i.v, %.sroa.0.0.copyload.i.i.i2.i.i
  %or.cond.i = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i, !llvm.loop !21
end_hunk_4
