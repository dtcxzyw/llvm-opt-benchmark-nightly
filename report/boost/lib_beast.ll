Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/lib_beast?download=true
inline.NumInlined: 3033
inline.NumDeleted: 950
loop-unroll.NumCompletelyUnrolled: 64
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZN5boost5beast4zlib6detail14deflate_stream7doResetEiiiNS1_8StrategyE:bb.a
bb.i:                                             ; preds = %bb.e
  %i.l = add i32 %3, -10
  %or.cond5 = icmp ult i32 %i.l, -9
  br i1 %or.cond5, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #48
  call void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.185)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #48
  store ptr @.str.182, ptr %10, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.183, ptr %i.m, align 8, !tbaa !75
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 253, ptr %i.n, align 8, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 32, ptr %i.o, align 4, !tbaa !77
  invoke void @_ZN5boost15throw_exceptionISt16invalid_argumentEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(24) %10) #49
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #48
  call void @_ZNSt16invalid_argumentD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #48
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %spec.store.select6, ptr %i.q, align 8, !tbaa !312
  %i.r = add nuw nsw i32 %3, 7
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %i.r, ptr %i.s, align 8, !tbaa !313
  %i.t = shl nuw nsw i32 64, %3
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 5888
  store i32 %i.t, ptr %i.u, align 8, !tbaa !314
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 %spec.store.select, ptr %i.v, align 4, !tbaa !315
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %4, ptr %i.w, align 8, !tbaa !316
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.x, align 8, !tbaa !317
  ret void

bb.n:                                             ; preds = %bb.l, %bb.h, %bb.d
  %.pn = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.k, %bb.h ], [ %i.p, %bb.l ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN5boost5beast4zlib6detail14deflate_stream7doResetEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(5928) initializes((8, 9)) %0) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !317
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5boost5beast4zlib6detail14deflate_stream7doClearEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(5928) initializes((8, 9)) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !317
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !167  ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !167
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetEDn.exit, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #51
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetEDn.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetEDn.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK5boost5beast4zlib6detail14deflate_stream12doUpperBoundEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(5928) %0, i64 noundef %1) local_unnamed_addr #26 align 2 {
bb.a:
  %i.a = add i64 %1, 7                            ; 2 uses
  %i.b = lshr i64 %i.a, 3
  %i.c = add i64 %1, 63
  %i.d = lshr i64 %i.c, 6
  %i.e = add i64 %1, 5
  %i.f = add i64 %i.e, %i.b
  %i.g = add i64 %i.f, %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load i32, ptr %i.h, align 8, !tbaa !312
  %.not = icmp eq i32 %i.i, 15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load i32, ptr %i.j, align 8
  %.not11 = icmp eq i32 %i.k, 15
  %or.cond = select i1 %.not, i1 %.not11, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = lshr i64 %1, 12
  %i.m = lshr i64 %1, 14
  %i.n = lshr i64 %1, 25
  %i.o = add i64 %i.a, %i.l
  %i.p = add i64 %i.o, %i.m
  %i.q = add i64 %i.p, %i.n
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.q, %bb.b ], [ %i.g, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN5boost5beast4zlib6detail14deflate_stream6doTuneEiiii(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(5928) initializes((180, 188), (196, 204)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 %1, ptr %i.a, align 4, !tbaa !318
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %3, ptr %i.b, align 8, !tbaa !319
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %2, ptr %i.c, align 8, !tbaa !320
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 %4, ptr %i.d, align 4, !tbaa !321
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5boost5beast4zlib6detail14deflate_stream8doParamsERNS1_8z_paramsEiNS1_8StrategyERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(5928) %0, ptr noundef nonnull align 8 dereferenceable(52) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %4) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::optional.82", align 4 ; 3 uses
  %i.a = icmp eq i32 %2, -1
  %spec.store.select = select i1 %i.a, i32 6, i32 %2 ; 8 uses
  %or.cond = icmp ugt i32 %spec.store.select, 9
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !66, !noalias !1094
  %i.c = and i64 %i.b, -2
  %switch.i.i.i.i = icmp eq i64 %i.c, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %bb.b
  %i.d = load ptr, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, align 8, !tbaa !61, !noalias !1094
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !1094
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i32 noundef 4) #48, !noalias !1094, !inline_history !36
  br i1 %i.g, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %bb.c

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %bb.b, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit
  br label %bb.c

bb.c:                                             ; preds = %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %i.h = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit ]
  %i.i = or disjoint i64 %i.h, ptrtoint (ptr @_ZZN5boost5beast4zlib6detail14deflate_stream8doParamsERNS1_8z_paramsEiNS1_8StrategyERNS_6system10error_codeEE7loc_bb_ to i64)
  store i64 4, ptr %4, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx.i35 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx.i35, align 8, !tbaa !55
  br label %bb.r

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !315
  switch i32 %i.k, label %bb.f [
    i32 0, label %_ZN5boost5beast4zlib6detail14deflate_stream10get_configEm.exit
    i32 1, label %bb.e
    i32 2, label %bb.e
    i32 3, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  br label %_ZN5boost5beast4zlib6detail14deflate_stream10get_configEm.exit

bb.f:                                             ; preds = %bb.d
  br label %_ZN5boost5beast4zlib6detail14deflate_stream10get_configEm.exit

_ZN5boost5beast4zlib6detail14deflate_stream10get_configEm.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.sroa.39.0 = phi i64 [ ptrtoint (ptr @_ZN5boost5beast4zlib6detail14deflate_stream12deflate_slowERNS1_8z_paramsENS1_5FlushE to i64), %bb.f ], [ ptrtoint (ptr @_ZN5boost5beast4zlib6detail14deflate_stream14deflate_storedERNS1_8z_paramsENS1_5FlushE to i64), %bb.d ], [ ptrtoint (ptr @_ZN5boost5beast4zlib6detail14deflate_stream12deflate_fastERNS1_8z_paramsENS1_5FlushE to i64), %bb.e ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !316
  %.not = icmp eq i32 %3, %i.m
  br i1 %.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream10get_configEm.exit
  switch i32 %2, label %bb.i [
    i32 0, label %_ZN5boost5beast4zlib6detail14deflate_stream10get_configEm.exit37
    i32 1, label %bb.h
    i32 2, label %bb.h
    i32 3, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g
  br label %_ZN5boost5beast4zlib6detail14deflate_stream10get_configEm.exit37

bb.i:                                             ; preds = %bb.g
  br label %_ZN5boost5beast4zlib6detail14deflate_stream10get_configEm.exit37

_ZN5boost5beast4zlib6detail14deflate_stream10get_configEm.exit37: ; preds = %bb.g, %bb.h, %bb.i
  %.sroa.40545.0 = phi i64 [ ptrtoint (ptr @_ZN5boost5beast4zlib6detail14deflate_stream12deflate_slowERNS1_8z_paramsENS1_5FlushE to i64), %bb.i ], [ ptrtoint (ptr @_ZN5boost5beast4zlib6detail14deflate_stream14deflate_storedERNS1_8z_paramsENS1_5FlushE to i64), %bb.g ], [ ptrtoint (ptr @_ZN5boost5beast4zlib6detail14deflate_stream12deflate_fastERNS1_8z_paramsENS1_5FlushE to i64), %bb.h ]
  %.not744 = icmp eq i64 %.sroa.39.0, %.sroa.40545.0
  br i1 %.not744, label %.critedge3, label %bb.j

bb.j:                                             ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream10get_configEm.exit37, %_ZN5boost5beast4zlib6detail14deflate_stream10get_configEm.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !323
  %.not33 = icmp eq i64 %i.o, 0
  br i1 %.not33, label %.critedge3, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %5, align 4, !tbaa !324
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 1, ptr %i.p, align 4, !tbaa !58
  call void @_ZN5boost5beast4zlib6detail14deflate_stream7doWriteERNS1_8z_paramsENS_8optionalINS1_5FlushEEERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(5928) %0, ptr noundef nonnull align 8 dereferenceable(52) %1, ptr noundef nonnull align 4 dead_on_return %5, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !66, !noalias !1095
  %i.r = and i64 %i.q, -2
  %switch.i.i.i.i38 = icmp eq i64 %i.r, -5572340897628102704
  br i1 %switch.i.i.i.i38, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit41.thread, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit41

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit41: ; preds = %bb.k
  %i.s = load ptr, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, align 8, !tbaa !61, !noalias !1095
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !noalias !1095
  %i.v = tail call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i32 noundef 1) #48, !noalias !1095, !inline_history !36 ; 0 uses
  br label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit41.thread

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit41.thread: ; preds = %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit41, %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !68   ; 2 uses
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %.critedge3, label %_ZNK5boost6system10error_code5valueEv.exit17.i

_ZNK5boost6system10error_code5valueEv.exit17.i:   ; preds = %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit41.thread
  %i.z = load i32, ptr %4, align 8, !tbaa !58
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.l, label %.critedge3

bb.l:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i
  %cond = icmp eq i64 %i.x, 0
  br i1 %cond, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !58
  br label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit:   ; preds = %bb.l, %bb.m
  %.0.i18.i = phi ptr [ %i.ac, %bb.m ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.l ] ; 2 uses
  %i.ad = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !66 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = icmp eq ptr %.0.i18.i, @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i18.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = icmp eq i64 %i.ah, %i.ad
  %i.aj = select i1 %i.ae, i1 %i.af, i1 %i.ai
  br i1 %i.aj, label %bb.n, label %.critedge3

bb.n:                                             ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !325
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.o, label %.critedge3

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %.critedge3

.critedge3:                                       ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit41.thread, %_ZN5boost5beast4zlib6detail14deflate_stream10get_configEm.exit37, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit, %bb.n, %bb.o, %bb.j
  %i.an = load i32, ptr %i.j, align 4, !tbaa !315
  %.not34 = icmp eq i32 %i.an, %spec.store.select
  br i1 %.not34, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge3
  store i32 %spec.store.select, ptr %i.j, align 4, !tbaa !315
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.not756 = icmp eq i32 %spec.store.select, 9
  br i1 %.not756, label %_ZN5boost5beast4zlib6detail14deflate_stream10get_configEm.exit49, label %switch.lookup

switch.lookup:                                    ; preds = %bb.p
  %i.ar = zext nneg i32 %spec.store.select to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN5boost5beast4zlib6detail14deflate_stream7lm_initEv, i64 %i.ar
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.as = zext nneg i32 %spec.store.select to i64
  %switch.gep747 = getelementptr inbounds nuw i8, ptr @switch.table._ZN5boost5beast4zlib6detail14deflate_stream7lm_initEv.31, i64 %i.as
  %switch.load748 = load i8, ptr %switch.gep747, align 1
  %switch.ext749 = zext i8 %switch.load748 to i32
  %i.at = zext nneg i32 %spec.store.select to i64
  %switch.gep750 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN5boost5beast4zlib6detail14deflate_stream7lm_initEv.32, i64 %i.at
  %switch.load751 = load i16, ptr %switch.gep750, align 2
  %switch.ext752 = zext i16 %switch.load751 to i32
  %i.au = zext nneg i32 %spec.store.select to i64
  %switch.gep753 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN5boost5beast4zlib6detail14deflate_stream7lm_initEv.33, i64 %i.au
  %switch.load754 = load i16, ptr %switch.gep753, align 2
  %switch.ext755 = zext i16 %switch.load754 to i32
  br label %_ZN5boost5beast4zlib6detail14deflate_stream10get_configEm.exit49

_ZN5boost5beast4zlib6detail14deflate_stream10get_configEm.exit49: ; preds = %bb.p, %switch.lookup
  %.sink746.a = phi i32 [ %switch.ext, %switch.lookup ], [ 258, %bb.p ]
  %.sink745 = phi i32 [ %switch.ext749, %switch.lookup ], [ 32, %bb.p ]
  %.sink = phi i32 [ %switch.ext752, %switch.lookup ], [ 258, %bb.p ]
  %.sroa.0.0 = phi i32 [ %switch.ext755, %switch.lookup ], [ 4096, %bb.p ]
  store i32 %.sink746.a, ptr %i.ao, align 8, !tbaa !320
  store i32 %.sink745, ptr %i.ap, align 4, !tbaa !318
  store i32 %.sink, ptr %i.aq, align 8, !tbaa !319
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 %.sroa.0.0, ptr %i.av, align 4, !tbaa !321
  br label %bb.q

bb.q:                                             ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream10get_configEm.exit49, %.critedge3
  store i32 %3, ptr %i.l, align 8, !tbaa !316
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5boost5beast4zlib6detail14deflate_stream7doWriteERNS1_8z_paramsENS_8optionalINS1_5FlushEEERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(5928) %0, ptr noundef nonnull align 8 dereferenceable(52) %1, ptr nofree noundef readonly align 4 captures(none) dead_on_return %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::invalid_argument", align 8 ; 5 uses
  %5 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !317, !range !194, !noundef !146
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN5boost5beast4zlib6detail14deflate_stream10maybe_initEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost5beast4zlib6detail14deflate_stream4initEv(ptr noundef nonnull align 8 dereferenceable(5928) %0)
  br label %_ZN5boost5beast4zlib6detail14deflate_stream10maybe_initEv.exit

_ZN5boost5beast4zlib6detail14deflate_stream10maybe_initEv.exit: ; preds = %bb.a, %bb.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !326
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream10maybe_initEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !327
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  call void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.187)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  store ptr @.str.182, ptr %5, align 8, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.188, ptr %i.h, align 8, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 364, ptr %i.i, align 8, !tbaa !76
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 69, ptr %i.j, align 4, !tbaa !77
  invoke void @_ZN5boost15throw_exceptionISt16invalid_argumentEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #49
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  call void @_ZNSt16invalid_argumentD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48
  resume { ptr, i32 } %i.k

bb.g:                                             ; preds = %bb.c, %_ZN5boost5beast4zlib6detail14deflate_stream10maybe_initEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !328
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !329  ; 3 uses
  %i.q = icmp eq i32 %i.p, 666
  br i1 %i.q, label %bb.i, label %.critedge2

bb.i:                                             ; preds = %bb.h
  %i.r = load i8, ptr %2, align 4, !tbaa !330, !range !194, !noundef !146
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp eq i32 %i.u, 5
  %.not224 = select i1 %i.s, i1 %i.v, i1 false
  br i1 %.not224, label %.critedge2, label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.i
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !66, !noalias !1106
  %i.x = and i64 %i.w, -2
  %switch.i.i.i.i = icmp eq i64 %i.x, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %.critedge
  %i.y = load ptr, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, align 8, !tbaa !61, !noalias !1106
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !1106
  %i.ab = tail call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i32 noundef 4) #48, !noalias !1106, !inline_history !36
  br i1 %i.ab, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %bb.j

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %.critedge, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit
  br label %bb.j

bb.j:                                             ; preds = %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %i.ac = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit ]
  %i.ad = or disjoint i64 %i.ac, ptrtoint (ptr @_ZZN5boost5beast4zlib6detail14deflate_stream7doWriteERNS1_8z_paramsENS_8optionalINS1_5FlushEEERNS_6system10error_codeEE7loc_bb_ to i64)
  store i64 4, ptr %3, align 8
end_hunk_0
begin_hunk_1_@_ZN5boost5beast4zlib6detail14deflate_stream14compress_blockEPKNS3_7ct_dataES6_:bb.a
  %i.hi = add nsw i32 %i.gf, -16
  %i.hj = add nsw i32 %i.hi, %i.he
  br label %.sink.split

bb.q:                                             ; preds = %bb.o
  %i.hk = shl nsw i32 %i.gk, %storemerge.i.i36
  %i.hl = trunc i32 %i.hk to i16
  %i.hm = or i16 %i.gb, %i.hl
  %i.hn = add nsw i32 %storemerge.i.i36, %i.gf
  br label %.sink.split

.sink.split:                                      ; preds = %bb.q, %bb.p, %bb.e, %bb.d
  %.sink.sink = phi i16 [ %i.am, %bb.e ], [ %i.bd, %bb.d ], [ %i.hh, %bb.p ], [ %i.hm, %bb.q ] ; 2 uses
  %storemerge.i.i.sink = phi i32 [ %i.bg, %bb.e ], [ %i.bf, %bb.d ], [ %i.hj, %bb.p ], [ %i.hn, %bb.q ] ; 2 uses
  store i16 %.sink.sink, ptr %.phi.trans.insert50, align 4, !tbaa !335
  store i32 %storemerge.i.i.sink, ptr %i.d, align 8, !tbaa !334
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %_ZN5boost5beast4zlib6detail14deflate_stream9send_codeEiPKNS3_7ct_dataE.exit37
  %i.ho = phi i16 [ %i.gb, %_ZN5boost5beast4zlib6detail14deflate_stream9send_codeEiPKNS3_7ct_dataE.exit37 ], [ %.sink.sink, %.sink.split ]
  %i.hp = phi i32 [ %storemerge.i.i36, %_ZN5boost5beast4zlib6detail14deflate_stream9send_codeEiPKNS3_7ct_dataE.exit37 ], [ %storemerge.i.i.sink, %.sink.split ]
  %i.hq = load i32, ptr %i.a, align 4, !tbaa !370
  %i.hr = icmp ult i32 %i.t, %i.hq
  br i1 %i.hr, label %bb.b, label %.loopexit, !llvm.loop !1144

.loopexit:                                        ; preds = %bb.r, %..loopexit_crit_edge
  %i.hs = phi i16 [ %.pre51, %..loopexit_crit_edge ], [ %i.ho, %bb.r ]
  %i.ht = phi i32 [ %.pre49, %..loopexit_crit_edge ], [ %i.hp, %bb.r ] ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !290
  %i.hw = zext i16 %i.hv to i32                   ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 1026
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !289
  %i.hz = zext i16 %i.hy to i32                   ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 2 uses
  %i.ib = sub nsw i32 16, %i.hz
  %i.ic = icmp sgt i32 %i.ht, %i.ib
  %i.id = shl i32 %i.hw, %i.ht
  %i.ie = trunc i32 %i.id to i16
  %i.if = or i16 %i.hs, %i.ie                     ; 3 uses
  br i1 %i.ic, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.loopexit
  %i.ig = trunc i16 %i.if to i8
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !336
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !325 ; 2 uses
  %i.il = add i32 %i.ik, 1
  store i32 %i.il, ptr %i.ij, align 8, !tbaa !325
  %i.im = zext i32 %i.ik to i64
  %i.in = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.im
  store i8 %i.ig, ptr %i.in, align 1, !tbaa !58
  %i.io = lshr i16 %i.if, 8
  %i.ip = trunc nuw i16 %i.io to i8
  %i.iq = load ptr, ptr %i.ih, align 8, !tbaa !336
  %i.ir = load i32, ptr %i.ij, align 8, !tbaa !325 ; 2 uses
  %i.is = add i32 %i.ir, 1
  store i32 %i.is, ptr %i.ij, align 8, !tbaa !325
  %i.it = zext i32 %i.ir to i64
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.it
  store i8 %i.ip, ptr %i.iu, align 1, !tbaa !58
  %i.iv = load i32, ptr %i.ia, align 8, !tbaa !334 ; 2 uses
  %i.iw = sub nsw i32 16, %i.iv
  %i.ix = lshr i32 %i.hw, %i.iw
  %i.iy = trunc nuw i32 %i.ix to i16
  %i.iz = add nsw i32 %i.hz, -16
  %i.ja = add nsw i32 %i.iz, %i.iv
  br label %_ZN5boost5beast4zlib6detail14deflate_stream9send_codeEiPKNS3_7ct_dataE.exit41

bb.t:                                             ; preds = %.loopexit
  %i.jb = add nsw i32 %i.ht, %i.hz
  br label %_ZN5boost5beast4zlib6detail14deflate_stream9send_codeEiPKNS3_7ct_dataE.exit41

_ZN5boost5beast4zlib6detail14deflate_stream9send_codeEiPKNS3_7ct_dataE.exit41: ; preds = %bb.s, %bb.t
  %.sink46 = phi i16 [ %i.iy, %bb.s ], [ %i.if, %bb.t ]
  %storemerge.i.i40 = phi i32 [ %i.ja, %bb.s ], [ %i.jb, %bb.t ]
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 5916
  store i16 %.sink46, ptr %i.jc, align 4, !tbaa !335
  store i32 %storemerge.i.i40, ptr %i.ia, align 8, !tbaa !334
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN5boost5beast4zlib6detail14deflate_stream16detect_data_typeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(5928) %0) local_unnamed_addr #26 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 5 uses
  %i.b = load <8 x i16>, ptr %i.a, align 4
  %i.c = shufflevector <8 x i16> %i.b, <8 x i16> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.e = load i16, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.g = load i16, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.i = load i16, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.k = load i16, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.m = load i16, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.o = load i16, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.q = load i16, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.s = load <15 x i16>, ptr %i.r, align 8
  %i.t = insertelement <16 x i16> %i.c, i16 %i.e, i64 1
  %i.u = insertelement <16 x i16> %i.t, i16 %i.g, i64 2
  %i.v = insertelement <16 x i16> %i.u, i16 %i.i, i64 3
  %i.w = insertelement <16 x i16> %i.v, i16 %i.k, i64 4
  %i.x = insertelement <16 x i16> %i.w, i16 %i.m, i64 5
  %i.y = insertelement <16 x i16> %i.x, i16 %i.o, i64 6
  %i.z = insertelement <16 x i16> %i.y, i16 %i.q, i64 7
  %i.aa = shufflevector <15 x i16> %i.s, <15 x i16> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ab = shufflevector <16 x i16> %i.z, <16 x i16> %i.aa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %.fr = freeze <16 x i16> %i.ab
  %i.ac = icmp eq <16 x i16> %.fr, zeroinitializer ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ae = load <8 x i16>, ptr %i.ad, align 8
  %i.af = shufflevector <8 x i16> %i.ae, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ah = load i16, ptr %i.ag, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.aj = load i16, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.al = load i16, ptr %i.ak, align 4
  %i.am = insertelement <4 x i16> %i.af, i16 %i.ah, i64 1
  %i.an = insertelement <4 x i16> %i.am, i16 %i.aj, i64 2
  %i.ao = insertelement <4 x i16> %i.an, i16 %i.al, i64 3
  %.fr111 = freeze <4 x i16> %i.ao
  %i.ap = icmp eq <4 x i16> %.fr111, zeroinitializer
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ar = load i16, ptr %i.aq, align 8
  %.not15.29 = icmp eq i16 %i.ar, 0
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.at = load i16, ptr %i.as, align 4
  %.fr112 = freeze i16 %i.at
  %.not15.30 = icmp eq i16 %.fr112, 0
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.av = load i16, ptr %i.au, align 8
  %.not15.31 = icmp eq i16 %i.av, 0
  %i.aw = shufflevector <16 x i1> %i.ac, <16 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = and <4 x i1> %i.aw, %i.ap
  %i.ax = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ay = shufflevector <16 x i1> %i.ax, <16 x i1> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = icmp eq i16 %i.az, -1
  %op.rdx = select i1 %i.ba, i1 %.not15.29, i1 false
  %i.bb = freeze i1 %op.rdx
  %i.bc = and i1 %i.bb, %.not15.30
  %op.rdx110 = select i1 %i.bc, i1 %.not15.31, i1 false
  br i1 %op.rdx110, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.be = load i16, ptr %i.bd, align 8, !tbaa !290
  %.not = icmp eq i16 %i.be, 0
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.bg = load i16, ptr %i.bf, align 4
  %.not11 = icmp eq i16 %i.bg, 0
  %or.cond106 = select i1 %.not, i1 %.not11, i1 false
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bi = load i16, ptr %i.bh, align 8
  %.not12 = icmp eq i16 %i.bi, 0
  %or.cond108 = select i1 %or.cond106, i1 %.not12, i1 false
  br i1 %or.cond108, label %.preheader, label %.loopexit

.preheader.1:                                     ; preds = %.preheader
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = load i16, ptr %i.bk, align 8, !tbaa !290
  %.not13.1 = icmp eq i16 %i.bl, 0
  br i1 %.not13.1, label %.preheader.2, label %.loopexit

.preheader.2:                                     ; preds = %.preheader.1
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i16, ptr %i.bn, align 4, !tbaa !290
  %.not13.2 = icmp eq i16 %i.bo, 0
  br i1 %.not13.2, label %.preheader.3, label %.loopexit

.preheader.3:                                     ; preds = %.preheader.2
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.br = load i16, ptr %i.bq, align 8, !tbaa !290
  %.not13.3 = icmp eq i16 %i.br, 0
  br i1 %.not13.3, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.preheader.3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 256
  br i1 %exitcond.not.3, label %.loopexit, label %.preheader, !llvm.loop !1145

.preheader:                                       ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %bb.c ], [ 32, %bb.b ] ; 5 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bt = load i16, ptr %i.bs, align 4, !tbaa !290
  %.not13 = icmp eq i16 %i.bt, 0
  br i1 %.not13, label %.preheader.1, label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %bb.c, %bb.a, %bb.b
  %.010 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 0, %bb.c ], [ 1, %.preheader ], [ 1, %.preheader.1 ], [ 1, %.preheader.3 ], [ 1, %.preheader.2 ]
  ret i32 %.010
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN5boost5beast4zlib6detail14deflate_stream9bi_windupEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(5928) %0) local_unnamed_addr #25 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !334  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5916
  %i.e = load i16, ptr %i.d, align 4, !tbaa !335  ; 2 uses
  %i.f = trunc i16 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !336
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !325  ; 2 uses
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8, !tbaa !325
  %i.l = zext i32 %i.j to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  store i8 %i.f, ptr %i.m, align 1, !tbaa !58
  %i.n = lshr i16 %i.e, 8
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !336
  %i.p = load i32, ptr %i.i, align 8, !tbaa !325  ; 2 uses
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.i, align 8, !tbaa !325
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.r = icmp sgt i32 %i.b, 0
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5916
  %i.t = load i16, ptr %i.s, align 4, !tbaa !335
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !336
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !325  ; 2 uses
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 8, !tbaa !325
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d
  %.sink4 = phi i32 [ %i.x, %bb.d ], [ %i.p, %bb.b ]
  %.sink2 = phi ptr [ %i.v, %bb.d ], [ %i.o, %bb.b ]
  %.sink.in = phi i16 [ %i.t, %bb.d ], [ %i.n, %bb.b ]
  %.sink = trunc i16 %.sink.in to i8
  %i.z = zext i32 %.sink4 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %.sink2, i64 %i.z
  store i8 %.sink, ptr %i.aa, align 1, !tbaa !58
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5916
  store i16 0, ptr %i.ab, align 4, !tbaa !335
  store i32 0, ptr %i.a, align 8, !tbaa !334
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN5boost5beast4zlib6detail14deflate_stream8bi_flushEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(5928) %0) local_unnamed_addr #25 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !334  ; 2 uses
  %i.c = icmp eq i32 %i.b, 16
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5916 ; 2 uses
  %i.e = load i16, ptr %i.d, align 4, !tbaa !335  ; 2 uses
  %i.f = trunc i16 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !336
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !325  ; 2 uses
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8, !tbaa !325
  %i.l = zext i32 %i.j to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  store i8 %i.f, ptr %i.m, align 1, !tbaa !58
  %i.n = lshr i16 %i.e, 8
  %i.o = trunc nuw i16 %i.n to i8
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !336
  %i.q = load i32, ptr %i.i, align 8, !tbaa !325  ; 2 uses
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.i, align 8, !tbaa !325
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.s
  store i8 %i.o, ptr %i.t, align 1, !tbaa !58
  store i16 0, ptr %i.d, align 4, !tbaa !335
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.u = icmp sgt i32 %i.b, 7
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 5916 ; 3 uses
  %i.w = load i16, ptr %i.v, align 4, !tbaa !335
  %i.x = trunc i16 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !336
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !325 ; 2 uses
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !325
  %i.ad = zext i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ad
  store i8 %i.x, ptr %i.ae, align 1, !tbaa !58
  %i.af = load i16, ptr %i.v, align 4, !tbaa !335
  %i.ag = lshr i16 %i.af, 8
  store i16 %i.ag, ptr %i.v, align 4, !tbaa !335
  %i.ah = load i32, ptr %i.a, align 8, !tbaa !334
  %i.ai = add nsw i32 %i.ah, -8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d
  %.sink = phi i32 [ %i.ai, %bb.d ], [ 0, %bb.b ]
  store i32 %.sink, ptr %i.a, align 8, !tbaa !334
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN5boost5beast4zlib6detail14deflate_stream10copy_blockEPcji(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(5928) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !334  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5916
  %i.e = load i16, ptr %i.d, align 4, !tbaa !335  ; 2 uses
  %i.f = trunc i16 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !336
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !325  ; 2 uses
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8, !tbaa !325
  %i.l = zext i32 %i.j to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  store i8 %i.f, ptr %i.m, align 1, !tbaa !58
  %i.n = lshr i16 %i.e, 8
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !336
  %i.p = load i32, ptr %i.i, align 8, !tbaa !325  ; 2 uses
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.i, align 8, !tbaa !325
  br label %.sink.split.i

bb.c:                                             ; preds = %bb.a
  %i.r = icmp sgt i32 %i.b, 0
  br i1 %i.r, label %bb.d, label %_ZN5boost5beast4zlib6detail14deflate_stream9bi_windupEv.exit

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5916
  %i.t = load i16, ptr %i.s, align 4, !tbaa !335
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !336
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !325  ; 2 uses
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 8, !tbaa !325
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.d, %bb.b
  %.sink4.i = phi i32 [ %i.x, %bb.d ], [ %i.p, %bb.b ]
  %.sink2.i = phi ptr [ %i.v, %bb.d ], [ %i.o, %bb.b ]
  %.sink.in.i = phi i16 [ %i.t, %bb.d ], [ %i.n, %bb.b ]
  %.sink.i = trunc i16 %.sink.in.i to i8
  %i.z = zext i32 %.sink4.i to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %.sink2.i, i64 %i.z
  store i8 %.sink.i, ptr %i.aa, align 1, !tbaa !58
  br label %_ZN5boost5beast4zlib6detail14deflate_stream9bi_windupEv.exit

_ZN5boost5beast4zlib6detail14deflate_stream9bi_windupEv.exit: ; preds = %bb.c, %.sink.split.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5916
  store i16 0, ptr %i.ab, align 4, !tbaa !335
  store i32 0, ptr %i.a, align 8, !tbaa !334
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream9bi_windupEv.exit
  %i.ac = trunc i32 %2 to i16
  %i.ad = trunc i32 %2 to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !336
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !325 ; 2 uses
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !325
  %i.aj = zext i32 %i.ah to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.aj
end_hunk_1
