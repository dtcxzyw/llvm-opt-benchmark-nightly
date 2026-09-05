Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/gtest-all?download=true
inline.NumInlined: 9435
inline.NumDeleted: 2438
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN7testing8internalL18GTestIsInitializedEv:bb.a
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !81
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #56
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.k
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %_ZN7testing8internal8GetArgvsB5cxx11Ev.exit
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.e) #56
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.f
  ret i1 %i.m
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7testing8internalL30AppendToTestWarningsOutputFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef ptr @getenv(ptr noundef nonnull @_ZN7testingL23kTestWarningsOutputFileE) #55 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.519) ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !78
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !79
  %i.h = tail call i64 @fwrite(ptr noundef %i.e, i64 noundef 1, i64 noundef %i.g, ptr noundef nonnull %i.c)
  %i.i = load i64, ptr %i.f, align 8, !tbaa !79
  %i.j = icmp eq i64 %i.h, %i.i
  br i1 %i.j, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #55
  call void @_ZN7testing8internal8GTestLogC2ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 3, ptr noundef nonnull @.str.139, i32 noundef 5932)
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.520, i64 noundef 72)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  call void @_ZN7testing8internal8GTestLogD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #55
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #55
  br label %bb.j

bb.f:                                             ; preds = %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = tail call noundef i32 @fclose(ptr noundef nonnull %i.c)
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call void @_ZN7testing8internal8GTestLogC2ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.139, i32 noundef 5933)
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.521, i64 noundef 43)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %bb.g
  call void @_ZN7testing8internal8GTestLogD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  br label %bb.j

bb.i:                                             ; preds = %bb.b, %bb.f, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13, %bb.a
  ret void

bb.j:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.l, %bb.e ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7testing8internal30WriteToShardStatusFileIfNeededEv() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @getenv(ptr noundef nonnull @_ZN7testingL20kTestShardStatusFileE) #55 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.390) ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @_ZN7testing8internalL13ColoredPrintfENS0_12_GLOBAL__N_110GTestColorEPKcz(i32 noundef 1, ptr noundef nonnull @.str.391, ptr noundef nonnull %i.a, ptr noundef nonnull @_ZN7testingL20kTestShardStatusFileE)
  %i.d = load ptr, ptr @stdout, align 8, !tbaa !208
  %i.e = tail call i32 @fflush(ptr noundef %i.d)  ; 0 uses
  tail call void @exit(i32 noundef 1) #59
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN7testing8internal12UnitTestImpl11FilterTestsENS1_18ReactionToShardingE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(713) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.testing::internal::(anonymous namespace)::PositiveAndNegativeUnitTestFilter", align 8 ; 23 uses
  %3 = alloca %"class.testing::internal::(anonymous namespace)::UnitTestFilter", align 8 ; 17 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = icmp eq i32 %1, 0                        ; 2 uses
  %i.c = load i32, ptr @_ZN7testing24FLAGS_gtest_total_shardsE, align 4
  %i.d = select i1 %i.b, i32 %i.c, i32 -1
  %i.e = load i32, ptr @_ZN7testing23FLAGS_gtest_shard_indexE, align 4
  %i.f = select i1 %i.b, i32 %i.e, i32 -1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call fastcc void @_ZN7testing8internal12_GLOBAL__N_133PositiveAndNegativeUnitTestFilterC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(160) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 23, ptr %i.a, align 8, !tbaa !80
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.m     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.h, ptr %4, align 8, !tbaa !78
  %i.i = load i64, ptr %i.a, align 8, !tbaa !80   ; 3 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.h, ptr noundef nonnull align 16 dereferenceable(23) @_ZN7testingL18kDisableTestFilterE, i64 23, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !79
  %i.k = load ptr, ptr %4, align 8, !tbaa !78
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  invoke fastcc void @_ZN7testing8internal12_GLOBAL__N_114UnitTestFilterC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.a unwind label %bb.n

bb.a:                                             ; preds = %.noexc
  %i.m = load ptr, ptr %4, align 8, !tbaa !78     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.g
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.o = load i64, ptr %i.g, align 8, !tbaa !81
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !374  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !374  ; 3 uses
  %.not107125 = icmp eq ptr %i.r, %i.t
  br i1 %.not107125, label %._crit_edge130, label %.lr.ph129

.lr.ph129:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %.lr.ph129.split.us, label %.lr.ph129.split

.lr.ph129.split.us:                               ; preds = %.lr.ph129, %._crit_edge.split.us.us
  %.0128.us = phi i32 [ %.1.lcssa.us, %._crit_edge.split.us.us ], [ 0, %.lr.ph129 ] ; 2 uses
  %.sroa.0103.0126.us = phi ptr [ %5, %._crit_edge.split.us.us ], [ %i.r, %.lr.ph129 ] ; 2 uses
  %i.u = load ptr, ptr %.sroa.0103.0126.us, align 8, !tbaa !375 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 112 ; 3 uses
  store i8 0, ptr %i.w, align 8, !tbaa !388
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !391  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !391 ; 2 uses
  %.not108115.us = icmp eq ptr %i.y, %i.aa
  br i1 %.not108115.us, label %._crit_edge.split.us.us, label %.lr.ph.us

._crit_edge.split.us.us:                          ; preds = %bb.f, %.lr.ph129.split.us
  %.1.lcssa.us = phi i32 [ %.0128.us, %.lr.ph129.split.us ], [ %i.as, %bb.f ] ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.0103.0126.us, i64 8 ; 2 uses
  %.not107.us = icmp eq ptr %5, %i.t
  br i1 %.not107.us, label %._crit_edge130, label %.lr.ph129.split.us

.lr.ph.us:                                        ; preds = %.lr.ph129.split.us
  %i.ab = getelementptr i8, ptr %i.u, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.us
  %.1118.us.us = phi i32 [ %.0128.us, %.lr.ph.us ], [ %i.as, %bb.f ]
  %.sroa.099.0116.us.us = phi ptr [ %i.y, %.lr.ph.us ], [ %i.ay, %bb.f ] ; 2 uses
  %i.ac = load ptr, ptr %.sroa.099.0116.us.us, align 8, !tbaa !392 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  %i.ae = invoke fastcc noundef zeroext i1 @_ZNK7testing8internal12_GLOBAL__N_114UnitTestFilter11MatchesNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %bb.c unwind label %.split.us.split.us

bb.c:                                             ; preds = %bb.b
  br i1 %i.ae, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = invoke fastcc noundef zeroext i1 @_ZNK7testing8internal12_GLOBAL__N_114UnitTestFilter11MatchesNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %bb.e unwind label %.split.us.split.us

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ag = phi i1 [ true, %bb.c ], [ %i.af, %bb.d ] ; 2 uses
  %i.ah = zext i1 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 129
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !399
  %.val.us.us = load ptr, ptr %i.v, align 8, !tbaa !78, !noalias !360
  %.val53.us.us = load i64, ptr %i.ab, align 8, !tbaa !79, !noalias !360
  %i.aj = invoke fastcc noundef zeroext i1 @_ZNK7testing8internal12_GLOBAL__N_133PositiveAndNegativeUnitTestFilter11MatchesTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr %.val.us.us, i64 %.val53.us.us, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %bb.f unwind label %.split121.us.split.us ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ak = zext i1 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 130
  store i8 %i.ak, ptr %i.al, align 2, !tbaa !398
  %i.am = load i8, ptr @_ZN7testing35FLAGS_gtest_also_run_disabled_testsE, align 1, !tbaa !82, !range !70, !noundef !71
  %i.an = trunc nuw i8 %i.am to i1
  %.not52.us.us = xor i1 %i.ag, true
  %not.or.cond.us.us = or i1 %.not52.us.us, %i.an
  %i.ao = and i1 %i.aj, %not.or.cond.us.us        ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 131
  store i8 0, ptr %i.ap, align 1, !tbaa !500
  %i.aq = zext i1 %i.ao to i8
  %i.ar = zext i1 %i.ao to i32
  %i.as = add nsw i32 %.1118.us.us, %i.ar         ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  store i8 %i.aq, ptr %i.at, align 8, !tbaa !395
  %i.au = load i8, ptr %i.w, align 8, !tbaa !388, !range !70, !noundef !71
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = select i1 %i.av, i1 true, i1 %i.ao
  %i.ax = zext i1 %i.aw to i8
  store i8 %i.ax, ptr %i.w, align 8, !tbaa !388
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.099.0116.us.us, i64 8 ; 2 uses
  %.not108.us.us = icmp eq ptr %i.ay, %i.aa
  br i1 %.not108.us.us, label %._crit_edge.split.us.us, label %bb.b

.split.us.split.us:                               ; preds = %bb.d, %bb.b
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.split121.us.split.us:                            ; preds = %bb.e
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

._crit_edge130:                                   ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0.lcssa = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.1.lcssa.us, %._crit_edge.split.us.us ], [ %.1.lcssa, %._crit_edge.split ]
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !353 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge130, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.be, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i ], [ %i.bd, %._crit_edge130 ] ; 4 uses
  %i.be = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !354 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !78 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !81
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #56
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 48) #56
  %.not.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !15

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i, %._crit_edge130
  %i.bl = load ptr, ptr %i.bb, align 8, !tbaa !355
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !356
  %i.bo = shl i64 %i.bn, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bl, i8 0, i64 %i.bo, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  %i.bp = load ptr, ptr %i.bb, align 8, !tbaa !355 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i
  %i.bs = load i64, ptr %i.bm, align 8, !tbaa !356
  %i.bt = shl i64 %i.bs, 3
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #56
  br label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit.i

_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit.i: ; preds = %bb.g, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i
  %i.bu = load ptr, ptr %3, align 8, !tbaa !252   ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !250 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bu, %i.bw
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.bu, %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit.i ] ; 3 uses
  %i.bx = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !78 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !81
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #56
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cc, %i.bw
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !252
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit.i
  %i.cd = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.bu, %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i1.i.i, label %_ZN7testing8internal12_GLOBAL__N_114UnitTestFilterD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !251
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.ci) #56
  br label %_ZN7testing8internal12_GLOBAL__N_114UnitTestFilterD2Ev.exit

_ZN7testing8internal12_GLOBAL__N_114UnitTestFilterD2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !353 ; 2 uses
  %.not5.i.i.i.i.i78 = icmp eq ptr %i.cm, null
  br i1 %.not5.i.i.i.i.i78, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i84, label %.lr.ph.i.i.i.i.i79

.lr.ph.i.i.i.i.i79:                               ; preds = %_ZN7testing8internal12_GLOBAL__N_114UnitTestFilterD2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i82
  %.06.i.i.i.i.i80 = phi ptr [ %i.cn, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i82 ], [ %i.cm, %_ZN7testing8internal12_GLOBAL__N_114UnitTestFilterD2Ev.exit ] ; 4 uses
  %i.cn = load ptr, ptr %.06.i.i.i.i.i80, align 8, !tbaa !354 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i80, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !78 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i80, i64 24 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i81: ; preds = %.lr.ph.i.i.i.i.i79
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !81
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #56
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i82

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i82: ; preds = %.lr.ph.i.i.i.i.i79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i81
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i80, i64 noundef 48) #56
  %.not.i.i.i.i.i83 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i.i83, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i84, label %.lr.ph.i.i.i.i.i79, !llvm.loop !15

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i84: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i82, %_ZN7testing8internal12_GLOBAL__N_114UnitTestFilterD2Ev.exit
  %i.cu = load ptr, ptr %i.ck, align 8, !tbaa !355
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !356
  %i.cx = shl i64 %i.cw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cu, i8 0, i64 %i.cx, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i8 0, i64 16, i1 false)
  %i.cy = load ptr, ptr %i.ck, align 8, !tbaa !355 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit.i85, label %bb.i

bb.i:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i84
  %i.db = load i64, ptr %i.cv, align 8, !tbaa !356
  %i.dc = shl i64 %i.db, 3
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #56
  br label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit.i85

_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit.i85: ; preds = %bb.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i84
  %i.dd = load ptr, ptr %i.cj, align 8, !tbaa !252 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !250 ; 2 uses
  %.not4.i.i.i.i86 = icmp eq ptr %i.dd, %i.df
  br i1 %.not4.i.i.i.i86, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i94, label %.lr.ph.i.i.i.i87

.lr.ph.i.i.i.i87:                                 ; preds = %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit.i85, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i90
  %.05.i.i.i.i88 = phi ptr [ %i.dl, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i90 ], [ %i.dd, %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit.i85 ] ; 3 uses
  %i.dg = load ptr, ptr %.05.i.i.i.i88, align 8, !tbaa !78 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i88, i64 16 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i89: ; preds = %.lr.ph.i.i.i.i87
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !81
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #56
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i90

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i90: ; preds = %.lr.ph.i.i.i.i87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i89
  %i.dl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i88, i64 32 ; 2 uses
  %.not.i.i.i.i91 = icmp eq ptr %i.dl, %i.df
  br i1 %.not.i.i.i.i91, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i92, label %.lr.ph.i.i.i.i87, !llvm.loop !5

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i92: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i90
  %.pr.i.i93 = load ptr, ptr %i.cj, align 8, !tbaa !252
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i94

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i94: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i92, %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit.i85
  %i.dm = phi ptr [ %.pr.i.i93, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i92 ], [ %i.dd, %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit.i85 ] ; 3 uses
  %.not.i.i1.i.i95 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i1.i.i95, label %_ZN7testing8internal12_GLOBAL__N_114UnitTestFilterD2Ev.exit98, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i94
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !251
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dr) #56
  br label %_ZN7testing8internal12_GLOBAL__N_114UnitTestFilterD2Ev.exit98

_ZN7testing8internal12_GLOBAL__N_114UnitTestFilterD2Ev.exit98: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i94, %bb.j
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !353 ; 2 uses
  %.not5.i.i.i.i.i57 = icmp eq ptr %i.du, null
  br i1 %.not5.i.i.i.i.i57, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i63, label %.lr.ph.i.i.i.i.i58

.lr.ph.i.i.i.i.i58:                               ; preds = %_ZN7testing8internal12_GLOBAL__N_114UnitTestFilterD2Ev.exit98, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i61
  %.06.i.i.i.i.i59 = phi ptr [ %i.dv, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i61 ], [ %i.du, %_ZN7testing8internal12_GLOBAL__N_114UnitTestFilterD2Ev.exit98 ] ; 4 uses
  %i.dv = load ptr, ptr %.06.i.i.i.i.i59, align 8, !tbaa !354 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i59, i64 8
end_hunk_0
