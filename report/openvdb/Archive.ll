Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/Archive?download=true
inline.NumInlined: 9836
inline.NumDeleted: 4264
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 85
begin_hunk_0_@_ZN5boost16exception_detail20copy_boost_exceptionEPNS_9exceptionEPKS1_:bb.a
  %.not.i.i30 = icmp eq ptr %.sroa.0.3, null
  br i1 %.not.i.i30, label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit31, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = load ptr, ptr %.sroa.0.3, align 8, !tbaa !106
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = invoke noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.3)
          to label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit31 unwind label %bb.q, !inline_history !72 ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #46
  unreachable

_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit31: ; preds = %bb.o, %bb.p
  resume { ptr, i32 } %.pn17
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt17iostream_categoryv() local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEES8_EENS1_14execute_traitsIT_NS_9result_ofIFSA_vEE4typeEE11result_typeESA_T0_(ptr %0, i32 %1, ptr %2, i32 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::iostreams::detail::member_close_operation", align 8 ; 3 uses
  store ptr %2, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %3, ptr %i.a, align 8
  switch i32 %1, label %_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEEEENS1_14execute_traitsIT_NS_9result_ofIFSA_vEE4typeEE11result_typeESA_.exit [
    i32 8, label %bb.b
    i32 16, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !211  ; 2 uses
  %i.d = and i32 %i.c, 2
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEEEENS1_14execute_traitsIT_NS_9result_ofIFSA_vEE4typeEE11result_typeESA_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = or disjoint i32 %i.c, 2
  store i32 %i.f, ptr %i.b, align 8, !tbaa !211
  br label %.sink.split.i.i.i.i

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !211  ; 2 uses
  %i.i = and i32 %i.h, 4
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEEEENS1_14execute_traitsIT_NS_9result_ofIFSA_vEE4typeEE11result_typeESA_.exit

bb.e:                                             ; preds = %bb.d
  %i.k = or disjoint i32 %i.h, 4
  store i32 %i.k, ptr %i.g, align 8, !tbaa !211
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.e, %bb.c
  %i.l = load ptr, ptr %0, align 8, !tbaa !106
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %i.n = load ptr, ptr %i.m, align 8
  invoke void %i.n(ptr noundef nonnull align 8 dereferenceable(68) %0, i32 noundef %1)
          to label %_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEEEENS1_14execute_traitsIT_NS_9result_ofIFSA_vEE4typeEE11result_typeESA_.exit unwind label %bb.j, !inline_history !2158

_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEEEENS1_14execute_traitsIT_NS_9result_ofIFSA_vEE4typeEE11result_typeESA_.exit: ; preds = %bb.d, %bb.b, %.sink.split.i.i.i.i, %bb.a
  switch i32 %3, label %_ZNK5boost9iostreams6detail22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEclEv.exit [
    i32 8, label %bb.f
    i32 16, label %bb.h
  ]

bb.f:                                             ; preds = %_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEEEENS1_14execute_traitsIT_NS_9result_ofIFSA_vEE4typeEE11result_typeESA_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !211  ; 2 uses
  %i.q = and i32 %i.p, 2
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNK5boost9iostreams6detail22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEclEv.exit

bb.g:                                             ; preds = %bb.f
  %i.s = or disjoint i32 %i.p, 2
  store i32 %i.s, ptr %i.o, align 8, !tbaa !211
  br label %.sink.split.i.i

bb.h:                                             ; preds = %_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEEEENS1_14execute_traitsIT_NS_9result_ofIFSA_vEE4typeEE11result_typeESA_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !211  ; 2 uses
  %i.v = and i32 %i.u, 4
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.i, label %_ZNK5boost9iostreams6detail22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEclEv.exit

bb.i:                                             ; preds = %bb.h
  %i.x = or disjoint i32 %i.u, 4
  store i32 %i.x, ptr %i.t, align 8, !tbaa !211
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.i, %bb.g
  %i.y = load ptr, ptr %2, align 8, !tbaa !106
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(68) %2, i32 noundef %3), !inline_history !2159
  br label %_ZNK5boost9iostreams6detail22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEclEv.exit

_ZNK5boost9iostreams6detail22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEclEv.exit: ; preds = %_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEEEENS1_14execute_traitsIT_NS_9result_ofIFSA_vEE4typeEE11result_typeESA_.exit, %bb.f, %bb.h, %.sink.split.i.i
  ret i32 0

bb.j:                                             ; preds = %.sink.split.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.ac) #32 ; 0 uses
  invoke void @_ZNK5boost9iostreams6detail22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEclEv(ptr noundef nonnull align 8 dereferenceable(12) %4)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  %i.ag = call ptr @__cxa_begin_catch(ptr %i.af) #32 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  invoke void @__cxa_rethrow() #47
          to label %bb.p unwind label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.ah

bb.o:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #46
  unreachable

bb.p:                                             ; preds = %bb.l
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5boost9iostreams6detail22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEclEv(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2164, !nonnull !154, !align !554 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !2165 ; 2 uses
  switch i32 %i.c, label %_ZN5boost9iostreams6detail16linked_streambufIcSt11char_traitsIcEE5closeESt13_Ios_Openmode.exit [
    i32 8, label %bb.b
    i32 16, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !211  ; 2 uses
  %i.f = and i32 %i.e, 2
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN5boost9iostreams6detail16linked_streambufIcSt11char_traitsIcEE5closeESt13_Ios_Openmode.exit

bb.c:                                             ; preds = %bb.b
  %i.h = or disjoint i32 %i.e, 2
  store i32 %i.h, ptr %i.d, align 8, !tbaa !211
  br label %.sink.split.i

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !211  ; 2 uses
  %i.k = and i32 %i.j, 4
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %_ZN5boost9iostreams6detail16linked_streambufIcSt11char_traitsIcEE5closeESt13_Ios_Openmode.exit

bb.e:                                             ; preds = %bb.d
  %i.m = or disjoint i32 %i.j, 4
  store i32 %i.m, ptr %i.i, align 8, !tbaa !211
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.c
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !106
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(68) %i.a, i32 noundef %i.c), !inline_history !2160
  br label %_ZN5boost9iostreams6detail16linked_streambufIcSt11char_traitsIcEE5closeESt13_Ios_Openmode.exit

_ZN5boost9iostreams6detail16linked_streambufIcSt11char_traitsIcEE5closeESt13_Ios_Openmode.exit: ; preds = %bb.a, %bb.b, %bb.d, %.sink.split.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, i64 } @_ZN5boost9iostreams6detail16direct_streambufINS0_18basic_array_sourceIcEESt11char_traitsIcEE9seek_implElSt12_Ios_SeekdirSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(129) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::ios_base::failure", align 8 ; 5 uses
  %5 = alloca %"class.std::ios_base::failure", align 8 ; 5 uses
  %6 = alloca %"class.std::ios_base::failure", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !209  ; 17 uses
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8              ; 10 uses
  br i1 %.not.i, label %.thread51, label %_ZNK5boost9iostreams6detail16direct_streambufINS0_18basic_array_sourceIcEESt11char_traitsIcEE8two_headEv.exit

_ZNK5boost9iostreams6detail16direct_streambufINS0_18basic_array_sourceIcEESt11char_traitsIcEE8two_headEv.exit: ; preds = %bb.a
  %.not2.i = icmp ne ptr %i.d, null
  %i.e = icmp ne ptr %i.b, %i.d
  %i.f = and i32 %3, 24
  %i.g = icmp eq i32 %i.f, 24
  %i.h = and i1 %.not2.i, %i.g
  %or.cond = and i1 %i.h, %i.e
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZNK5boost9iostreams6detail16direct_streambufINS0_18basic_array_sourceIcEESt11char_traitsIcEE8two_headEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @_ZN5boost9iostreams6detail8bad_seekB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::ios_base::failure") align 8 %4)
  invoke void @_ZN5boost15throw_exceptionINSt8ios_base7failureB5cxx11EEEvRKT_(ptr noundef nonnull align 8 dereferenceable(32) %4) #47
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8ios_base7failureB5cxx11D1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.ab

bb.e:                                             ; preds = %_ZNK5boost9iostreams6detail16direct_streambufINS0_18basic_array_sourceIcEESt11char_traitsIcEE8two_headEv.exit
  %.not65 = icmp eq ptr %i.b, %i.d                ; 2 uses
  br i1 %.not65, label %bb.f, label %.critedge.thread

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !173  ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !928  ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.thread45, label %_ZN5boost9iostreams6detail16direct_streambufINS0_18basic_array_sourceIcEESt11char_traitsIcEE13init_get_areaEv.exit.thread

.thread45:                                        ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !210
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.q, align 8, !tbaa !929
  store ptr %i.b, ptr %i.l, align 8, !tbaa !928
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.p, ptr %i.r, align 8, !tbaa !930
  br label %_ZN5boost9iostreams6detail16direct_streambufINS0_18basic_array_sourceIcEESt11char_traitsIcEE13init_get_areaEv.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !210
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.u, align 8, !tbaa !929
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.t, ptr %i.w, align 8, !tbaa !930
  %i.x = ptrtoint ptr %i.k to i64
  %i.y = ptrtoint ptr %i.b to i64
  %i.z = sub i64 %i.x, %i.y
  %sext.i = shl i64 %i.z, 32
  %i.aa = ashr exact i64 %sext.i, 32
  %i.ab = getelementptr inbounds i8, ptr %i.b, i64 %i.aa ; 2 uses
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !928
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  br label %_ZN5boost9iostreams6detail16direct_streambufINS0_18basic_array_sourceIcEESt11char_traitsIcEE13init_get_areaEv.exit

.critedge.thread:                                 ; preds = %bb.e
  %i.ad = and i32 %3, 8
  %.not3346 = icmp eq i32 %i.ad, 0
  br i1 %.not3346, label %.thread51, label %.critedge.thread._ZN5boost9iostreams6detail16direct_streambufINS0_18basic_array_sourceIcEESt11char_traitsIcEE13init_get_areaEv.exit_crit_edge

.critedge.thread._ZN5boost9iostreams6detail16direct_streambufINS0_18basic_array_sourceIcEESt11char_traitsIcEE13init_get_areaEv.exit_crit_edge: ; preds = %.critedge.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !928
  br label %_ZN5boost9iostreams6detail16direct_streambufINS0_18basic_array_sourceIcEESt11char_traitsIcEE13init_get_areaEv.exit

_ZN5boost9iostreams6detail16direct_streambufINS0_18basic_array_sourceIcEESt11char_traitsIcEE13init_get_areaEv.exit.thread: ; preds = %bb.g, %.thread45
  %.ph = phi ptr [ %i.b, %.thread45 ], [ %i.m, %bb.g ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.j

_ZN5boost9iostreams6detail16direct_streambufINS0_18basic_array_sourceIcEESt11char_traitsIcEE13init_get_areaEv.exit: ; preds = %.critedge.thread._ZN5boost9iostreams6detail16direct_streambufINS0_18basic_array_sourceIcEESt11char_traitsIcEE13init_get_areaEv.exit_crit_edge, %bb.h
  %i.af = phi ptr [ %.pre, %.critedge.thread._ZN5boost9iostreams6detail16direct_streambufINS0_18basic_array_sourceIcEESt11char_traitsIcEE13init_get_areaEv.exit_crit_edge ], [ %i.ab, %bb.h ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not35 = icmp eq ptr %i.af, null
  br i1 %.not35, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN5boost9iostreams6detail16direct_streambufINS0_18basic_array_sourceIcEESt11char_traitsIcEE13init_get_areaEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !210
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.aj, align 8, !tbaa !929
  store ptr %i.b, ptr %i.ag, align 8, !tbaa !928
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !930
  br label %bb.j

bb.j:                                             ; preds = %_ZN5boost9iostreams6detail16direct_streambufINS0_18basic_array_sourceIcEESt11char_traitsIcEE13init_get_areaEv.exit.thread, %bb.i, %_ZN5boost9iostreams6detail16direct_streambufINS0_18basic_array_sourceIcEESt11char_traitsIcEE13init_get_areaEv.exit
  %i.al = phi ptr [ %i.ag, %bb.i ], [ %i.ag, %_ZN5boost9iostreams6detail16direct_streambufINS0_18basic_array_sourceIcEESt11char_traitsIcEE13init_get_areaEv.exit ], [ %i.ae, %_ZN5boost9iostreams6detail16direct_streambufINS0_18basic_array_sourceIcEESt11char_traitsIcEE13init_get_areaEv.exit.thread ]
  %i.am = phi ptr [ %i.b, %bb.i ], [ %i.af, %_ZN5boost9iostreams6detail16direct_streambufINS0_18basic_array_sourceIcEESt11char_traitsIcEE13init_get_areaEv.exit ], [ %.ph, %_ZN5boost9iostreams6detail16direct_streambufINS0_18basic_array_sourceIcEESt11char_traitsIcEE13init_get_areaEv.exit.thread ]
  switch i32 %2, label %.thread48 [
    i32 0, label %bb.m
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.b to i64
  %i.ap = sub i64 %1, %i.ao
  %i.aq = add i64 %i.ap, %i.an
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !210
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.b to i64
  %i.av = sub i64 %1, %i.au
  %i.aw = add i64 %i.av, %i.at
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l, %bb.k
  %.027 = phi i64 [ %i.aw, %bb.l ], [ %i.aq, %bb.k ], [ %1, %bb.j ] ; 2 uses
  %i.ax = icmp slt i64 %.027, 0
  br i1 %i.ax, label %bb.n, label %.thread48

.thread48:                                        ; preds = %bb.j, %bb.m
  %.02750 = phi i64 [ %.027, %bb.m ], [ 0, %bb.j ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !210 ; 2 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.b to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = icmp sgt i64 %.02750, %i.bc
  br i1 %i.bd, label %bb.n, label %.split

bb.n:                                             ; preds = %.thread48, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @_ZN5boost9iostreams6detail8bad_seekB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::ios_base::failure") align 8 %5)
  invoke void @_ZN5boost15throw_exceptionINSt8ios_base7failureB5cxx11EEEvRKT_(ptr noundef nonnull align 8 dereferenceable(32) %5) #47
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8ios_base7failureB5cxx11D1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.ab

.split:                                           ; preds = %.thread48
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 %.02750
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.bg, align 8, !tbaa !929
  store ptr %i.bf, ptr %i.al, align 8, !tbaa !928
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.az, ptr %i.bh, align 8, !tbaa !930
  br i1 %.not65, label %bb.aa, label %.thread51

.thread51:                                        ; preds = %bb.a, %.critedge.thread, %.split
  %.02853 = phi i64 [ %.02750, %.split ], [ -1, %.critedge.thread ], [ -1, %bb.a ]
  %i.bi = and i32 %3, 16
  %.not36 = icmp eq i32 %i.bi, 0
  %.not37 = icmp eq ptr %i.d, null
  %or.cond59 = select i1 %.not36, i1 true, i1 %.not37
  br i1 %or.cond59, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %.thread51
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !173 ; 2 uses
  %.not38 = icmp eq ptr %i.bk, null
  br i1 %.not38, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !934
  store ptr %i.d, ptr %i.bj, align 8, !tbaa !173
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.d, ptr %i.bn, align 8, !tbaa !174
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !935
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bp = phi ptr [ %i.d, %bb.r ], [ %i.bk, %bb.q ] ; 3 uses
  switch i32 %2, label %.thread55 [
    i32 0, label %bb.v
    i32 1, label %bb.t
    i32 2, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.d to i64
  %i.bs = sub i64 %1, %i.br
  %i.bt = add i64 %i.bs, %i.bq
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !934
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.d to i64
  %i.by = sub i64 %1, %i.bx
  %i.bz = add i64 %i.by, %i.bw
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.u, %bb.t
  %.0 = phi i64 [ %i.bz, %bb.u ], [ %i.bt, %bb.t ], [ %1, %bb.s ] ; 2 uses
  %i.ca = icmp slt i64 %.0, 0
  br i1 %i.ca, label %bb.w, label %.thread55

.thread55:                                        ; preds = %bb.s, %bb.v
  %.057 = phi i64 [ %.0, %bb.v ], [ 0, %bb.s ]    ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !934
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.d to i64                ; 2 uses
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = icmp sgt i64 %.057, %i.cf
  br i1 %i.cg, label %bb.w, label %bb.z

bb.w:                                             ; preds = %.thread55, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @_ZN5boost9iostreams6detail8bad_seekB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::ios_base::failure") align 8 %6)
  invoke void @_ZN5boost15throw_exceptionINSt8ios_base7failureB5cxx11EEEvRKT_(ptr noundef nonnull align 8 dereferenceable(32) %6) #47
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8ios_base7failureB5cxx11D1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.ab

bb.z:                                             ; preds = %.thread55
  %i.ci = ptrtoint ptr %i.bp to i64
  %.neg = add i64 %.057, %i.ce
  %i.cj = sub i64 %.neg, %i.ci
  %sext = shl i64 %i.cj, 32
  %i.ck = ashr exact i64 %sext, 32
  %i.cl = getelementptr inbounds i8, ptr %i.bp, i64 %i.ck
  store ptr %i.cl, ptr %i.bj, align 8, !tbaa !173
  br label %bb.aa

bb.aa:                                            ; preds = %.split, %bb.z, %.thread51
  %.1 = phi i64 [ %.02750, %.split ], [ %.057, %bb.z ], [ %.02853, %.thread51 ]
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %.1, 0
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 0, 1
  ret { i64, i64 } %.fca.1.insert.i

bb.ab:                                            ; preds = %bb.p, %bb.y, %bb.d
  %.pn40 = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.be, %bb.p ], [ %i.ch, %bb.y ]
  resume { ptr, i32 } %.pn40
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5boost9iostreams6detail8bad_seekB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::ios_base::failure") align 8 %0) local_unnamed_addr #4 comdat {
bb.a:
  %1 = alloca %"class.std::error_code", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt17iostream_categoryv() #49
  store i32 1, ptr %1, align 8, !tbaa !87
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %.sroa.41.0..sroa_idx.i, align 8, !tbaa !933
  call void @_ZNSt8ios_base7failureB5cxx11C1EPKcRKSt10error_code(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.87, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5boost9iostreams6detail9cant_readB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::ios_base::failure") align 8 %0) local_unnamed_addr #4 comdat {
bb.a:
  %1 = alloca %"class.std::error_code", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt17iostream_categoryv() #49
  store i32 1, ptr %1, align 8, !tbaa !87
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %.sroa.41.0..sroa_idx.i, align 8, !tbaa !933
  call void @_ZNSt8ios_base7failureB5cxx11C1EPKcRKSt10error_code(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.88, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5boost9iostreams6detail11bad_putbackB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::ios_base::failure") align 8 %0) local_unnamed_addr #4 comdat {
bb.a:
  %1 = alloca %"class.std::error_code", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt17iostream_categoryv() #49
  store i32 1, ptr %1, align 8, !tbaa !87
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %.sroa.41.0..sroa_idx.i, align 8, !tbaa !933
  call void @_ZNSt8ios_base7failureB5cxx11C1EPKcRKSt10error_code(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.89, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN5boost9iostreams13stream_bufferINS1_18basic_array_sourceIcEESt11char_traitsIcESaIcENS1_14input_seekableEEELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #20 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #45
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN5boost9iostreams13stream_bufferINS1_18basic_array_sourceIcEESt11char_traitsIcESaIcENS1_14input_seekableEEELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !217  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(129) %i.b) #32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN5boost9iostreams13stream_bufferINS1_18basic_array_sourceIcEESt11char_traitsIcESaIcENS1_14input_seekableEEELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #45
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPN5boost9iostreams13stream_bufferINS1_18basic_array_sourceIcEESt11char_traitsIcESaIcENS1_14input_seekableEEELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN7openvdb5v13_02io7ArchiveELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #20 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #45
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN7openvdb5v13_02io7ArchiveELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !228  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
end_hunk_0
