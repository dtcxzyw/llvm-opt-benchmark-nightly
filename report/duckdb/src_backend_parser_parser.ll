inline.NumInlined: 170
inline.NumDeleted: 102
begin_hunk_0_@_ZN17duckdb_libpgquery11parser_initEPNS_18base_yy_extra_typeE
declare void @_ZN17duckdb_libpgquery11parser_initEPNS_18base_yy_extra_typeE(ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN17duckdb_libpgquery12base_yyparseEPv(ptr noundef) local_unnamed_addr #2

declare void @_ZN17duckdb_libpgquery14scanner_finishEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i8 @_ZN17duckdb_libpgquery10is_keywordEPKc(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN17duckdb_libpgquery17ScanKeywordLookupEPKcPKNS_13PGScanKeywordEi(ptr noundef %0, ptr noundef nonnull @_ZN17duckdb_libpgqueryL12ScanKeywordsE, i32 noundef 489) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.c = load i16, ptr %i.b, align 2, !tbaa !16
  %i.d = trunc i16 %i.c to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i8 [ %i.d, %bb.b ], [ 4, %bb.a ]
  ret i8 %.0
}

declare noundef ptr @_ZN17duckdb_libpgquery17ScanKeywordLookupEPKcPKNS_13PGScanKeywordEi(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN17duckdb_libpgquery12keyword_listEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 initializes((0, 24)) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"struct.duckdb_libpgquery::PGKeyword", align 8 ; 12 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN17duckdb_libpgquery9PGKeywordD2Ev.exit9
  %.011 = phi i64 [ 0, %bb.a ], [ %i.aj, %_ZN17duckdb_libpgquery9PGKeywordD2Ev.exit9 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  store ptr %i.b, ptr %1, align 8, !tbaa !19
  store i64 0, ptr %i.c, align 8, !tbaa !21
  store i8 0, ptr %i.b, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw [16 x i8], ptr @_ZN17duckdb_libpgqueryL12ScanKeywordsE, i64 %.011 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !24  ; 2 uses
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #14
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %i.h, i64 noundef %i.i)
          to label %switch.lookup unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.g, %.noexc.i.i.i, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.b
  br i1 %i.m, label %_ZN17duckdb_libpgquery9PGKeywordD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.l) #15
  br label %_ZN17duckdb_libpgquery9PGKeywordD2Ev.exit

_ZN17duckdb_libpgquery9PGKeywordD2Ev.exit:        ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  call void @_ZNSt6vectorIN17duckdb_libpgquery9PGKeywordESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  resume { ptr, i32 } %i.k

switch.lookup:                                    ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %i.o = load i16, ptr %i.n, align 2, !tbaa !16
  %switch.idx.cast = trunc i16 %i.o to i8
  store i8 %switch.idx.cast, ptr %i.d, align 8, !tbaa !26
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !29   ; 9 uses
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.p, %i.q
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %switch.lookup
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !19
  %i.s = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.t = load i64, ptr %i.c, align 8, !tbaa !21   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %i.t, ptr %i.a, align 8, !tbaa !33
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(33) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.v, ptr %i.p, align 8, !tbaa !25
  %i.w = load i64, ptr %i.a, align 8, !tbaa !33
  store i64 %i.w, ptr %i.r, align 8, !tbaa !23
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %bb.d
  %i.x = phi ptr [ %i.v, %.noexc ], [ %i.r, %bb.d ] ; 2 uses
  switch i64 %i.t, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN17duckdb_libpgquery9PGKeywordC2ERKS0_.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.y = load i8, ptr %i.s, align 1, !tbaa !23
  store i8 %i.y, ptr %i.x, align 1, !tbaa !23
  br label %_ZN17duckdb_libpgquery9PGKeywordC2ERKS0_.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.s, i64 %i.t, i1 false)
  br label %_ZN17duckdb_libpgquery9PGKeywordC2ERKS0_.exit.i

_ZN17duckdb_libpgquery9PGKeywordC2ERKS0_.exit.i:  ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i
  %i.z = load i64, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !21
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.ae = load i8, ptr %i.d, align 8, !tbaa !26
  store i8 %i.ae, ptr %i.ad, align 8, !tbaa !26
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store ptr %i.ag, ptr %i.e, align 8, !tbaa !29
  br label %_ZNSt6vectorIN17duckdb_libpgquery9PGKeywordESaIS1_EE9push_backERKS1_.exit

bb.g:                                             ; preds = %switch.lookup
  invoke void @_ZNSt6vectorIN17duckdb_libpgquery9PGKeywordESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.p, ptr noundef nonnull align 8 dereferenceable(33) %1)
          to label %_ZNSt6vectorIN17duckdb_libpgquery9PGKeywordESaIS1_EE9push_backERKS1_.exit unwind label %bb.c

_ZNSt6vectorIN17duckdb_libpgquery9PGKeywordESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZN17duckdb_libpgquery9PGKeywordC2ERKS0_.exit.i, %bb.g
  %i.ah = load ptr, ptr %1, align 8, !tbaa !25    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.b
  br i1 %i.ai, label %_ZN17duckdb_libpgquery9PGKeywordD2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %_ZNSt6vectorIN17duckdb_libpgquery9PGKeywordESaIS1_EE9push_backERKS1_.exit
  call void @_ZdlPv(ptr noundef %i.ah) #15
  br label %_ZN17duckdb_libpgquery9PGKeywordD2Ev.exit9

_ZN17duckdb_libpgquery9PGKeywordD2Ev.exit9:       ; preds = %_ZNSt6vectorIN17duckdb_libpgquery9PGKeywordESaIS1_EE9push_backERKS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %i.aj = add nuw nsw i64 %.011, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.aj, 489
  br i1 %exitcond.not, label %bb.h, label %bb.b, !llvm.loop !34

bb.h:                                             ; preds = %_ZN17duckdb_libpgquery9PGKeywordD2Ev.exit9
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN17duckdb_libpgquery9PGKeywordESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN17duckdb_libpgquery9PGKeywordES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN17duckdb_libpgquery9PGKeywordEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.g, %_ZSt8_DestroyIN17duckdb_libpgquery9PGKeywordEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !25 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyIN17duckdb_libpgquery9PGKeywordEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZdlPv(ptr noundef %i.d) #15
  br label %_ZSt8_DestroyIN17duckdb_libpgquery9PGKeywordEEvPT_.exit.i.i

_ZSt8_DestroyIN17duckdb_libpgquery9PGKeywordEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN17duckdb_libpgquery9PGKeywordES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !37

_ZSt8_DestroyIPN17duckdb_libpgquery9PGKeywordES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN17duckdb_libpgquery9PGKeywordEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !36
  br label %_ZSt8_DestroyIPN17duckdb_libpgquery9PGKeywordES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN17duckdb_libpgquery9PGKeywordES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN17duckdb_libpgquery9PGKeywordES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.h = phi ptr [ %.pr, %_ZSt8_DestroyIPN17duckdb_libpgquery9PGKeywordES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN17duckdb_libpgquery9PGKeywordESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN17duckdb_libpgquery9PGKeywordES1_EvT_S3_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #15
  br label %_ZNSt12_Vector_baseIN17duckdb_libpgquery9PGKeywordESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN17duckdb_libpgquery9PGKeywordESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN17duckdb_libpgquery9PGKeywordES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN17duckdb_libpgquery8tokenizeEPKc(ptr dead_on_unwind noalias nofree writable sret(%"class.std::vector.3") align 8 captures(none) initializes((0, 24)) %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb_libpgquery::base_yy_extra_type", align 8 ; 5 uses
  %3 = alloca %"union.duckdb_libpgquery::YYSTYPE", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = invoke noundef ptr @_ZN17duckdb_libpgquery12scanner_initEPKcPNS_18core_yy_extra_typeEPKNS_13PGScanKeywordEi(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull @_ZN17duckdb_libpgqueryL12ScanKeywordsE, i32 noundef 489)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i8 0, ptr %i.c, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN17duckdb_libpgquery17PGSimplifiedTokenESaIS1_EE9push_backERKS1_.exit, %bb.b
  %i.f = phi ptr [ %i.ai, %_ZNSt6vectorIN17duckdb_libpgquery17PGSimplifiedTokenESaIS1_EE9push_backERKS1_.exit ], [ null, %bb.b ] ; 4 uses
  %i.g = phi ptr [ %i.aj, %_ZNSt6vectorIN17duckdb_libpgquery17PGSimplifiedTokenESaIS1_EE9push_backERKS1_.exit ], [ null, %bb.b ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.h = invoke noundef i32 @_ZN17duckdb_libpgquery10base_yylexEPNS_7YYSTYPEEPiPv(ptr noundef nonnull %3, ptr noundef nonnull %i.a, ptr noundef %i.b)
          to label %bb.f unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %.thread, %bb.a
  %i.i = phi ptr [ %i.g, %.thread ], [ null, %bb.a ]
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  store ptr %i.g, ptr %0, align 8
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  %i.m = call ptr @__cxa_begin_catch(ptr %i.l) #14 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %.thread unwind label %bb.g

bb.f:                                             ; preds = %bb.c
  switch i32 %i.h, label %bb.k [
    i32 0, label %.thread.loopexit
    i32 258, label %bb.l
    i32 264, label %bb.h
    i32 259, label %bb.h
    i32 260, label %bb.i
    i32 261, label %bb.i
    i32 262, label %bb.i
    i32 263, label %bb.j
    i32 265, label %bb.j
    i32 268, label %bb.j
    i32 269, label %bb.j
    i32 275, label %bb.j
    i32 276, label %bb.j
    i32 277, label %bb.j
  ]

bb.g:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.h:                                             ; preds = %bb.f, %bb.f
  br label %bb.l

bb.i:                                             ; preds = %bb.f, %bb.f, %bb.f
  br label %bb.l

bb.j:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  br label %bb.l

bb.k:                                             ; preds = %bb.f
  %i.o = icmp sgt i32 %i.h, 254
  %i.p = select i1 %i.o, i64 4, i64 3
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f, %bb.j, %bb.i, %bb.h
  %.sroa.0.0 = phi i64 [ 0, %bb.f ], [ %i.p, %bb.k ], [ 3, %bb.j ], [ 1, %bb.h ], [ 2, %bb.i ] ; 2 uses
  %i.q = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !38
  %.not.i = icmp eq ptr %i.f, %i.r
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.1128.0.insert.ext = zext i32 %i.q to i64
  %.sroa.1128.0.insert.shift = shl nuw i64 %.sroa.1128.0.insert.ext, 32
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.1128.0.insert.shift, %.sroa.0.0
  store i64 %.sroa.0.0.insert.insert, ptr %i.f, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.d, align 8, !tbaa !41
  br label %_ZNSt6vectorIN17duckdb_libpgquery17PGSimplifiedTokenESaIS1_EE9push_backERKS1_.exit

bb.n:                                             ; preds = %bb.l
  %i.t = ptrtoint ptr %i.f to i64
  %i.u = ptrtoint ptr %i.g to i64
  %i.v = sub i64 %i.t, %i.u                       ; 5 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775800
  br i1 %i.w, label %bb.o, label %_ZNKSt6vectorIN17duckdb_libpgquery17PGSimplifiedTokenESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.o:                                             ; preds = %bb.n
  store ptr %i.g, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.489) #16
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.o
  unreachable

_ZNKSt6vectorIN17duckdb_libpgquery17PGSimplifiedTokenESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.n
  %i.x = ashr exact i64 %i.v, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = call i64 @llvm.umin.i64(i64 %i.y, i64 1152921504606846975)
  %i.ab = select i1 %i.z, i64 1152921504606846975, i64 %i.aa ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ab, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #17
          to label %.noexc17 unwind label %.loopexit ; 4 uses

.noexc17:                                         ; preds = %_ZNKSt6vectorIN17duckdb_libpgquery17PGSimplifiedTokenESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %i.v ; 2 uses
  %.sroa.1128.0.insert.ext30 = zext i32 %i.q to i64
  %.sroa.1128.0.insert.shift31 = shl nuw i64 %.sroa.1128.0.insert.ext30, 32
  %.sroa.0.0.insert.insert22 = or disjoint i64 %.sroa.1128.0.insert.shift31, %.sroa.0.0
  store i64 %.sroa.0.0.insert.insert22, ptr %i.ae, align 4
  %i.af = icmp sgt i64 %i.v, 0
  br i1 %i.af, label %bb.p, label %_ZNSt6vectorIN17duckdb_libpgquery17PGSimplifiedTokenESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.p:                                             ; preds = %.noexc17
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ad, ptr align 4 %i.g, i64 %i.v, i1 false)
  br label %_ZNSt6vectorIN17duckdb_libpgquery17PGSimplifiedTokenESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIN17duckdb_libpgquery17PGSimplifiedTokenESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.p, %.noexc17
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN17duckdb_libpgquery17PGSimplifiedTokenESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN17duckdb_libpgquery17PGSimplifiedTokenESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.g) #15
  br label %_ZNSt6vectorIN17duckdb_libpgquery17PGSimplifiedTokenESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN17duckdb_libpgquery17PGSimplifiedTokenESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorIN17duckdb_libpgquery17PGSimplifiedTokenESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.ag, ptr %i.d, align 8, !tbaa !41
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  store ptr %i.ah, ptr %i.e, align 8, !tbaa !38
  br label %_ZNSt6vectorIN17duckdb_libpgquery17PGSimplifiedTokenESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN17duckdb_libpgquery17PGSimplifiedTokenESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.m, %_ZNSt6vectorIN17duckdb_libpgquery17PGSimplifiedTokenESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ai = phi ptr [ %i.s, %bb.m ], [ %i.ag, %_ZNSt6vectorIN17duckdb_libpgquery17PGSimplifiedTokenESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.aj = phi ptr [ %i.g, %bb.m ], [ %i.ad, %_ZNSt6vectorIN17duckdb_libpgquery17PGSimplifiedTokenESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.c

.loopexit:                                        ; preds = %_ZNKSt6vectorIN17duckdb_libpgquery17PGSimplifiedTokenESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.g, ptr %0, align 8
  br label %bb.r

.loopexit.split-lp:                               ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.t

.thread.loopexit:                                 ; preds = %bb.f
  store ptr %i.g, ptr %0, align 8
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  invoke void @_ZN17duckdb_libpgquery14scanner_finishEPv(ptr noundef %i.b)
          to label %bb.s unwind label %bb.d

bb.s:                                             ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void

bb.t:                                             ; preds = %bb.r, %bb.d
  %i.ak = phi ptr [ %i.i, %bb.d ], [ %i.g, %bb.r ] ; 2 uses
  %.pn15 = phi { ptr, i32 } [ %i.j, %bb.d ], [ %.pn, %bb.r ]
  %.not.i.i.i18 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIN17duckdb_libpgquery17PGSimplifiedTokenESaIS1_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZdlPv(ptr noundef nonnull %i.ak) #15
  br label %_ZNSt6vectorIN17duckdb_libpgquery17PGSimplifiedTokenESaIS1_EED2Ev.exit

_ZNSt6vectorIN17duckdb_libpgquery17PGSimplifiedTokenESaIS1_EED2Ev.exit: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  resume { ptr, i32 } %.pn15
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN17duckdb_libpgquery10base_yylexEPNS_7YYSTYPEEPiPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !42     ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !7, !range !44, !noundef !45
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %i.f = load i32, ptr %i.e, align 4, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.h = load i64, ptr %i.g, align 8, !tbaa !23
  store i64 %i.h, ptr %0, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.j = load i32, ptr %i.i, align 8, !tbaa !47
  store i32 %i.j, ptr %1, align 4, !tbaa !3
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.l = load i8, ptr %i.k, align 8, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49
  store i8 %i.l, ptr %i.n, align 1, !tbaa !23
  store i8 0, ptr %i.b, align 8, !tbaa !7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noundef i32 @_ZN17duckdb_libpgquery10core_yylexEPNS_12core_YYSTYPEEPiPv(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.039 = phi i32 [ %i.f, %bb.b ], [ %i.o, %bb.c ] ; 4 uses
  switch i32 %.039, label %bb.l [
    i32 535, label %bb.g
    i32 542, label %bb.e
    i32 745, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e
  %.038 = phi i64 [ 4, %bb.f ], [ 5, %bb.e ], [ 3, %bb.d ]
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.q = load i32, ptr %1, align 4, !tbaa !3      ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.038
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !49
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.w = tail call noundef i32 @_ZN17duckdb_libpgquery10core_yylexEPNS_12core_YYSTYPEEPiPv(ptr noundef nonnull %i.v, ptr noundef nonnull %1, ptr noundef nonnull %2) ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  store i32 %i.w, ptr %i.x, align 4, !tbaa !46
  %i.y = load i32, ptr %1, align 4, !tbaa !3
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i32 %i.y, ptr %i.z, align 8, !tbaa !47
  store i32 %i.q, ptr %1, align 4, !tbaa !3
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !49  ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i8 %i.ab, ptr %i.ac, align 8, !tbaa !48
  store i8 0, ptr %i.aa, align 1, !tbaa !23
  store i8 1, ptr %i.b, align 8, !tbaa !7
  switch i32 %.039, label %bb.l [
    i32 535, label %bb.h
    i32 542, label %bb.j
    i32 745, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  switch i32 %i.w, label %bb.l [
    i32 309, label %bb.i
    i32 456, label %bb.i
    i32 495, label %bb.i
    i32 451, label %bb.i
    i32 655, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %switch.selectcmp.case1 = icmp eq i32 %i.w, 421
  %switch.selectcmp.case2 = icmp eq i32 %i.w, 489
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %i.ad = select i1 %switch.selectcmp, i32 768, i32 542
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %switch.selectcmp.case140 = icmp eq i32 %i.w, 693
  %switch.selectcmp.case241 = icmp eq i32 %i.w, 557
  %switch.selectcmp42 = or i1 %switch.selectcmp.case140, %switch.selectcmp.case241
  %i.ae = select i1 %switch.selectcmp42, i32 769, i32 745
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.i, %bb.h, %bb.j, %bb.k, %bb.d
  %.0 = phi i32 [ %.039, %bb.d ], [ %.039, %bb.g ], [ 535, %bb.h ], [ 767, %bb.i ], [ %i.ae, %bb.k ], [ %i.ad, %bb.j ]
  ret i32 %.0
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef i32 @_ZN17duckdb_libpgquery10core_yylexEPNS_12core_YYSTYPEEPiPv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN17duckdb_libpgquery9PGKeywordESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(33) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !36     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.h, label %bb.b, label %_ZNSt12_Vector_baseIN17duckdb_libpgquery9PGKeywordESaIS1_EE11_M_allocateEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.489) #16
  unreachable

_ZNSt12_Vector_baseIN17duckdb_libpgquery9PGKeywordESaIS1_EE11_M_allocateEm.exit: ; preds = %bb.a
  %3 = sdiv exact i64 %i.g, 40                    ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  %4 = add nsw i64 %.sroa.speculated.i, %3        ; 2 uses
  %5 = icmp ult i64 %4, %3
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 230584300921369395)
  %7 = select i1 %5, i64 230584300921369395, i64 %6 ; 3 uses
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %8, %i.f
  %.not.i = icmp ne i64 %7, 0
  tail call void @llvm.assume(i1 %.not.i)
  %10 = mul nuw nsw i64 %7, 40
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #17 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 %9 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !19
  %i.k = load ptr, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !21   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %i.m, ptr %i.a, align 8, !tbaa !33
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt12_Vector_baseIN17duckdb_libpgquery9PGKeywordESaIS1_EE11_M_allocateEm.exit
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(33) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.o, ptr %i.i, align 8, !tbaa !25
  %i.p = load i64, ptr %i.a, align 8, !tbaa !33
  store i64 %i.p, ptr %i.j, align 8, !tbaa !23
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNSt12_Vector_baseIN17duckdb_libpgquery9PGKeywordESaIS1_EE11_M_allocateEm.exit
  %i.q = phi ptr [ %i.o, %.noexc ], [ %i.j, %_ZNSt12_Vector_baseIN17duckdb_libpgquery9PGKeywordESaIS1_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.k, align 1, !tbaa !23
  store i8 %i.r, ptr %i.q, align 1, !tbaa !23
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !21
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = load i8, ptr %i.x, align 8, !tbaa !26
  store i8 %i.y, ptr %i.w, align 8, !tbaa !26
  %.not10.i.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN17duckdb_libpgquery9PGKeywordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %_ZSt19__relocate_object_aIN17duckdb_libpgquery9PGKeywordES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aIN17duckdb_libpgquery9PGKeywordES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %11, %bb.e ] ; 6 uses
  %.0911.i.i.i.i = phi ptr [ %i.ao, %_ZSt19__relocate_object_aIN17duckdb_libpgquery9PGKeywordES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.d, %bb.e ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.z, ptr %.012.i.i.i.i, align 8, !tbaa !19, !alias.scope !51, !noalias !54
  %i.aa = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !54, !noalias !51 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !21, !alias.scope !54, !noalias !51 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.ag, i1 false), !alias.scope !56
  br label %_ZSt19__relocate_object_aIN17duckdb_libpgquery9PGKeywordES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.aa, ptr %.012.i.i.i.i, align 8, !tbaa !25, !alias.scope !51, !noalias !54
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !23, !alias.scope !54, !noalias !51
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !23, !alias.scope !51, !noalias !54
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !21, !alias.scope !54, !noalias !51
  br label %_ZSt19__relocate_object_aIN17duckdb_libpgquery9PGKeywordES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aIN17duckdb_libpgquery9PGKeywordES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.f
  %i.ai = phi i64 [ %i.ae, %bb.f ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !21, !alias.scope !51, !noalias !54
  store ptr %i.ab, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !54, !noalias !51
  store i64 0, ptr %i.aj, align 8, !tbaa !21, !alias.scope !54, !noalias !51
  store i8 0, ptr %i.ab, align 8, !tbaa !23, !alias.scope !54, !noalias !51
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32
  %i.an = load i8, ptr %i.am, align 8, !tbaa !26, !alias.scope !54, !noalias !51
  store i8 %i.an, ptr %i.al, align 8, !tbaa !26, !alias.scope !51, !noalias !54
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN17duckdb_libpgquery9PGKeywordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !57

_ZNSt6vectorIN17duckdb_libpgquery9PGKeywordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN17duckdb_libpgquery9PGKeywordES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i = phi ptr [ %11, %bb.e ], [ %i.ap, %_ZSt19__relocate_object_aIN17duckdb_libpgquery9PGKeywordES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i.i26, label %_ZNSt6vectorIN17duckdb_libpgquery9PGKeywordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36, label %.lr.ph.i.i.i.i27

.lr.ph.i.i.i.i27:                                 ; preds = %_ZNSt6vectorIN17duckdb_libpgquery9PGKeywordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN17duckdb_libpgquery9PGKeywordES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i33
  %.012.i.i.i.i28 = phi ptr [ %i.bh, %_ZSt19__relocate_object_aIN17duckdb_libpgquery9PGKeywordES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i33 ], [ %i.aq, %_ZNSt6vectorIN17duckdb_libpgquery9PGKeywordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 6 uses
  %.0911.i.i.i.i29 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aIN17duckdb_libpgquery9PGKeywordES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i33 ], [ %1, %_ZNSt6vectorIN17duckdb_libpgquery9PGKeywordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 16 ; 3 uses
  store ptr %i.ar, ptr %.012.i.i.i.i28, align 8, !tbaa !19, !alias.scope !58, !noalias !61
  %i.as = load ptr, ptr %.0911.i.i.i.i29, align 8, !tbaa !25, !alias.scope !61, !noalias !58 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 16 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i.i27
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !21, !alias.scope !61, !noalias !58 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false), !alias.scope !63
  br label %_ZSt19__relocate_object_aIN17duckdb_libpgquery9PGKeywordES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i.i27
  store ptr %i.as, ptr %.012.i.i.i.i28, align 8, !tbaa !25, !alias.scope !58, !noalias !61
  %i.az = load i64, ptr %i.at, align 8, !tbaa !23, !alias.scope !61, !noalias !58
  store i64 %i.az, ptr %i.ar, align 8, !tbaa !23, !alias.scope !58, !noalias !61
  %.phi.trans.insert.i.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 8
  %.pre.i.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i.i31, align 8, !tbaa !21, !alias.scope !61, !noalias !58
  br label %_ZSt19__relocate_object_aIN17duckdb_libpgquery9PGKeywordES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i33

_ZSt19__relocate_object_aIN17duckdb_libpgquery9PGKeywordES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i30, %bb.g
  %i.ba = phi i64 [ %i.aw, %bb.g ], [ %.pre.i.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i30 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 8
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !21, !alias.scope !58, !noalias !61
  store ptr %i.at, ptr %.0911.i.i.i.i29, align 8, !tbaa !25, !alias.scope !61, !noalias !58
  store i64 0, ptr %i.bb, align 8, !tbaa !21, !alias.scope !61, !noalias !58
  store i8 0, ptr %i.at, align 8, !tbaa !23, !alias.scope !61, !noalias !58
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 32
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !26, !alias.scope !61, !noalias !58
  store i8 %i.bf, ptr %i.bd, align 8, !tbaa !26, !alias.scope !58, !noalias !61
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 40 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 40 ; 2 uses
  %.not.i.i.i.i34 = icmp eq ptr %i.bg, %i.c
  br i1 %.not.i.i.i.i34, label %_ZNSt6vectorIN17duckdb_libpgquery9PGKeywordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36, label %.lr.ph.i.i.i.i27, !llvm.loop !57

_ZNSt6vectorIN17duckdb_libpgquery9PGKeywordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36: ; preds = %_ZSt19__relocate_object_aIN17duckdb_libpgquery9PGKeywordES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i33, %_ZNSt6vectorIN17duckdb_libpgquery9PGKeywordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i35 = phi ptr [ %i.aq, %_ZNSt6vectorIN17duckdb_libpgquery9PGKeywordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.bh, %_ZSt19__relocate_object_aIN17duckdb_libpgquery9PGKeywordES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i33 ]
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN17duckdb_libpgquery9PGKeywordESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN17duckdb_libpgquery9PGKeywordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36
  call void @_ZdlPv(ptr noundef nonnull %i.d) #15
  br label %_ZNSt12_Vector_baseIN17duckdb_libpgquery9PGKeywordESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN17duckdb_libpgquery9PGKeywordESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN17duckdb_libpgquery9PGKeywordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36, %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %11, ptr %0, align 8, !tbaa !36
  store ptr %.0.lcssa.i.i.i.i35, ptr %i.b, align 8, !tbaa !29
  %i.bj = getelementptr inbounds nuw [40 x i8], ptr %11, i64 %7
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !32
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i.i
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  %i.bn = call ptr @__cxa_begin_catch(ptr %i.bm) #14 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %11) #15
  invoke void @__cxa_rethrow() #16
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bk

bb.l:                                             ; preds = %bb.i
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #18
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !14, i64 80}
!8 = !{!"_ZTSN17duckdb_libpgquery18base_yy_extra_typeE", !9, i64 0, !14, i64 80, !4, i64 84, !5, i64 88, !4, i64 96, !10, i64 104, !5, i64 112, !15, i64 120}
!9 = !{!"_ZTSN17duckdb_libpgquery18core_yy_extra_typeE", !10, i64 0, !12, i64 8, !13, i64 16, !4, i64 24, !4, i64 28, !14, i64 32, !14, i64 33, !10, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !10, i64 64, !4, i64 72, !14, i64 76, !14, i64 77}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!"p1 _ZTSN17duckdb_libpgquery13PGScanKeywordE", !11, i64 0}
!14 = !{!"bool", !5, i64 0}
!15 = !{!"p1 _ZTSN17duckdb_libpgquery6PGListE", !11, i64 0}
!16 = !{!17, !18, i64 10}
!17 = !{!"_ZTSN17duckdb_libpgquery13PGScanKeywordE", !10, i64 0, !18, i64 8, !18, i64 10}
!18 = !{!"short", !5, i64 0}
!19 = !{!20, !10, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!21 = !{!22, !12, i64 8}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0, !12, i64 8, !5, i64 16}
!23 = !{!5, !5, i64 0}
!24 = !{!17, !10, i64 0}
!25 = !{!22, !10, i64 0}
!26 = !{!27, !28, i64 32}
!27 = !{!"_ZTSN17duckdb_libpgquery9PGKeywordE", !22, i64 0, !28, i64 32}
!28 = !{!"_ZTSN17duckdb_libpgquery17PGKeywordCategoryE", !5, i64 0}
!29 = !{!30, !31, i64 8}
!30 = !{!"_ZTSNSt12_Vector_baseIN17duckdb_libpgquery9PGKeywordESaIS1_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!31 = !{!"p1 _ZTSN17duckdb_libpgquery9PGKeywordE", !11, i64 0}
!32 = !{!30, !31, i64 16}
!33 = !{!12, !12, i64 0}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!30, !31, i64 0}
!37 = distinct !{!37, !35}
!38 = !{!39, !40, i64 16}
!39 = !{!"_ZTSNSt12_Vector_baseIN17duckdb_libpgquery17PGSimplifiedTokenESaIS1_EE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!40 = !{!"p1 _ZTSN17duckdb_libpgquery17PGSimplifiedTokenE", !11, i64 0}
!41 = !{!39, !40, i64 8}
!42 = !{!43, !43, i64 0}
!43 = !{!"p1 _ZTSN17duckdb_libpgquery18base_yy_extra_typeE", !11, i64 0}
!44 = !{i8 0, i8 2}
!45 = !{}
!46 = !{!8, !4, i64 84}
!47 = !{!8, !4, i64 96}
!48 = !{!8, !5, i64 112}
!49 = !{!8, !10, i64 104}
!50 = !{!8, !10, i64 0}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZSt19__relocate_object_aIN17duckdb_libpgquery9PGKeywordES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!53 = distinct !{!53, !"_ZSt19__relocate_object_aIN17duckdb_libpgquery9PGKeywordES1_SaIS1_EEvPT_PT0_RT1_"}
!54 = !{!55}
!55 = distinct !{!55, !53, !"_ZSt19__relocate_object_aIN17duckdb_libpgquery9PGKeywordES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!56 = !{!52, !55}
!57 = distinct !{!57, !35}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZSt19__relocate_object_aIN17duckdb_libpgquery9PGKeywordES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!60 = distinct !{!60, !"_ZSt19__relocate_object_aIN17duckdb_libpgquery9PGKeywordES1_SaIS1_EEvPT_PT0_RT1_"}
!61 = !{!62}
!62 = distinct !{!62, !60, !"_ZSt19__relocate_object_aIN17duckdb_libpgquery9PGKeywordES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!63 = !{!59, !62}
end_hunk_0
