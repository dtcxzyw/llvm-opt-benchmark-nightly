Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/test_push_parser?download=true
inline.NumInlined: 712
inline.NumDeleted: 166
begin_hunk_0_@_ZN12_GLOBAL__N_125test_skip_longer_pmessageEv:bb.a
  %i.x = load i8, ptr %i.w, align 8, !tbaa !54, !range !19, !noundef !20
  %i.y = trunc nuw i8 %i.x to i1
  %spec.select.i = select i1 %i.y, ptr null, ptr %3
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.aa = invoke noundef zeroext i1 @_ZN5boost6detail16test_all_eq_implISoNS_5redis11push_parser8iteratorEPKNS2_9push_viewEEEbRT_PKciSB_T0_SC_T1_SD_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.5, i32 noundef 432, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN12_GLOBAL__N_125test_skip_longer_pmessageEv, ptr %spec.select.i, ptr null, ptr noundef nonnull %4, ptr noundef nonnull %i.z)
          to label %bb.f unwind label %bb.j       ; 0 uses

bb.f:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.ab = load ptr, ptr %i.n, align 8, !tbaa !33  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !55
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #23
  br label %_ZNSt6vectorIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EED2Ev.exit.i

_ZNSt6vectorIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EED2Ev.exit.i: ; preds = %bb.g, %bb.f
  %i.ah = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i9, label %_ZN5boost5redis5resp39flat_treeD2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %_ZNSt6vectorIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EED2Ev.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.ah) #23
  br label %_ZN5boost5redis5resp39flat_treeD2Ev.exit

_ZN5boost5redis5resp39flat_treeD2Ev.exit:         ; preds = %_ZNSt6vectorIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EED2Ev.exit.i, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  ret void

bb.h:                                             ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %1, align 8, !tbaa !23    ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i10, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.an) #23
  br label %.body

.body:                                            ; preds = %bb.b, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.ai, %bb.i ], [ %i.ai, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.k

bb.j:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZN5boost5redis5resp39flat_treeD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.body
  %.pn6 = phi { ptr, i32 } [ %i.ao, %bb.j ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  resume { ptr, i32 } %.pn6
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost13report_errorsEv() local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5boost6detail12test_resultsEv.exit, !prof !57

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #20
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5boost6detail12test_resultsEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !59
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !60
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #20 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #20
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZN5boost6detail12test_resultsEv.exit:            ; preds = %bb.a, %bb.b, %bb.c
  store i8 1, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !59
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !61 ; 4 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZN5boost6detail12test_resultsEv.exit
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.149, i64 noundef 19) ; 0 uses
  %i.h = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !63
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 240
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !78   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load i8, ptr %i.n, align 8, !tbaa !84
  %.not.i1.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 67
  %i.q = load i8, ptr %i.p, align 1, !tbaa !56
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.m)
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef signext i8 %i.t(ptr noundef nonnull align 8 dereferenceable(570) %i.m, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i = phi i8 [ %i.q, %bb.f ], [ %i.u, %bb.g ]
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
  br label %bb.l

bb.h:                                             ; preds = %_ZN5boost6detail12test_resultsEv.exit
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.e) ; 6 uses
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.150, i64 noundef 6) ; 0 uses
  %i.y = icmp ne i32 %i.e, 1                      ; 2 uses
  %i.z = select i1 %i.y, ptr @.str.151, ptr @.str.51
  %i.aa = zext i1 %i.y to i64
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull %i.z, i64 noundef %i.aa) ; 0 uses
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.152, i64 noundef 10) ; 0 uses
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !63
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 240
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !78 ; 6 uses
  %.not.i.i.i7 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i7, label %bb.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8: ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !84
  %.not.i1.i.i9 = icmp eq i8 %i.ak, 0
  br i1 %.not.i1.i.i9, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 67
  %i.am = load i8, ptr %i.al, align 1, !tbaa !56
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ai)
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !63
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef signext i8 %i.ap(ptr noundef nonnull align 8 dereferenceable(570) %i.ai, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11: ; preds = %bb.j, %bb.k
  %.0.i.i.i10 = phi i8 [ %i.am, %bb.j ], [ %i.aq, %bb.k ]
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i8 noundef signext %.0.i.i.i10)
  br label %bb.l

bb.l:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %.sink = phi ptr [ %i.ar, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11 ], [ %i.v, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %.sink) ; 0 uses
  %i.at = tail call i32 @llvm.smin.i32(i32 %i.e, i32 255)
  ret i32 %i.at
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare void @_ZN5boost5redis6detail15tree_from_resp3ERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EENS_15source_locationE(ptr dead_on_unwind writable sret(%"class.boost::redis::resp3::flat_tree") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef byval(%"struct.boost::source_location") align 8) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost6detail16test_all_eq_implISoNS_5redis11push_parser8iteratorEPKNS2_9push_viewEEEbRT_PKciSB_T0_SC_T1_SD_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr %4, ptr %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %1, null                  ; 2 uses
  %.not.i59 = icmp eq ptr %3, null                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN5boost5redis11push_parser8iteratorppEv.exit61, %bb.a
  %.sroa.0.0 = phi ptr [ %4, %bb.a ], [ %spec.select82, %_ZN5boost5redis11push_parser8iteratorppEv.exit61 ] ; 3 uses
  %.045 = phi i64 [ 0, %bb.a ], [ %i.bn, %_ZN5boost5redis11push_parser8iteratorppEv.exit61 ] ; 5 uses
  %.044 = phi ptr [ %6, %bb.a ], [ %i.bl, %_ZN5boost5redis11push_parser8iteratorppEv.exit61 ] ; 3 uses
  %i.a = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.bm, %_ZN5boost5redis11push_parser8iteratorppEv.exit61 ] ; 2 uses
  %.not83100 = icmp eq ptr %.sroa.0.0, %5
  %.not101 = icmp eq ptr %.044, %7                ; 2 uses
  %or.cond102 = select i1 %.not83100, i1 true, i1 %.not101
  br i1 %or.cond102, label %bb.g, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZN5boost5rediseqERKNS0_9push_viewES3_.exit
  %.1106 = phi ptr [ %i.z, %_ZN5boost5rediseqERKNS0_9push_viewES3_.exit ], [ %.044, %bb.b ] ; 15 uses
  %.sroa.0.1103 = phi ptr [ %spec.select, %_ZN5boost5rediseqERKNS0_9push_viewES3_.exit ], [ %.sroa.0.0, %bb.b ] ; 17 uses
  %i.b = phi <2 x i64> [ %i.aa, %_ZN5boost5rediseqERKNS0_9push_viewES3_.exit ], [ %i.a, %bb.b ] ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.1103, i64 16
  %.sroa.05.0.copyload.i = load i64, ptr %i.c, align 8, !tbaa !12 ; 3 uses
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1103, i64 24
  %.sroa.26.0.copyload.i = load ptr, ptr %.sroa.26.0..sroa_idx.i, align 8, !tbaa !15
  %.sroa.03.0.copyload.i = load i64, ptr %.1106, align 8, !tbaa !12
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.1106, i64 8
  %.sroa.24.0.copyload.i = load ptr, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !15
  %i.d = icmp eq i64 %.sroa.05.0.copyload.i, %.sroa.03.0.copyload.i
  br i1 %i.d, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.lr.ph
  %i.e = icmp eq i64 %.sroa.05.0.copyload.i, 0
  br i1 %i.e, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %bcmp.i.i = tail call i32 @bcmp(ptr %.sroa.26.0.copyload.i, ptr %.sroa.24.0.copyload.i, i64 %.sroa.05.0.copyload.i)
  %i.f = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.f, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i, label %bb.g

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.1103, i64 48
  %i.h = load i8, ptr %i.g, align 8, !tbaa !18, !range !19, !noundef !20 ; 2 uses
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %.1106, i64 32
  %i.k = load i8, ptr %i.j, align 8, !tbaa !18, !range !19, !noundef !20
  %i.l = icmp eq i8 %i.h, %i.k                    ; 2 uses
  %brmerge.not.i.i = and i1 %i.l, %i.i
  br i1 %brmerge.not.i.i, label %bb.d, label %_ZSteqISt17basic_string_viewIcSt11char_traitsIcEES3_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS5_ERKSE_IS8_E.exit.i

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %.1106, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.1103, i64 32
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.n, align 8, !tbaa !12 ; 3 uses
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1103, i64 40
  %.sroa.22.0.copyload.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !15
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.m, align 8, !tbaa !12
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.1106, i64 24
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !15
  %i.o = icmp eq i64 %.sroa.01.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.p = icmp eq i64 %.sroa.01.0.copyload.i.i, 0
  br i1 %i.p, label %_ZSteqISt17basic_string_viewIcSt11char_traitsIcEES3_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS5_ERKSE_IS8_E.exit.thread16.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.e
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, i64 %.sroa.01.0.copyload.i.i)
  %i.q = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.q, label %_ZSteqISt17basic_string_viewIcSt11char_traitsIcEES3_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS5_ERKSE_IS8_E.exit.thread16.i, label %bb.g

_ZSteqISt17basic_string_viewIcSt11char_traitsIcEES3_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS5_ERKSE_IS8_E.exit.i: ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i
  br i1 %i.l, label %_ZSteqISt17basic_string_viewIcSt11char_traitsIcEES3_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS5_ERKSE_IS8_E.exit.thread16.i, label %bb.g

_ZSteqISt17basic_string_viewIcSt11char_traitsIcEES3_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS5_ERKSE_IS8_E.exit.thread16.i: ; preds = %_ZSteqISt17basic_string_viewIcSt11char_traitsIcEES3_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS5_ERKSE_IS8_E.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.1103, i64 56
  %.sroa.01.0.copyload.i = load i64, ptr %i.r, align 8, !tbaa !12 ; 3 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1103, i64 64
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %.1106, i64 40
  %.sroa.0.0.copyload.i = load i64, ptr %i.s, align 8, !tbaa !12
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.1106, i64 48
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !15
  %i.t = icmp eq i64 %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZSteqISt17basic_string_viewIcSt11char_traitsIcEES3_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS5_ERKSE_IS8_E.exit.thread16.i
  %i.u = icmp eq i64 %.sroa.01.0.copyload.i, 0
  br i1 %i.u, label %_ZN5boost5rediseqERKNS0_9push_viewES3_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i12.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i12.i: ; preds = %bb.f
  %bcmp.i13.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i, ptr %.sroa.2.0.copyload.i, i64 %.sroa.01.0.copyload.i)
  %i.v = icmp eq i32 %bcmp.i13.i, 0
  br i1 %i.v, label %_ZN5boost5rediseqERKNS0_9push_viewES3_.exit, label %bb.g

_ZN5boost5rediseqERKNS0_9push_viewES3_.exit:      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i12.i, %bb.f
  tail call void @_ZN5boost5redis11push_parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(73) %.sroa.0.1103) #20
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.1103, i64 72
  %i.x = load i8, ptr %i.w, align 8, !tbaa !54, !range !19, !noundef !20
  %i.y = trunc nuw i8 %i.x to i1
  %spec.select = select i1 %i.y, ptr null, ptr %.sroa.0.1103 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.1106, i64 56 ; 3 uses
  %i.aa = add nsw <2 x i64> %i.b, splat (i64 1)   ; 2 uses
  %.not83 = icmp eq ptr %spec.select, %5
  %.not = icmp eq ptr %i.z, %7                    ; 2 uses
  %or.cond = select i1 %.not83, i1 true, i1 %.not
  br i1 %or.cond, label %bb.g, label %.lr.ph, !llvm.loop !90

bb.g:                                             ; preds = %_ZN5boost5rediseqERKNS0_9push_viewES3_.exit, %_ZSteqISt17basic_string_viewIcSt11char_traitsIcEES3_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS5_ERKSE_IS8_E.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i12.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZSteqISt17basic_string_viewIcSt11char_traitsIcEES3_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS5_ERKSE_IS8_E.exit.thread16.i, %.lr.ph, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.d, %bb.b
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.0, %bb.b ], [ %.sroa.0.1103, %bb.d ], [ %.sroa.0.1103, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.sroa.0.1103, %.lr.ph ], [ %.sroa.0.1103, %_ZSteqISt17basic_string_viewIcSt11char_traitsIcEES3_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS5_ERKSE_IS8_E.exit.thread16.i ], [ %.sroa.0.1103, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.sroa.0.1103, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i12.i ], [ %.sroa.0.1103, %_ZSteqISt17basic_string_viewIcSt11char_traitsIcEES3_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS5_ERKSE_IS8_E.exit.i ], [ %spec.select, %_ZN5boost5rediseqERKNS0_9push_viewES3_.exit ] ; 7 uses
  %.1.lcssa = phi ptr [ %.044, %bb.b ], [ %.1106, %bb.d ], [ %.1106, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.1106, %.lr.ph ], [ %.1106, %_ZSteqISt17basic_string_viewIcSt11char_traitsIcEES3_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS5_ERKSE_IS8_E.exit.thread16.i ], [ %.1106, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.1106, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i12.i ], [ %.1106, %_ZSteqISt17basic_string_viewIcSt11char_traitsIcEES3_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS5_ERKSE_IS8_E.exit.i ], [ %i.z, %_ZN5boost5rediseqERKNS0_9push_viewES3_.exit ] ; 4 uses
  %.not.lcssa = phi i1 [ %.not101, %bb.b ], [ false, %bb.d ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ false, %.lr.ph ], [ false, %_ZSteqISt17basic_string_viewIcSt11char_traitsIcEES3_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS5_ERKSE_IS8_E.exit.thread16.i ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i12.i ], [ false, %_ZSteqISt17basic_string_viewIcSt11char_traitsIcEES3_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS5_ERKSE_IS8_E.exit.i ], [ %.not, %_ZN5boost5rediseqERKNS0_9push_viewES3_.exit ]
  %8 = phi <2 x i64> [ %i.a, %bb.b ], [ %i.b, %bb.d ], [ %i.b, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %i.b, %.lr.ph ], [ %i.b, %_ZSteqISt17basic_string_viewIcSt11char_traitsIcEES3_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS5_ERKSE_IS8_E.exit.thread16.i ], [ %i.b, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %i.b, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i12.i ], [ %i.b, %_ZSteqISt17basic_string_viewIcSt11char_traitsIcEES3_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS5_ERKSE_IS8_E.exit.i ], [ %i.aa, %_ZN5boost5rediseqERKNS0_9push_viewES3_.exit ] ; 4 uses
  %i.ab = icmp eq ptr %.sroa.0.1.lcssa, %5
  %or.cond58 = select i1 %i.ab, i1 true, i1 %.not.lcssa
  br i1 %or.cond58, label %.critedge.thread, label %9

9:                                                ; preds = %bb.g
  %10 = icmp eq i64 %.045, 0
  br i1 %10, label %bb.h, label %bb.m

bb.h:                                             ; preds = %9
  br i1 %.not.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %0, align 8, !tbaa !63
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !86
  %i.ai = or i32 %i.ah, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.af, i32 noundef %i.ai)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, i64 noundef %i.aj) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.i, %bb.j
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %2) ; 5 uses
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.11, i64 noundef 42) ; 0 uses
  br i1 %.not.i59, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !63
  %i.ap = getelementptr i8, ptr %i.ao, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %i.am, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !86
  %i.au = or i32 %i.at, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ar, i32 noundef %i.au)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.av = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #20
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull %3, i64 noundef %i.av) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %bb.k, %bb.l
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.12, i64 noundef 2) ; 0 uses
  br label %_ZN5boost5redis11push_parser8iteratorppEv.exit61

bb.m:                                             ; preds = %9
  %i.ay = icmp samesign ugt i64 %.045, 7
  br i1 %i.ay, label %bb.n, label %_ZN5boost5redis11push_parser8iteratorppEv.exit61

bb.n:                                             ; preds = %bb.m
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.13, i64 noundef 4) ; 0 uses
  br label %.critedge.thread

_ZN5boost5redis11push_parser8iteratorppEv.exit61: ; preds = %bb.m, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.14, i64 noundef 2) ; 0 uses
  %i.bb = extractelement <2 x i64> %8, i64 0
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.bb) ; 2 uses
  %i.bd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.15, i64 noundef 3) ; 0 uses
  %11 = getelementptr inbounds nuw i8, ptr %.sroa.0.1.lcssa, i64 16
  %i.be = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5redislsERSoRKNS0_9push_viewE(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 8 dereferenceable(56) %11) ; 2 uses
  %i.bf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull @.str.16, i64 noundef 6) ; 0 uses
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5redislsERSoRKNS0_9push_viewE(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull align 8 dereferenceable(56) %.1.lcssa)
  %i.bh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull @.str.17, i64 noundef 1) ; 0 uses
  tail call void @_ZN5boost5redis11push_parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(73) %.sroa.0.1.lcssa) #20
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.1.lcssa, i64 72
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !54, !range !19, !noundef !20
  %i.bk = trunc nuw i8 %i.bj to i1
  %spec.select82 = select i1 %i.bk, ptr null, ptr %.sroa.0.1.lcssa ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 56 ; 2 uses
  %i.bm = add nsw <2 x i64> %8, splat (i64 1)     ; 2 uses
  %i.bn = add nuw nsw i64 %.045, 1                ; 2 uses
  %.not84 = icmp eq ptr %spec.select82, %5
  br i1 %.not84, label %.critedge.thread, label %bb.b, !llvm.loop !91

.critedge.thread:                                 ; preds = %bb.g, %_ZN5boost5redis11push_parser8iteratorppEv.exit61, %bb.n
  %.sroa.0.2 = phi ptr [ %.sroa.0.1.lcssa, %bb.n ], [ %spec.select82, %_ZN5boost5redis11push_parser8iteratorppEv.exit61 ], [ %.sroa.0.1.lcssa, %bb.g ] ; 2 uses
  %.146 = phi i64 [ %.045, %bb.n ], [ %i.bn, %_ZN5boost5redis11push_parser8iteratorppEv.exit61 ], [ %.045, %bb.g ] ; 3 uses
  %.2 = phi ptr [ %.1.lcssa, %bb.n ], [ %i.bl, %_ZN5boost5redis11push_parser8iteratorppEv.exit61 ], [ %.1.lcssa, %bb.g ]
  %12 = phi <2 x i64> [ %8, %bb.n ], [ %i.bm, %_ZN5boost5redis11push_parser8iteratorppEv.exit61 ], [ %8, %bb.g ] ; 2 uses
  %.not5.i = icmp eq ptr %.sroa.0.2, %5
  br i1 %.not5.i, label %_ZSt10__distanceIN5boost5redis11push_parser8iteratorEENSt15iterator_traitsIT_E15difference_typeES5_S5_St18input_iterator_tag.exit, label %_ZN5boost5redis11push_parser8iteratorppEv.exit.i

_ZN5boost5redis11push_parser8iteratorppEv.exit.i: ; preds = %.critedge.thread, %_ZN5boost5redis11push_parser8iteratorppEv.exit.i
  %.07.i = phi i64 [ %i.br, %_ZN5boost5redis11push_parser8iteratorppEv.exit.i ], [ 0, %.critedge.thread ]
  %.sroa.02.06.i = phi ptr [ %spec.select.i, %_ZN5boost5redis11push_parser8iteratorppEv.exit.i ], [ %.sroa.0.2, %.critedge.thread ] ; 3 uses
  tail call void @_ZN5boost5redis11push_parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(73) %.sroa.02.06.i) #20
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 72
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !54, !range !19, !noundef !20
  %i.bq = trunc nuw i8 %i.bp to i1
  %spec.select.i = select i1 %i.bq, ptr null, ptr %.sroa.02.06.i ; 2 uses
  %i.br = add nuw nsw i64 %.07.i, 1               ; 2 uses
  %.not.i62 = icmp eq ptr %spec.select.i, %5
  br i1 %.not.i62, label %_ZSt10__distanceIN5boost5redis11push_parser8iteratorEENSt15iterator_traitsIT_E15difference_typeES5_S5_St18input_iterator_tag.exit, label %_ZN5boost5redis11push_parser8iteratorppEv.exit.i, !llvm.loop !1

_ZSt10__distanceIN5boost5redis11push_parser8iteratorEENSt15iterator_traitsIT_E15difference_typeES5_S5_St18input_iterator_tag.exit: ; preds = %_ZN5boost5redis11push_parser8iteratorppEv.exit.i, %.critedge.thread
  %.0.lcssa.i = phi i64 [ 0, %.critedge.thread ], [ %i.br, %_ZN5boost5redis11push_parser8iteratorppEv.exit.i ]
  %i.bs = extractelement <2 x i64> %12, i64 0
  %i.bt = add nsw i64 %.0.lcssa.i, %i.bs          ; 2 uses
  %i.bu = ptrtoint ptr %7 to i64
  %i.bv = ptrtoint ptr %.2 to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = sdiv exact i64 %i.bw, 56
  %i.by = extractelement <2 x i64> %12, i64 1
  %i.bz = add nsw i64 %i.bx, %i.by                ; 2 uses
  %.not56 = icmp eq i64 %i.bt, %i.bz
  br i1 %.not56, label %bb.w, label %bb.o

bb.o:                                             ; preds = %_ZSt10__distanceIN5boost5redis11push_parser8iteratorEENSt15iterator_traitsIT_E15difference_typeES5_S5_St18input_iterator_tag.exit
  %i.ca = icmp eq i64 %.146, 0
  br i1 %i.ca, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  br i1 %.not.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cb = load ptr, ptr %0, align 8, !tbaa !63
  %i.cc = getelementptr i8, ptr %i.cb, i64 -24
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds i8, ptr %0, i64 %i.cd ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !86
  %i.ch = or i32 %i.cg, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ce, i32 noundef %i.ch)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64

bb.r:                                             ; preds = %bb.p
  %i.ci = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20
  %i.cj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, i64 noundef %i.ci) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64: ; preds = %bb.q, %bb.r
  %i.ck = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.cl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %2) ; 6 uses
  %i.cm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull @.str.18, i64 noundef 39) ; 0 uses
  br i1 %.not.i59, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !63
  %i.co = getelementptr i8, ptr %i.cn, i64 -24
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = getelementptr inbounds i8, ptr %i.cl, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !86
  %i.ct = or i32 %i.cs, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cq, i32 noundef %i.ct)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64
  %i.cu = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #20
  %i.cv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull %3, i64 noundef %i.cu) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66: ; preds = %bb.s, %bb.t
  %i.cw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull @.str.19, i64 noundef 8) ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.o
  %i.cx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.22, i64 noundef 10) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  %.sink150 = phi ptr [ %0, %bb.u ], [ %i.cl, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66 ]
  %i.cy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.sink150, i64 noundef %i.bt) ; 2 uses
  %i.cz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef nonnull @.str.20, i64 noundef 10) ; 0 uses
  %i.da = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, i64 noundef %i.bz)
  %i.db = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.da, ptr noundef nonnull @.str.21, i64 noundef 1) ; 0 uses
  %i.dc = add i64 %.146, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZSt10__distanceIN5boost5redis11push_parser8iteratorEENSt15iterator_traitsIT_E15difference_typeES5_S5_St18input_iterator_tag.exit
  %.247 = phi i64 [ %i.dc, %bb.v ], [ %.146, %_ZSt10__distanceIN5boost5redis11push_parser8iteratorEENSt15iterator_traitsIT_E15difference_typeES5_S5_St18input_iterator_tag.exit ]
  %i.dd = icmp eq i64 %.247, 0                    ; 2 uses
  br i1 %i.dd, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.de = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %bb.y, label %_ZN5boost6detail12test_resultsEv.exit, !prof !57

bb.y:                                             ; preds = %bb.x
  %i.dg = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #20
  %.not.i67 = icmp eq i32 %i.dg, 0
  br i1 %.not.i67, label %_ZN5boost6detail12test_resultsEv.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !59
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !60
  %i.dh = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #20 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #20
  br label %_ZN5boost6detail12test_resultsEv.exit

bb.aa:                                            ; preds = %bb.w
  %i.di = load ptr, ptr %0, align 8, !tbaa !63
  %i.dj = getelementptr i8, ptr %i.di, i64 -24
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds i8, ptr %0, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 240
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !78 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i, label %bb.ab, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.aa
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  %i.dp = load i8, ptr %i.do, align 8, !tbaa !84
  %.not.i1.i.i = icmp eq i8 %i.dp, 0
  br i1 %.not.i1.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 67
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !56
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.ad:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dn)
  %i.ds = load ptr, ptr %i.dn, align 8, !tbaa !63
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = tail call noundef signext i8 %i.du(ptr noundef nonnull align 8 dereferenceable(570) %i.dn, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.ac, %bb.ad
  %.0.i.i.i = phi i8 [ %i.dr, %bb.ac ], [ %i.dv, %bb.ad ]
  %i.dw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0.i.i.i)
  %i.dx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dw) ; 0 uses
  %i.dy = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.dz = icmp eq i8 %i.dy, 0
  br i1 %i.dz, label %bb.ae, label %_ZN5boost6detail12test_resultsEv.exit69, !prof !57

bb.ae:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.ea = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #20
  %.not.i68 = icmp eq i32 %i.ea, 0
  br i1 %.not.i68, label %_ZN5boost6detail12test_resultsEv.exit69, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !59
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !60
  %i.eb = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #20 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #20
  br label %_ZN5boost6detail12test_resultsEv.exit69

_ZN5boost6detail12test_resultsEv.exit69:          ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.ae, %bb.af
  %i.ec = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !61
  %i.ed = add nsw i32 %i.ec, 1
  store i32 %i.ed, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !61
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZN5boost6detail12test_resultsEv.exit:            ; preds = %bb.z, %bb.y, %bb.x, %_ZN5boost6detail12test_resultsEv.exit69
  ret i1 %i.dd
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5redis5resp39flat_treeD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #23
  br label %_ZNSt6vectorIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EED2Ev.exit

_ZNSt6vectorIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN5boost5redis5resp36detail11flat_bufferD2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %_ZNSt6vectorIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EED2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #23
  br label %_ZN5boost5redis5resp36detail11flat_bufferD2Ev.exit

_ZN5boost5redis5resp36detail11flat_bufferD2Ev.exit: ; preds = %_ZNSt6vectorIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EED2Ev.exit, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZN5boost5redis11push_parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(73)) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #8

end_hunk_0
