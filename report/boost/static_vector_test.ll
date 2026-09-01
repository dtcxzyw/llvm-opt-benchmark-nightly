Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/static_vector_test?download=true
inline.NumInlined: 8588
inline.NumDeleted: 2636
loop-unroll.NumCompletelyUnrolled: 205
loop-unroll.NumRuntimeUnrolled: 105
loop-unroll.NumUnrolled: 313
begin_hunk_0_@_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_:bb.a
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZN5boost6detail12test_resultsEv.exit:            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.m, %bb.n
  %i.bk = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !18
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !18
  ret void
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #3

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv() local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #25
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !31
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !34
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #25 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr @_ZZN5boost6detail12test_resultsEvE8instance
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_Z17default_init_testv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"union.boost::move_detail::aligned_struct_wrapper.7", align 16 ; 15 uses
  %1 = alloca %"class.boost::container::static_vector.9", align 16 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, i8 0, i64 100, i1 false)
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  store i64 100, ptr %i.a, align 8, !tbaa !62
  br label %bb.d

bb.c:                                             ; preds = %bb.c, %bb.a
  %.03846 = phi i64 [ 0, %bb.a ], [ %i.p, %bb.c ] ; 7 uses
  %i.b = trunc i64 %.03846 to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.03846
  store volatile i8 %i.b, ptr %i.c, align 1, !tbaa !60
  %i.d = add nuw nsw i64 %.03846, 1               ; 2 uses
  %i.e = trunc i64 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  store volatile i8 %i.e, ptr %i.f, align 1, !tbaa !60
  %i.g = add nuw nsw i64 %.03846, 2               ; 2 uses
  %i.h = trunc i64 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  store volatile i8 %i.h, ptr %i.i, align 1, !tbaa !60
  %i.j = add nuw nsw i64 %.03846, 3               ; 2 uses
  %i.k = trunc i64 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  store volatile i8 %i.k, ptr %i.l, align 1, !tbaa !60
  %i.m = add nuw nsw i64 %.03846, 4               ; 2 uses
  %i.n = trunc i64 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  store volatile i8 %i.n, ptr %i.o, align 1, !tbaa !60
  %i.p = add nuw nsw i64 %.03846, 5               ; 2 uses
  %.not.4 = icmp eq i64 %i.p, 100
  br i1 %.not.4, label %bb.b, label %bb.c, !llvm.loop !65

bb.d:                                             ; preds = %bb.m, %bb.b
  %.03747 = phi i64 [ 0, %bb.b ], [ %i.bb, %bb.m ] ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.03747
  %i.r = load volatile i8, ptr %i.q, align 1, !tbaa !60
  %i.s = trunc i64 %.03747 to i8
  %.not40 = icmp eq i8 %i.r, %i.s
  br i1 %.not40, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.d
  %.03747.lcssa = phi i64 [ %.03747, %bb.d ], [ %i.al, %bb.i ], [ %i.ap, %bb.j ], [ %i.at, %bb.k ], [ %i.ax, %bb.l ]
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.13, i64 noundef 19) ; 0 uses
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %.03747.lcssa) ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !35
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 240
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !47  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %bb.f, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !54
  %.not.i1.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i1.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 67
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !60
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aa)
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef signext i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(570) %i.aa, i8 noundef signext 10), !inline_history !61
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i = phi i8 [ %i.ae, %bb.g ], [ %i.ai, %bb.h ]
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i8 noundef signext %.0.i.i.i)
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  br label %bb.p

bb.i:                                             ; preds = %bb.d
  %i.al = add nuw nsw i64 %.03747, 1              ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  %i.an = load volatile i8, ptr %i.am, align 1, !tbaa !60
  %i.ao = trunc i64 %i.al to i8
  %.not40.1 = icmp eq i8 %i.an, %i.ao
  br i1 %.not40.1, label %bb.j, label %bb.e

bb.j:                                             ; preds = %bb.i
  %i.ap = add nuw nsw i64 %.03747, 2              ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap
  %i.ar = load volatile i8, ptr %i.aq, align 1, !tbaa !60
  %i.as = trunc i64 %i.ap to i8
  %.not40.2 = icmp eq i8 %i.ar, %i.as
  br i1 %.not40.2, label %bb.k, label %bb.e

bb.k:                                             ; preds = %bb.j
  %i.at = add nuw nsw i64 %.03747, 3              ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %i.at
  %i.av = load volatile i8, ptr %i.au, align 1, !tbaa !60
  %i.aw = trunc i64 %i.at to i8
  %.not40.3 = icmp eq i8 %i.av, %i.aw
  br i1 %.not40.3, label %bb.l, label %bb.e

bb.l:                                             ; preds = %bb.k
  %i.ax = add nuw nsw i64 %.03747, 4              ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.ax
  %i.az = load volatile i8, ptr %i.ay, align 1, !tbaa !60
  %i.ba = trunc i64 %i.ax to i8
  %.not40.4 = icmp eq i8 %i.az, %i.ba
  br i1 %.not40.4, label %bb.m, label %bb.e

bb.m:                                             ; preds = %bb.l
  %i.bb = add nuw nsw i64 %.03747, 5              ; 2 uses
  %.not39.4 = icmp eq i64 %i.bb, 100
  br i1 %.not39.4, label %iter.check, label %bb.d, !llvm.loop !67

iter.check:                                       ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <16 x i8> <i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111, i8 112, i8 113, i8 114, i8 115>, ptr %1, align 16, !tbaa !60
  store <16 x i8> <i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127, i8 -128, i8 -127, i8 -126, i8 -125>, ptr %i.bd, align 16, !tbaa !60
  %next.gep.1 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <16 x i8> <i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113, i8 -112, i8 -111, i8 -110, i8 -109>, ptr %next.gep.1, align 16, !tbaa !60
  store <16 x i8> <i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97, i8 -96, i8 -95, i8 -94, i8 -93>, ptr %i.be, align 16, !tbaa !60
  %next.gep.2 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <16 x i8> <i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81, i8 -80, i8 -79, i8 -78, i8 -77>, ptr %next.gep.2, align 16, !tbaa !60
  store <16 x i8> <i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65, i8 -64, i8 -63, i8 -62, i8 -61>, ptr %i.bf, align 16, !tbaa !60
  %next.gep61 = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <4 x i8> <i8 -60, i8 -59, i8 -58, i8 -57>, ptr %next.gep61, align 16, !tbaa !60
  store i64 100, ptr %i.bc, align 8, !tbaa !62
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %iter.check
  %.051 = phi i64 [ 0, %iter.check ], [ %i.bj, %bb.n ] ; 2 uses
  %.sroa.0.050 = phi ptr [ %1, %iter.check ], [ %i.bk, %bb.n ] ; 2 uses
  %i.bg = load i8, ptr %.sroa.0.050, align 1, !tbaa !60 ; 2 uses
  %i.bh = trunc i64 %.051 to i8
  %i.bi = add i8 %i.bh, 100                       ; 2 uses
  %.not43.not = icmp ne i8 %i.bg, %i.bi
  %i.bj = add nuw nsw i64 %.051, 1                ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.050, i64 1
  %.not42 = icmp eq i64 %i.bj, 100
  %or.cond.not = select i1 %.not43.not, i1 true, i1 %.not42
  br i1 %or.cond.not, label %bb.o, label %bb.n, !llvm.loop !68

bb.o:                                             ; preds = %bb.n
  %.not43 = icmp eq i8 %i.bg, %i.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.p

bb.p:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.o
  %.2 = phi i1 [ false, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %.not43, %bb.o ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_Z24static_vector_trivialityv() local_unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %4 = alloca %"class.boost::container::vec_iterator.6", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::vec_iterator.6", align 8 ; 4 uses
  %6 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 4 uses
  %7 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::movelib::reverse_iterator.338", align 8 ; 4 uses
  %9 = alloca %"class.boost::movelib::reverse_iterator.338", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %10 = alloca %class.value_nd, align 4           ; 4 uses
  %11 = alloca %class.counting_value, align 4     ; 6 uses
  %12 = alloca %"class.boost::container::test::movable_and_copyable_int", align 4 ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %13 = alloca %class.value_nd, align 4           ; 4 uses
  %14 = alloca %class.counting_value, align 4     ; 6 uses
  %15 = alloca %"class.boost::container::test::movable_and_copyable_int", align 4 ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %16 = alloca %class.value_nd, align 4           ; 4 uses
  %17 = alloca %class.counting_value, align 4     ; 6 uses
  %18 = alloca %"class.boost::container::test::movable_and_copyable_int", align 4 ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %19 = alloca %class.value_nd, align 4           ; 4 uses
  %20 = alloca %class.counting_value, align 4     ; 6 uses
  %21 = alloca %"class.boost::container::test::movable_and_copyable_int", align 4 ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %22 = alloca %class.value_nd, align 4           ; 4 uses
  %23 = alloca %class.counting_value, align 4     ; 6 uses
  %24 = alloca %"class.boost::container::test::movable_and_copyable_int", align 4 ; 5 uses
  %25 = alloca %"class.boost::container::static_vector.0", align 8 ; 19 uses
  %i.f = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.g = icmp eq i64 %i.f, 0
  %i.h = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @__PRETTY_FUNCTION__.main, i1 noundef zeroext %i.g) ; 0 uses
  tail call void @_Z13test_ctor_ndcIiLm10EEvv()
  tail call void @_Z13test_ctor_ndcI9value_ndcLm10EEvv()
  tail call void @_Z13test_ctor_ndcI14counting_valueLm10EEvv()
  %i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.j = icmp eq i64 %i.i, 0
  %i.k = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 729, ptr noundef nonnull @__PRETTY_FUNCTION__.main, i1 noundef zeroext %i.j) ; 0 uses
  tail call void @_Z13test_ctor_ndcIN5boost9container4test24movable_and_copyable_intELm10EEvv()
  tail call void @_Z12test_ctor_ncIiLm10EEvm(i64 noundef 5)
  tail call void @_Z12test_ctor_ncI8value_ncLm10EEvm(i64 noundef 5)
  tail call void @_Z12test_ctor_ncI14counting_valueLm10EEvm(i64 noundef 5)
  %i.l = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.m = icmp eq i64 %i.l, 0
  %i.n = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 735, ptr noundef nonnull @__PRETTY_FUNCTION__.main, i1 noundef zeroext %i.m) ; 0 uses
  tail call void @_Z12test_ctor_ncIN5boost9container4test24movable_and_copyable_intELm10EEvm(i64 noundef 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 1, ptr %i.a, align 4, !tbaa !18
  call void @_Z12test_ctor_ndIiLm10EEvmRKT_(i64 noundef 5, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  store i32 1, ptr %10, align 4, !tbaa !70
  call void @_Z12test_ctor_ndI8value_ndLm10EEvmRKT_(i64 noundef 5, ptr noundef nonnull align 4 dereferenceable(4) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  store i32 1, ptr %11, align 4, !tbaa !72
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !74
  %i.p = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  invoke void @_Z12test_ctor_ndI14counting_valueLm10EEvmRKT_(i64 noundef 5, ptr noundef nonnull align 4 dereferenceable(8) %11)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.r = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.s = add i64 %i.r, -1                         ; 2 uses
  store i64 %i.s, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.t = icmp eq i64 %i.s, 0
  %i.u = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 741, ptr noundef nonnull @__PRETTY_FUNCTION__.main, i1 noundef zeroext %i.t) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  store i32 0, ptr %12, align 4, !tbaa !78, !alias.scope !75
  %i.v = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18, !noalias !75
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18, !noalias !75
  invoke void @_Z12test_ctor_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_(i64 noundef 5, ptr noundef nonnull align 4 dereferenceable(4) %12)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.x = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.y = add i32 %i.x, -1
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @_Z14test_resize_ncIiLm10EEvm(i64 noundef 5)
  call void @_Z14test_resize_ncI8value_ncLm10EEvm(i64 noundef 5)
  call void @_Z14test_resize_ncI14counting_valueLm10EEvm(i64 noundef 5)
  %i.z = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 747, ptr noundef nonnull @__PRETTY_FUNCTION__.main, i1 noundef zeroext %i.aa) ; 0 uses
  call void @_Z14test_resize_ncIN5boost9container4test24movable_and_copyable_intELm10EEvm(i64 noundef 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 1, ptr %i.b, align 4, !tbaa !18
  call void @_Z14test_resize_ndIiLm10EEvmRKT_(i64 noundef 5, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  store i32 1, ptr %13, align 4, !tbaa !70
  call void @_Z14test_resize_ndI8value_ndLm10EEvmRKT_(i64 noundef 5, ptr noundef nonnull align 4 dereferenceable(4) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  store i32 1, ptr %14, align 4, !tbaa !72
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 0, ptr %i.ac, align 4, !tbaa !74
  %i.ad = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  invoke void @_Z14test_resize_ndI14counting_valueLm10EEvmRKT_(i64 noundef 5, ptr noundef nonnull align 4 dereferenceable(8) %14)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.af = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.ag = add i64 %i.af, -1                       ; 2 uses
  store i64 %i.ag, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.ah = icmp eq i64 %i.ag, 0
  %i.ai = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 753, ptr noundef nonnull @__PRETTY_FUNCTION__.main, i1 noundef zeroext %i.ah) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  store i32 0, ptr %15, align 4, !tbaa !78, !alias.scope !80
  %i.aj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18, !noalias !80
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18, !noalias !80
  invoke void @_Z14test_resize_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_(i64 noundef 5, ptr noundef nonnull align 4 dereferenceable(4) %15)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.al = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @_Z17test_push_back_ndIiLm10EEvv()
  call void @_Z17test_push_back_ndI8value_ndLm10EEvv()
  call void @_Z17test_push_back_ndI14counting_valueLm10EEvv()
  %i.an = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.ao = icmp eq i64 %i.an, 0
  %i.ap = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 759, ptr noundef nonnull @__PRETTY_FUNCTION__.main, i1 noundef zeroext %i.ao) ; 0 uses
  call void @_Z17test_push_back_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv()
  call void @_Z16test_pop_back_ndIiLm10EEvv()
  call void @_Z16test_pop_back_ndI8value_ndLm10EEvv()
  call void @_Z16test_pop_back_ndI14counting_valueLm10EEvv()
  %i.aq = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.ar = icmp eq i64 %i.aq, 0
  %i.as = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 765, ptr noundef nonnull @__PRETTY_FUNCTION__.main, i1 noundef zeroext %i.ar) ; 0 uses
  call void @_Z16test_pop_back_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i32 1, ptr %i.c, align 4, !tbaa !18
  call void @_Z23test_copy_and_assign_ndIiLm10EEvRKT_(ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  store i32 1, ptr %16, align 4, !tbaa !70
  call void @_Z23test_copy_and_assign_ndI8value_ndLm10EEvRKT_(ptr noundef nonnull align 4 dereferenceable(4) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  store i32 1, ptr %17, align 4, !tbaa !72
  %i.at = getelementptr inbounds nuw i8, ptr %17, i64 4
  store i32 0, ptr %i.at, align 4, !tbaa !74
  %i.au = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  invoke void @_Z23test_copy_and_assign_ndI14counting_valueLm10EEvRKT_(ptr noundef nonnull align 4 dereferenceable(8) %17)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.aw = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.ax = add i64 %i.aw, -1                       ; 2 uses
  store i64 %i.ax, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  %i.ay = icmp eq i64 %i.ax, 0
  %i.az = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 771, ptr noundef nonnull @__PRETTY_FUNCTION__.main, i1 noundef zeroext %i.ay) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  store i32 0, ptr %18, align 4, !tbaa !78, !alias.scope !83
  %i.ba = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18, !noalias !83
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18, !noalias !83
  invoke void @_Z23test_copy_and_assign_ndIN5boost9container4test24movable_and_copyable_intELm10EEvRKT_(ptr noundef nonnull align 4 dereferenceable(4) %18)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %bb.f
end_hunk_0
