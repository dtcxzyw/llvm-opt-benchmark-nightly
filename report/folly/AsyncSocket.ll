Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/AsyncSocket?download=true
inline.NumInlined: 5680
inline.NumDeleted: 2333
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNSt5dequeIPN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS5_EE17_M_reallocate_mapEmb:bb.a
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !16482
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !16479
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !16477 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !16481
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 512
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !16482
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

declare void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96)) unnamed_addr #17

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google17MakeCheckOpStringImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #18 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.google::base::CheckOpMessageBuilder", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #42
  call void @_ZN6google4base21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %2)
  %i.a = load ptr, ptr %3, align 8, !tbaa !16487
  %i.b = load i64, ptr %0, align 8, !tbaa !15893
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.b)
          to label %_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit: ; preds = %bb.a
  %i.d = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit
  %i.e = load i64, ptr %1, align 8, !tbaa !15893
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef %i.e)
          to label %_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit4 unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit4: ; preds = %bb.b
  %i.g = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder9NewStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit4
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
  ret ptr %i.g

bb.d:                                             ; preds = %bb.b, %bb.a, %_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit4, %_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
  resume { ptr, i32 } %i.h
}

declare void @_ZN6google4base21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #4

declare noundef ptr @_ZN6google4base21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef ptr @_ZN6google4base21CheckOpMessageBuilder9NewStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #19

declare void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryENS3_12EntryDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16470  ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore12EntryDeleterclEPNS2_5EntryE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16469 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !814
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_ZN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore12EntryDeleterclEPNS2_5EntryE.exit unwind label %bb.c, !inline_history !765

_ZN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore12EntryDeleterclEPNS2_5EntryE.exit: ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #44
  unreachable
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @madvise(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIPN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS5_EE16_M_push_back_auxIJRKS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16479 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16479
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !16480
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16481
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !16482
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !16480
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 2305843009213693951
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #46
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !16478
  %i.ag = load ptr, ptr %0, align 8, !tbaa !16474
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIPN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS5_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIPN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIPN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS5_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIPN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS5_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #43 ; 4 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !16476
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !16477
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !16471
  %i.aq = load ptr, ptr %1, align 8, !tbaa !16470
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !16470
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !16479
  store ptr %i.am, ptr %i.o, align 8, !tbaa !16481
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !16482
  store ptr %i.am, ptr %i.a, align 8, !tbaa !16471
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 16448, 67158209) i32 @_ZN5folly11AsyncSocket21SendMsgParamsCallback15getDefaultFlagsENS_10WriteFlagsEb(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = shl i32 %1, 15
  %4 = and i32 %3, 32768
  %i.a = shl i32 %1, 6
  %i.b = and i32 %i.a, 128
  %spec.select9.a = or disjoint i32 %i.b, %4
  %i.c = shl i32 %1, 23
  %i.d = and i32 %i.c, 67108864
  %spec.select10 = select i1 %2, i32 %i.d, i32 0
  %spec.select9 = or disjoint i32 %spec.select9.a, %spec.select10
  %.2 = or disjoint i32 %spec.select9, 16448
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !16215
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.13) #46
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #42 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #46
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !16132

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #46
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #43 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !16199
  store i64 %i.c, ptr %i.a, align 8, !tbaa !16131
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !16131
  store i8 %i.j, ptr %i.i, align 1, !tbaa !16131
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !16216
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !16131
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google17MakeCheckOpStringImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2) local_unnamed_addr #18 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.google::base::CheckOpMessageBuilder", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #42
  call void @_ZN6google4base21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %2)
  %i.a = load ptr, ptr %3, align 8, !tbaa !16487
  %i.b = load i64, ptr %0, align 8, !tbaa !15893
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.b)
          to label %_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit: ; preds = %bb.a
  %i.d = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit
  %i.e = load i32, ptr %1, align 4, !tbaa !15894
  %i.f = zext i32 %i.e to i64
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef %i.f)
          to label %_ZN6google22MakeCheckOpValueStringIjEEvPSoRKT_.exit unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringIjEEvPSoRKT_.exit: ; preds = %bb.b
  %i.h = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder9NewStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN6google22MakeCheckOpValueStringIjEEvPSoRKT_.exit
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
  ret ptr %i.h

bb.d:                                             ; preds = %bb.b, %bb.a, %_ZN6google22MakeCheckOpValueStringIjEEvPSoRKT_.exit, %_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly11AsyncSocket15ByteEventHelper11processCmsgERK7cmsghdrm(ptr dead_on_unwind noalias writable sret(%"class.folly::Optional.199") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i64 noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.google::CheckOpString", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  %6 = alloca %"struct.folly::AsyncSocketObserverInterface::ByteEvent", align 8 ; 16 uses
  %i.c = load i8, ptr %1, align 8, !tbaa !16307, !range !15896, !noundef !1501
  %i.d = trunc nuw i8 %i.c to i1
  %.not = xor i1 %i.d, true
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i8, ptr %i.e, align 8, !range !15896
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8, !tbaa !16131
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %i.h, align 8, !tbaa !16488
  br label %bb.aj

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !17481, !range !15896, !noundef !1501
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZNR5folly8OptionalINS_11AsyncSocket15ByteEventHelper14TimestampStateEE5valueEv.exit, label %_ZN5folly8OptionalINS_11AsyncSocket15ByteEventHelper14TimestampStateEEaSIS3_EERS4_OT_.exit

_ZN5folly8OptionalINS_11AsyncSocket15ByteEventHelper14TimestampStateEEaSIS3_EERS4_OT_.exit: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i8 0, ptr %i.m, align 8, !tbaa !16131
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i8 0, ptr %i.n, align 8, !tbaa !16490
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i8 0, ptr %i.o, align 8, !tbaa !16131
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i8 0, ptr %i.p, align 8, !tbaa !16490
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.i, i8 0, i64 13, i1 false)
  store i8 1, ptr %i.j, align 8, !tbaa !17481
  br label %_ZNR5folly8OptionalINS_11AsyncSocket15ByteEventHelper14TimestampStateEE5valueEv.exit

_ZNR5folly8OptionalINS_11AsyncSocket15ByteEventHelper14TimestampStateEE5valueEv.exit: ; preds = %bb.c, %_ZN5folly8OptionalINS_11AsyncSocket15ByteEventHelper14TimestampStateEEaSIS3_EERS4_OT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !15894 ; 4 uses
  %i.s = icmp eq i32 %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.u = load i32, ptr %i.t, align 4              ; 4 uses
  %i.v = icmp eq i32 %i.u, 11
  %or.cond.i.i = select i1 %i.s, i1 %i.v, i1 false
  br i1 %or.cond.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNR5folly8OptionalINS_11AsyncSocket15ByteEventHelper14TimestampStateEE5valueEv.exit
  %i.w = icmp eq i32 %i.r, 41
  %i.x = icmp eq i32 %i.u, 25
  %or.cond12.i.i = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond12.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = icmp eq i32 %i.r, 263
  %i.z = icmp eq i32 %i.u, 16
  %or.cond15.i.i = select i1 %i.y, i1 %i.z, i1 false
  br i1 %or.cond15.i.i, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZNR5folly8OptionalINS_11AsyncSocket15ByteEventHelper14TimestampStateEE5valueEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !16344
  %i.ac = icmp eq i32 %i.ab, 42
  br i1 %i.ac, label %bb.g, label %_ZN5folly8OptionalINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS6_.exit49

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !16345
  %i.af = icmp eq i8 %i.ae, 4
  br i1 %i.af, label %_ZN5folly12_GLOBAL__N_133cmsgToSockExtendedErrTimestampingERK7cmsghdr.exit, label %_ZN5folly8OptionalINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS6_.exit49

_ZN5folly12_GLOBAL__N_133cmsgToSockExtendedErrTimestampingERK7cmsghdr.exit: ; preds = %bb.g
  %i.ag = load i8, ptr %i.i, align 8, !tbaa !17483, !range !15896, !noundef !1501
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZN5folly12_GLOBAL__N_133cmsgToSockExtendedErrTimestampingERK7cmsghdr.exit
  %i.ai = tail call ptr @__cxa_allocate_exception(i64 16) #42 ; 3 uses
  invoke void @_ZN5folly11AsyncSocket15ByteEventHelper9ExceptionCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull @.str.15)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTIN5folly11AsyncSocket15ByteEventHelper9ExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #46
  unreachable

bb.j:                                             ; preds = %bb.h
end_hunk_0
begin_hunk_1_@_ZN5folly11AsyncSocket21scheduleImmediateReadEv:bb.a
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.j, align 8, !tbaa !16124
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !16125
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !814
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #42, !call_target !16129, !inline_history !753
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !814
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #42, !call_target !16130, !inline_history !753
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16131
  %.not.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !15894
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.m, %bb.i ], [ %i.w, %bb.j ]
  %i.x = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.x, label %bb.k, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !16132

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #42
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g, %bb.e, %bb.b
  ret void

bb.l:                                             ; preds = %bb.d, %bb.c, %bb.a
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #44
  unreachable
}

declare void @_ZN5folly9EventBase9runInLoopEPNS0_12LoopCallbackEbSt10shared_ptrINS_14RequestContextEE(ptr noundef nonnull align 16 dereferenceable(632), ptr noundef, i1 noundef zeroext, ptr noundef align 8) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN5folly17IoUringRecvHandle13hasQueuedDataEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

declare void @_ZN5folly17IoUringRecvHandle13getQueuedDataEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

declare void @_ZN5folly17IoUringRecvHandle6submitEm(ptr noundef nonnull align 8 dereferenceable(72), i64 noundef) local_unnamed_addr #4

declare void @_ZN5folly10IOBufQueue5splitEmbb(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, i64, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN5folly6detail8function5call_IZNS_11AsyncSocket27handleNetworkSocketAttachedEvE3$_0Lb1ELb0EvJPNS_28AsyncSocketObserverInterfaceEPS3_EEET2_DpT3_RNS1_4DataE"(ptr noundef %0, ptr noundef %1, ptr nofree nonnull readnone align 16 captures(none) %2) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !814
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #42, !call_target !16376, !inline_history !18126
  ret void
}

declare noundef i64 @_ZN5folly6detail11tfo_sendmsgENS_13NetworkSocketEPK6msghdri(i32, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN5folly11AsyncSocket17sendSocketMessageEPK5iovecmNS_10WriteFlagsENS0_15WriteRequestTagEENK3$_1clES3_mS4_"(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %struct.msghdr, align 8             ; 10 uses
  %6 = alloca %"struct.google::CheckOpString", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  %8 = alloca %"struct.folly::AsyncSocket::WriteResult", align 8 ; 6 uses
  %9 = alloca %"struct.google::CheckOpString", align 8 ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.google::LogMessageFatal", align 8 ; 6 uses
  %11 = alloca %"struct.folly::AsyncSocketObserverInterface::ByteEvent", align 8 ; 17 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !16380  ; 19 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1000
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16291 ; 3 uses
  %.not66.a = icmp eq ptr %i.g, null
  br i1 %.not66.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i8, ptr %i.g, align 8, !tbaa !16307, !range !15896, !noundef !1501
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.k = load i8, ptr %i.j, align 8, !tbaa !16294, !range !15896, !noundef !1501
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = xor i1 %i.l, true
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.n = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.m, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #42
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  store ptr %2, ptr %i.o, align 8, !tbaa !16333
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %3, i64 1024)
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %.sroa.speculated, ptr %i.p, align 8, !tbaa !16334
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr null, ptr %i.q, align 8, !tbaa !16337
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 808 ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !16258 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !814
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef i32 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %i.t, i1 noundef zeroext %i.n) #42, !call_target !828 ; 2 uses
  %i.y = zext i32 %i.x to i64                     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  store i64 %i.y, ptr %i.z, align 8, !tbaa !16338
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #42
  store i64 20480, ptr %i.a, align 8, !tbaa !15893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #42
  store i64 %i.y, ptr %i.b, align 8, !tbaa !15893
  %.not.i = icmp ugt i32 %i.x, 20480
  br i1 %.not.i, label %_ZN6google12Check_GEImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit, label %_ZN6google12Check_GEImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread, !prof !16132

_ZN6google12Check_GEImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  br label %bb.e

_ZN6google12Check_GEImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit: ; preds = %bb.d
  %i.aa = call noundef ptr @_ZN6google17MakeCheckOpStringImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.266) ; 2 uses
  store ptr %i.aa, ptr %6, align 8, !tbaa !15891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  %.not67 = icmp eq ptr %i.aa, null
  br i1 %.not67, label %_ZN6google12Check_GEImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge, label %bb.f

_ZN6google12Check_GEImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge: ; preds = %_ZN6google12Check_GEImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  %.pre = load i64, ptr %i.z, align 8, !tbaa !16338
  br label %bb.e

bb.e:                                             ; preds = %_ZN6google12Check_GEImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge, %_ZN6google12Check_GEImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread
  %i.ab = phi i64 [ %.pre, %_ZN6google12Check_GEImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge ], [ %i.y, %_ZN6google12Check_GEImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.f:                                             ; preds = %_ZN6google12Check_GEImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #42
  call void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull @.str.3, i32 noundef 4008, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %7)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %7) #44
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %7) #44
  unreachable

bb.i:                                             ; preds = %bb.e
  %i.ae = alloca i8, i64 %i.ab, align 16          ; 2 uses
  store ptr %i.ae, ptr %i.q, align 8, !tbaa !16337
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !16258 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !814
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i32 noundef %4, ptr noundef nonnull %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %i.t, i1 noundef zeroext %i.n) #42, !call_target !15879
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !814
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 264
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call noundef i64 %i.al(ptr noundef nonnull align 8 dereferenceable(1193) %i.e), !call_target !1136 ; 2 uses
  %i.an = load ptr, ptr %i.r, align 8, !tbaa !16258 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 1008 ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !16262, !range !15896, !noundef !1501
  %i.aq = trunc nuw i8 %i.ap to i1
  %12 = shl i32 %4, 15
  %13 = and i32 %12, 32768
  %i.ar = shl i32 %4, 6
  %i.as = and i32 %i.ar, 128
  %i.at = shl i32 %4, 23
  %i.au = and i32 %i.at, 67108864
  %spec.select10.i.i = select i1 %i.aq, i32 %i.au, i32 0
  %spec.select9.v.i.i = or disjoint i32 %13, %i.as ; 2 uses
  %spec.select9.i.i = or disjoint i32 %spec.select9.v.i.i, %spec.select10.i.i
  %.2.i.i = or disjoint i32 %spec.select9.i.i, 16448
  %i.av = load ptr, ptr %i.an, align 8, !tbaa !814
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = invoke noundef i32 %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i32 noundef %4, i32 noundef %.2.i.i)
          to label %_ZN5folly11AsyncSocket21SendMsgParamsCallback8getFlagsENS_10WriteFlagsEb.exit unwind label %bb.k, !call_target !15885

bb.k:                                             ; preds = %bb.j
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #44
  unreachable

_ZN5folly11AsyncSocket21SendMsgParamsCallback8getFlagsENS_10WriteFlagsEb.exit: ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 268 ; 2 uses
  %.sroa.010.0.copyload = load i32, ptr %i.bb, align 4, !tbaa !15894
  %i.bc = load ptr, ptr %i.e, align 8, !tbaa !814
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 800
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr dead_on_unwind writable sret(%"struct.folly::AsyncSocket::WriteResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1193) %i.e, i32 %.sroa.010.0.copyload, ptr noundef nonnull %5, i32 noundef %i.ay), !call_target !1297
  %i.bf = load i64, ptr %0, align 8, !tbaa !16374 ; 2 uses
  %i.bg = icmp slt i64 %i.bf, 0
  br i1 %i.bg, label %bb.l, label %thread-pre-split

bb.l:                                             ; preds = %_ZN5folly11AsyncSocket21SendMsgParamsCallback8getFlagsENS_10WriteFlagsEb.exit
  %i.bh = load i8, ptr %i.ao, align 8, !tbaa !16262, !range !15896, !noundef !1501
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.bj = tail call ptr @__errno_location() #45
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !15894
  %i.bl = icmp eq i32 %i.bk, 105
  br i1 %i.bl, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  store i8 0, ptr %i.ao, align 8, !tbaa !16262
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 1016
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !16601
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 1024
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !16279
  %i.bp = load ptr, ptr %i.r, align 8, !tbaa !16258 ; 2 uses
  %.2.i.i41 = or disjoint i32 %spec.select9.v.i.i, 16448
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !814
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = invoke noundef i32 %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, i32 noundef %4, i32 noundef %.2.i.i41)
          to label %_ZN5folly11AsyncSocket21SendMsgParamsCallback8getFlagsENS_10WriteFlagsEb.exit43 unwind label %bb.o, !call_target !15885

bb.o:                                             ; preds = %bb.n
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #44
  unreachable

_ZN5folly11AsyncSocket21SendMsgParamsCallback8getFlagsENS_10WriteFlagsEb.exit43: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #42
  %.sroa.0.0.copyload = load i32, ptr %i.bb, align 4, !tbaa !15894
  %i.bw = load ptr, ptr %i.e, align 8, !tbaa !814
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 800
  %i.by = load ptr, ptr %i.bx, align 8
  invoke void %i.by(ptr dead_on_unwind nonnull writable sret(%"struct.folly::AsyncSocket::WriteResult") align 8 %8, ptr noundef nonnull align 8 dereferenceable(1193) %i.e, i32 %.sroa.0.0.copyload, ptr noundef nonnull %5, i32 noundef %i.bt)
          to label %bb.p unwind label %bb.q, !call_target !1297

bb.p:                                             ; preds = %_ZN5folly11AsyncSocket21SendMsgParamsCallback8getFlagsENS_10WriteFlagsEb.exit43
  %i.bz = load i64, ptr %8, align 8, !tbaa !16374
  store i64 %i.bz, ptr %0, align 8, !tbaa !16374
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !16360
  store ptr null, ptr %i.cb, align 8, !tbaa !16360
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !16360 ; 3 uses
  store ptr %i.cc, ptr %i.ca, align 8, !tbaa !16360
  %.not.i.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i, label %_ZN5folly11AsyncSocket11WriteResultD2Ev.exit, label %_ZN5folly11AsyncSocket11WriteResultaSEOS1_.exit

_ZN5folly11AsyncSocket11WriteResultaSEOS1_.exit:  ; preds = %bb.p
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !814
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(24) %i.cd) #42, !call_target !16363, !inline_history !18127
  %.pr = load ptr, ptr %i.cb, align 8, !tbaa !16360 ; 3 uses
  %.not.i.i44 = icmp eq ptr %.pr, null
  br i1 %.not.i.i44, label %_ZN5folly11AsyncSocket11WriteResultD2Ev.exit, label %_ZNKSt14default_deleteIKN5folly20AsyncSocketExceptionEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIKN5folly20AsyncSocketExceptionEEclEPS2_.exit.i.i: ; preds = %_ZN5folly11AsyncSocket11WriteResultaSEOS1_.exit
  %i.ch = load ptr, ptr %.pr, align 8, !tbaa !814
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(24) %.pr) #42, !call_target !16363, !inline_history !760
  br label %_ZN5folly11AsyncSocket11WriteResultD2Ev.exit

_ZN5folly11AsyncSocket11WriteResultD2Ev.exit:     ; preds = %bb.p, %_ZN5folly11AsyncSocket11WriteResultaSEOS1_.exit, %_ZNKSt14default_deleteIKN5folly20AsyncSocketExceptionEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #42
  %.pr63.pre = load i64, ptr %0, align 8, !tbaa !16374
  br label %thread-pre-split

bb.q:                                             ; preds = %_ZN5folly11AsyncSocket21SendMsgParamsCallback8getFlagsENS_10WriteFlagsEb.exit43
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #42
  br label %bb.al

thread-pre-split:                                 ; preds = %_ZN5folly11AsyncSocket11WriteResultD2Ev.exit, %_ZN5folly11AsyncSocket21SendMsgParamsCallback8getFlagsENS_10WriteFlagsEb.exit
  %i.cl = phi i64 [ %i.bf, %_ZN5folly11AsyncSocket21SendMsgParamsCallback8getFlagsENS_10WriteFlagsEb.exit ], [ %.pr63.pre, %_ZN5folly11AsyncSocket11WriteResultD2Ev.exit ]
  %i.cm = icmp sgt i64 %i.cl, 0
  br i1 %i.cm, label %bb.r, label %.thread

bb.r:                                             ; preds = %thread-pre-split
  %i.cn = load i64, ptr %i.z, align 8, !tbaa !16338
  %.not30 = icmp eq i64 %i.cn, 0
  br i1 %.not30, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.co = load ptr, ptr %i.r, align 8, !tbaa !16258 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !814
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull align 8 dereferenceable(8) %i.t) #42, !call_target !15882
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cs = and i32 %4, 128
  %i.ct = icmp ne i32 %i.cs, 0
  %or.cond = and i1 %i.ct, %i.n
  br i1 %or.cond, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #42
  %i.cu = load ptr, ptr %i.e, align 8, !tbaa !814
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 264
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = invoke noundef i64 %i.cw(ptr noundef nonnull align 8 dereferenceable(1193) %i.e)
          to label %bb.v unwind label %bb.y, !call_target !1136 ; 2 uses

bb.v:                                             ; preds = %bb.u
  store i64 %i.cx, ptr %i.c, align 8, !tbaa !15893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #42
  store i64 %i.am, ptr %i.d, align 8, !tbaa !15893
  %i.cy = icmp ugt i64 %i.cx, %i.am
  br i1 %i.cy, label %_ZN6google12Check_GTImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread, label %bb.w, !prof !15895

_ZN6google12Check_GTImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #42
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cz = invoke noundef ptr @_ZN6google17MakeCheckOpStringImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.267)
          to label %_ZN6google12Check_GTImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit unwind label %bb.z ; 2 uses

_ZN6google12Check_GTImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit: ; preds = %bb.w
  store ptr %i.cz, ptr %9, align 8, !tbaa !15891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #42
  %.not68 = icmp eq ptr %i.cz, null
  br i1 %.not68, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %_ZN6google12Check_GTImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread, %_ZN6google12Check_GTImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #42
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.db = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #42
  store i64 %i.db, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i8 0, ptr %i.dc, align 8, !tbaa !16131
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 0, ptr %i.dd, align 8, !tbaa !16490
  %i.de = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i8 0, ptr %i.de, align 8, !tbaa !16131
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 48
  store i8 0, ptr %i.df, align 8, !tbaa !16490
  %i.dg = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.dh = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.di = getelementptr inbounds nuw i8, ptr %11, i64 92
  store i8 0, ptr %11, align 8, !tbaa !16505
  %i.dj = load ptr, ptr %i.e, align 8, !tbaa !814
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 264
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = invoke noundef i64 %i.dl(ptr noundef nonnull align 8 dereferenceable(1193) %i.e)
          to label %bb.ah unwind label %bb.ak, !call_target !1136

bb.y:                                             ; preds = %bb.u
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #42
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.do, %bb.z ], [ %i.dn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #42
  br label %bb.ag

bb.ab:                                            ; preds = %_ZN6google12Check_GTImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #42
  invoke void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96) %10, ptr noundef nonnull @.str.3, i32 noundef 4037, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %10)
          to label %bb.ad unwind label %bb.af     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %10) #44
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #42
  br label %bb.ag

bb.af:                                            ; preds = %bb.ac
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %10) #44
  unreachable

bb.ag:                                            ; preds = %bb.ae, %bb.aa
  %.pn35 = phi { ptr, i32 } [ %i.dq, %bb.ae ], [ %.pn, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #42
  br label %bb.al

bb.ah:                                            ; preds = %bb.x
  %i.ds = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.dt = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.du = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.dv = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dw = add i64 %i.dm, -1
  store i64 %i.dw, ptr %i.dv, align 8, !tbaa !16506
  %i.dx = load i64, ptr %0, align 8, !tbaa !15893
  store i8 1, ptr %i.dt, align 8, !tbaa !16430
  store i64 %i.dx, ptr %i.du, align 8, !tbaa !16131
  store i8 1, ptr %i.ds, align 8, !tbaa !16430
  %.not76 = icmp eq i64 %3, 0
  br i1 %.not76, label %.loopexit, label %_ZNR5folly8OptionalImE5valueEv.exit.preheader

_ZNR5folly8OptionalImE5valueEv.exit.preheader:    ; preds = %bb.ah
  %min.iters.check = icmp ult i64 %3, 5
  br i1 %min.iters.check, label %_ZNR5folly8OptionalImE5valueEv.exit.preheader90, label %vector.ph
end_hunk_1
