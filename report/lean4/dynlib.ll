Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/dynlib?download=true
inline.NumInlined: 214
inline.NumDeleted: 128
begin_hunk_0_@lean_dynlib_load:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.n

bb.i:                                             ; preds = %bb.b, %bb.d, %bb.c
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %_ZNK4lean7sstream3strB5cxx11Ev.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %1, align 8, !tbaa !19    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.n
  br i1 %i.bc, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.j
  %i.bd = load i64, ptr %i.n, align 8, !tbaa !18
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #21
  br label %.body

.body:                                            ; preds = %bb.j, %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  %.pn.pn = phi { ptr, i32 } [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.aa, %bb.f ], [ %i.az, %bb.i ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ba, %bb.j ]
  call void @_ZN4lean7sstreamD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %.pn.pn

bb.k:                                             ; preds = %bb.a
  %i.bf = load ptr, ptr @_ZN4leanL23g_dynlib_external_classE, align 8, !tbaa !9
  tail call void @lean_inc_heartbeat()
  %i.bg = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #20 ; 6 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.l, label %_ZN4leanL11wrap_dynlibEPv.exit

bb.l:                                             ; preds = %bb.k
  tail call void @lean_internal_panic_out_of_memory() #22
  unreachable

_ZN4leanL11wrap_dynlibEPv.exit:                   ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i32 1, ptr %i.bg, align 4, !tbaa !21
  store i32 -33554408, ptr %i.bi, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bf, ptr %i.bj, align 8, !tbaa !23
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr %i.b, ptr %i.bk, align 8, !tbaa !24
  tail call void @lean_inc_heartbeat()
  %i.bl = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #20 ; 5 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.m, label %_ZN4lean15io_result_mk_okEP11lean_object.exit

bb.m:                                             ; preds = %_ZN4leanL11wrap_dynlibEPv.exit
  tail call void @lean_internal_panic_out_of_memory() #22
  unreachable

_ZN4lean15io_result_mk_okEP11lean_object.exit:    ; preds = %_ZN4leanL11wrap_dynlibEPv.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i32 1, ptr %i.bl, align 4, !tbaa !21
  store i32 65552, ptr %i.bn, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bg, ptr %i.bo, align 8, !tbaa !9
  br label %bb.n

bb.n:                                             ; preds = %_ZN4lean15io_result_mk_okEP11lean_object.exit, %_ZN4lean7sstreamD2Ev.exit
  %.07 = phi ptr [ %i.bl, %_ZN4lean15io_result_mk_okEP11lean_object.exit ], [ %i.ag, %_ZN4lean7sstreamD2Ev.exit ]
  ret ptr %.07
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare ptr @dlopen(ptr noundef, i32 noundef) local_unnamed_addr #5

declare noundef ptr @_ZN4lean18io_result_mk_errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare ptr @dlerror() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4lean7sstreamD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !11
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8, !tbaa !18
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #21
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.n) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define ptr @lean_dynlib_get(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @dlerror() #20             ; 0 uses
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = tail call ptr @dlsym(ptr noundef %.val, ptr noundef nonnull %i.c) #20
  %i.e = tail call ptr @dlerror() #20
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @_ZN4leanL30g_dynlib_symbol_external_classE, align 8, !tbaa !9
  tail call void @lean_inc_heartbeat()
  %i.g = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #20 ; 6 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %_ZN4leanL11wrap_symbolEPv.exit

bb.c:                                             ; preds = %bb.b
  tail call void @lean_internal_panic_out_of_memory() #22
  unreachable

_ZN4leanL11wrap_symbolEPv.exit:                   ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 1, ptr %i.g, align 4, !tbaa !21
  store i32 -33554408, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %i.j, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.d, ptr %i.k, align 8, !tbaa !24
  tail call void @lean_inc_heartbeat()
  %i.l = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #20 ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %_ZN4lean14mk_option_someEP11lean_object.exit

bb.d:                                             ; preds = %_ZN4leanL11wrap_symbolEPv.exit
  tail call void @lean_internal_panic_out_of_memory() #22
  unreachable

_ZN4lean14mk_option_someEP11lean_object.exit:     ; preds = %_ZN4leanL11wrap_symbolEPv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 1, ptr %i.l, align 4, !tbaa !21
  store i32 16842768, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.g, ptr %i.o, align 8, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN4lean14mk_option_someEP11lean_object.exit
  %.0 = phi ptr [ %i.l, %_ZN4lean14mk_option_someEP11lean_object.exit ], [ inttoptr (i64 1 to ptr), %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare ptr @dlsym(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef ptr @lean_dynlib_symbol_run_as_init(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.b = tail call noundef ptr %.val(i8 noundef zeroext 1)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN4lean11load_dynlibENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4lean9mk_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.b = tail call ptr @lean_load_dynlib(ptr noundef %i.a)
  tail call void @_ZN4lean17consume_io_resultEP11lean_object(ptr noundef %i.b)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN4lean17consume_io_resultEP11lean_object(ptr noundef %0) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.lean::string_ref", align 8  ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val.i = load i32, ptr %i.a, align 4
  %.mask.i.i = and i32 %.val.i, -16777216
  %i.b = icmp eq i32 %.mask.i.i, 16777216
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val.i11 = load ptr, ptr %i.c, align 8, !tbaa !9 ; 5 uses
  %i.d = ptrtoint ptr %.val.i11 to i64
  %i.e = and i64 %i.d, 1
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4lean3incEP11lean_object.exit

bb.c:                                             ; preds = %bb.b
  %.val.i.i.i = load i32, ptr %.val.i11, align 4, !tbaa !21 ; 3 uses
  %i.f = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.f, label %bb.d, label %bb.e, !prof !25

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw i32 %.val.i.i.i, 1
  store i32 %i.g, ptr %.val.i11, align 4, !tbaa !21
  br label %_ZN4lean3incEP11lean_object.exit

bb.e:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN4lean3incEP11lean_object.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = atomicrmw add ptr %.val.i11, i32 -1 monotonic, align 4 ; 0 uses
  br label %_ZN4lean3incEP11lean_object.exit

_ZN4lean3incEP11lean_object.exit:                 ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  tail call void @_ZN4lean3decEP11lean_object(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.i = tail call ptr @lean_io_error_to_string(ptr noundef %.val.i11)
  store ptr %i.i, ptr %1, align 8, !tbaa !27
  %i.j = tail call ptr @__cxa_allocate_exception(i64 40) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNK4lean10string_ref13to_std_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.g:                                             ; preds = %_ZN4lean3incEP11lean_object.exit
  invoke void @_ZN4lean9throwableC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean9exceptionE, i64 16), ptr %i.j, align 8, !tbaa !11
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN4lean9exceptionE, ptr nonnull @_ZN4lean9throwableD2Ev) #22
          to label %bb.p unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZN4lean3incEP11lean_object.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0 = phi i1 [ false, %bb.h ], [ true, %bb.g ]  ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !19     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !18
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.0, label %bb.j, label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.0, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn16 = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #20
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn15 = phi { ptr, i32 } [ %.pn16, %bb.j ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %.pn15

bb.l:                                             ; preds = %bb.a
  %i.r = load i32, ptr %0, align 4, !tbaa !21     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.m, label %bb.n, !prof !25

bb.m:                                             ; preds = %bb.l
  %i.t = add nsw i32 %i.r, -1
  store i32 %i.t, ptr %0, align 4, !tbaa !21
  br label %_ZN4lean3decEP11lean_object.exit

bb.n:                                             ; preds = %bb.l
  %.not.i1.i = icmp eq i32 %i.r, 0
  br i1 %.not.i1.i, label %_ZN4lean3decEP11lean_object.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0)
  br label %_ZN4lean3decEP11lean_object.exit

_ZN4lean3decEP11lean_object.exit:                 ; preds = %bb.m, %bb.n, %bb.o
  ret void

bb.p:                                             ; preds = %bb.h
  unreachable
}

declare ptr @lean_load_dynlib(ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN4lean9mk_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN4lean11load_pluginENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4lean9mk_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.b = tail call ptr @lean_load_plugin(ptr noundef %i.a, ptr noundef nonnull inttoptr (i64 1 to ptr))
  tail call void @_ZN4lean17consume_io_resultEP11lean_object(ptr noundef %i.b)
  ret void
}

declare ptr @lean_load_plugin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @dlclose(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17   ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !19     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.k = load i64, ptr %i.h, align 8, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.d, label %bb.j, !prof !25

bb.d:                                             ; preds = %bb.c
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.u, align 1, !tbaa !18
  store i8 %i.v, ptr %i.t, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.g, %bb.f, %bb.d
  switch i64 %4, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1, !tbaa !18
  store i8 %i.w, ptr %i.m, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.c
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.i, %bb.h, %bb.j, %bb.k
  store i64 %i.f, ptr %i.a, align 8, !tbaa !17
  %i.x = load ptr, ptr %0, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !18
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #22
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !28

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #22
end_hunk_0
