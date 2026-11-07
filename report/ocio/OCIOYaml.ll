Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/OCIOYaml?download=true
inline.NumInlined: 7690
inline.NumDeleted: 1573
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN4YAML18TypedBadConversionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKNS_4MarkE:bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !50     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZN4YAML13BadConversionC2ERKNS_4MarkE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !43
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #27
  br label %_ZN4YAML13BadConversionC2ERKNS_4MarkE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %2, align 8, !tbaa !50     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !43
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.h

_ZN4YAML13BadConversionC2ERKNS_4MarkE.exit:       ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4YAML18TypedBadConversionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !42
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4YAML18TypedBadConversionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN4YAML13BadConversionD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #27
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

declare noundef i64 @_ZNK4YAML6detail9node_data4sizeEv(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK4YAML5as_ifISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEvEclEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.6") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.YAML::Mark", align 8       ; 5 uses
  %3 = alloca %"struct.YAML::Mark", align 8       ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !971, !nonnull !59, !align !204 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 64) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.e = load ptr, ptr %1, align 8, !tbaa !971, !nonnull !59, !align !204
  %i.f = invoke { i64, i32 } @_ZNK4YAML4Node4MarkEv(ptr noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %bb.c unwind label %bb.e       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %.fca.0.extract3 = extractvalue { i64, i32 } %i.f, 0
  %.fca.1.extract4 = extractvalue { i64, i32 } %i.f, 1
  store i64 %.fca.0.extract3, ptr %2, align 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.fca.1.extract4, ptr %.sroa.26.0..sroa_idx, align 8
  invoke void @_ZN4YAML18TypedBadConversionISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEC2ERKNS_4MarkE(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN4YAML18TypedBadConversionISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEE, ptr nonnull @_ZN4YAML13BadConversionD2Ev) #28
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @__cxa_free_exception(ptr %i.d) #26
  br label %bb.p

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.g = invoke noundef zeroext i1 @_ZN4YAML7convertISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE6decodeERKNS_4NodeERS9_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %i.g, label %bb.n, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.i = tail call ptr @__cxa_allocate_exception(i64 64) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.j = load ptr, ptr %1, align 8, !tbaa !971, !nonnull !59, !align !204
  %i.k = invoke { i64, i32 } @_ZNK4YAML4Node4MarkEv(ptr noundef nonnull align 8 dereferenceable(64) %i.j)
          to label %bb.j unwind label %bb.m       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %.fca.0.extract = extractvalue { i64, i32 } %i.k, 0
  %.fca.1.extract = extractvalue { i64, i32 } %i.k, 1
  store i64 %.fca.0.extract, ptr %3, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.2.0..sroa_idx, align 8
  invoke void @_ZN4YAML18TypedBadConversionISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEC2ERKNS_4MarkE(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN4YAML18TypedBadConversionISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEE, ptr nonnull @_ZN4YAML13BadConversionD2Ev) #28
          to label %bb.q unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %lpad.thr_comm.split-lp21 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.o

bb.m:                                             ; preds = %bb.j, %bb.i
  %lpad.thr_comm20 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @__cxa_free_exception(ptr %i.i) #26
  br label %bb.o

bb.n:                                             ; preds = %bb.g
  ret void

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.h
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm20, %bb.m ], [ %lpad.thr_comm.split-lp21, %bb.l ], [ %i.h, %bb.h ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #26
  br label %bb.p

bb.p:                                             ; preds = %bb.e, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.o ], [ %lpad.thr_comm, %bb.e ]
  resume { ptr, i32 } %.pn.pn

bb.q:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4YAML18TypedBadConversionISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEC2ERKNS_4MarkE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.a, ptr noundef nonnull align 1 dereferenceable(14) @.str.117, i64 14, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 14, ptr %i.b, align 8, !tbaa !90
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 30
  store i8 0, ptr %i.c, align 2, !tbaa !43
  invoke void @_ZN4YAML9ExceptionC2ERKNS_4MarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4YAML23RepresentationExceptionE, i64 16), ptr %0, align 8, !tbaa !42
  %i.d = load ptr, ptr %2, align 8, !tbaa !50     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZN4YAML13BadConversionC2ERKNS_4MarkE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !43
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #27
  br label %_ZN4YAML13BadConversionC2ERKNS_4MarkE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %2, align 8, !tbaa !50     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !43
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.h

_ZN4YAML13BadConversionC2ERKNS_4MarkE.exit:       ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4YAML18TypedBadConversionISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEE, i64 16), ptr %0, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4YAML7convertISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE6decodeERKNS_4NodeERS9_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.YAML::as_if", align 8      ; 4 uses
  %3 = alloca %"class.YAML::detail::node_iterator_base", align 8 ; 6 uses
  %4 = alloca %"class.YAML::detail::node_iterator_base", align 8 ; 7 uses
  %5 = alloca %"class.YAML::detail::iterator_base", align 8 ; 20 uses
  %6 = alloca %"class.YAML::detail::iterator_base", align 8 ; 16 uses
  %7 = alloca %"struct.YAML::detail::iterator_value", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !57, !range !58, !noundef !59
  %i.b = trunc nuw i8 %i.a to i1
  %.sink10.i.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sink10.i.i.i.sroa.gep49 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %.sink10.i.i.i.sroa.gep51 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %.sink10.i.i.i.sroa.gep52 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 64) #26 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4YAML11InvalidNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN4YAML11InvalidNodeE, ptr nonnull @_ZN4YAML11InvalidNodeD1Ev) #28
  unreachable

common.resume:                                    ; preds = %bb.br, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.d ], [ %.pn16.pn, %bb.br ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #26
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !60   ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNK4YAML4Node10IsSequenceEv.exit.thread, label %_ZNK4YAML4Node10IsSequenceEv.exit

_ZNK4YAML4Node10IsSequenceEv.exit:                ; preds = %bb.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !66   ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !88, !range !58, !noundef !59
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp eq i32 %i.m, 3
  %i.o = select i1 %i.k, i1 %i.n, i1 false
  br i1 %i.o, label %bb.f, label %_ZNK4YAML4Node10IsSequenceEv.exit.thread

bb.f:                                             ; preds = %_ZNK4YAML4Node10IsSequenceEv.exit
  %i.p = load ptr, ptr %1, align 8, !tbaa !93     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !94   ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.r, %i.p
  br i1 %.not.i.i19, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.thread, label %.lr.ph.i.i.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.thread: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  br label %bb.h

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.x, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.p, %bb.f ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !43
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.r
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.p, ptr %i.q, align 8, !tbaa !94
  %.pre = load i8, ptr %0, align 8, !tbaa !57, !range !58, !noalias !986
  %i.y = trunc nuw i8 %.pre to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !986)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  br i1 %i.y, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  store i32 0, ptr %5, align 8, !tbaa !113, !alias.scope !986
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sink10.i.i.i.sroa.gep52, i8 0, i64 40, i1 false), !alias.scope !986
  br label %_ZNK4YAML4Node5beginEv.exit

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.thread, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !60, !noalias !986 ; 2 uses
  %.not.not.i = icmp eq ptr %i.z, null
  br i1 %.not.not.i, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !63, !noalias !987
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !66, !noalias !988
  call void @_ZN4YAML6detail9node_data5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.YAML::detail::node_iterator_base") align 8 %4, ptr noundef nonnull align 8 dereferenceable(176) %i.ab), !noalias !986
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !114, !noalias !986 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !37, !noalias !986 ; 10 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.af, null
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  br i1 %.not.i.i.i.i20, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 10 uses
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !986
  %.not.i.i.i.i.i = icmp eq i8 %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.k, label %.thread13.i

.thread13.i:                                      ; preds = %bb.j
  %i.ak = load i32, ptr %i.ah, align 4, !tbaa !44, !noalias !986
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.ah, align 4, !tbaa !44, !noalias !986
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  store ptr %i.ad, ptr %i.aj, align 8, !tbaa !114, !alias.scope !986
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !37, !alias.scope !986
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = atomicrmw volatile add ptr %i.ah, i32 1 acq_rel, align 4, !noalias !986 ; 0 uses
  %.pre.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !986
  %i.an = icmp eq i8 %.pre.i, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  store ptr %i.ad, ptr %i.aj, align 8, !tbaa !114, !alias.scope !986
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !37, !alias.scope !986
  br i1 %i.an, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread13.i
  %i.ao = load i32, ptr %i.ah, align 4, !tbaa !44, !noalias !986
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.ah, align 4, !tbaa !44, !noalias !986
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.aq = atomicrmw volatile add ptr %i.ah, i32 1 acq_rel, align 4, !noalias !986 ; 0 uses
  br label %bb.o

.thread.i:                                        ; preds = %bb.h
  store i32 0, ptr %5, align 8, !tbaa !113, !alias.scope !986
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sink10.i.i.i.sroa.gep52, i8 0, i64 40, i1 false), !alias.scope !986
  br label %_ZNK4YAML4Node5beginEv.exit

bb.n:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.ad, ptr %i.ar, align 8, !tbaa !114, !alias.scope !986
  store ptr null, ptr %i.ag, align 8, !tbaa !37, !alias.scope !986
  br label %_ZNK4YAML4Node5beginEv.exit

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.as = load atomic i64, ptr %i.ah acquire, align 8, !noalias !986 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4294967297
  %i.au = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %i.at, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.ah, align 8, !tbaa !39, !noalias !986
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !40, !noalias !986
  %i.aw = load ptr, ptr %i.af, align 8, !tbaa !42, !noalias !986
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !986
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #26, !noalias !986, !inline_history !3
  %i.az = load ptr, ptr %i.af, align 8, !tbaa !42, !noalias !986
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !986
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #26, !noalias !986, !inline_history !3
  br label %_ZNK4YAML4Node5beginEv.exit

bb.q:                                             ; preds = %bb.o
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !986
  %.not.i.i.i6.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i6.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = add nsw i32 %i.au, -1
  store i32 %i.bd, ptr %i.ah, align 8, !tbaa !44, !noalias !986
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.be = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4, !noalias !986
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i = phi i32 [ %i.au, %bb.r ], [ %i.be, %bb.s ]
  %i.bf = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bf, label %bb.t, label %_ZNK4YAML4Node5beginEv.exit, !prof !45

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #26, !noalias !986
  br label %_ZNK4YAML4Node5beginEv.exit

_ZNK4YAML4Node5beginEv.exit:                      ; preds = %bb.g, %.thread.i, %bb.n, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !989)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %9 = load i8, ptr %0, align 8, !tbaa !57, !range !58, !noalias !989, !noundef !59
  %i.bg = trunc nuw i8 %9 to i1
  br i1 %i.bg, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK4YAML4Node5beginEv.exit
  store i32 0, ptr %6, align 8, !tbaa !113, !alias.scope !989
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sink10.i.i.i.sroa.gep49, i8 0, i64 40, i1 false), !alias.scope !989
  br label %_ZNK4YAML4Node3endEv.exit

bb.v:                                             ; preds = %_ZNK4YAML4Node5beginEv.exit
  %i.bh = load ptr, ptr %i.f, align 8, !tbaa !60, !noalias !989 ; 2 uses
  %.not.not.i21 = icmp eq ptr %i.bh, null
  br i1 %.not.not.i21, label %.thread.i29, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !63, !noalias !990
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !66, !noalias !991
  invoke void @_ZN4YAML6detail9node_data3endEv(ptr dead_on_unwind nonnull writable sret(%"class.YAML::detail::node_iterator_base") align 8 %3, ptr noundef nonnull align 8 dereferenceable(176) %i.bj)
          to label %.noexc unwind label %bb.aw

.noexc:                                           ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !114, !noalias !989 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !37, !noalias !989 ; 10 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.bn, null
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  br i1 %.not.i.i.i.i22, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %.noexc
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 10 uses
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !989
  %.not.i.i.i.i.i23 = icmp eq i8 %i.bq, 0
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  br i1 %.not.i.i.i.i.i23, label %bb.y, label %.thread13.i24

.thread13.i24:                                    ; preds = %bb.x
  %i.bs = load i32, ptr %i.bp, align 4, !tbaa !44, !noalias !989
  %i.bt = add nsw i32 %i.bs, 1                    ; 2 uses
  store i32 %i.bt, ptr %i.bp, align 4, !tbaa !44, !noalias !989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  store ptr %i.bl, ptr %i.br, align 8, !tbaa !114, !alias.scope !989
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !37, !alias.scope !989
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bu = atomicrmw volatile add ptr %i.bp, i32 1 acq_rel, align 4, !noalias !989 ; 0 uses
  %.pre.i28 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !989
  %i.bv = icmp eq i8 %.pre.i28, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  store ptr %i.bl, ptr %i.br, align 8, !tbaa !114, !alias.scope !989
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !37, !alias.scope !989
  br i1 %i.bv, label %bb.aa, label %._crit_edge

._crit_edge:                                      ; preds = %bb.y
  %.pre57 = load i32, ptr %i.bp, align 4, !tbaa !44, !noalias !989
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge, %.thread13.i24
  %i.bw = phi i32 [ %.pre57, %._crit_edge ], [ %i.bt, %.thread13.i24 ]
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bp, align 4, !tbaa !44, !noalias !989
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.by = atomicrmw volatile add ptr %i.bp, i32 1 acq_rel, align 4, !noalias !989 ; 0 uses
  br label %bb.ac

.thread.i29:                                      ; preds = %bb.v
  store i32 0, ptr %6, align 8, !tbaa !113, !alias.scope !989
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sink10.i.i.i.sroa.gep49, i8 0, i64 40, i1 false), !alias.scope !989
  br label %_ZNK4YAML4Node3endEv.exit

bb.ab:                                            ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.bl, ptr %i.bz, align 8, !tbaa !114, !alias.scope !989
  store ptr null, ptr %i.bo, align 8, !tbaa !37, !alias.scope !989
  br label %_ZNK4YAML4Node3endEv.exit

bb.ac:                                            ; preds = %bb.aa, %bb.z
  %i.ca = load atomic i64, ptr %i.bp acquire, align 8, !noalias !989 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 4294967297
  %i.cc = trunc i64 %i.ca to i32                  ; 2 uses
  br i1 %i.cb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.bp, align 8, !tbaa !39, !noalias !989
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.cd, align 4, !tbaa !40, !noalias !989
  %i.ce = load ptr, ptr %i.bn, align 8, !tbaa !42, !noalias !989
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !989
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #26, !noalias !989, !inline_history !4
  %i.ch = load ptr, ptr %i.bn, align 8, !tbaa !42, !noalias !989
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !989
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #26, !noalias !989, !inline_history !4
  br label %_ZNK4YAML4Node3endEv.exit

bb.ae:                                            ; preds = %bb.ac
  %i.ck = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !989
  %.not.i.i.i6.i25 = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.i6.i25, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cl = add nsw i32 %i.cc, -1
  store i32 %i.cl, ptr %i.bp, align 8, !tbaa !44, !noalias !989
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i26

bb.ag:                                            ; preds = %bb.ae
  %i.cm = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4, !noalias !989
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i26

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i26: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i27 = phi i32 [ %i.cc, %bb.af ], [ %i.cm, %bb.ag ]
  %i.cn = icmp eq i32 %.0.i.i.i.i.i27, 1
  br i1 %i.cn, label %bb.ah, label %_ZNK4YAML4Node3endEv.exit, !prof !45

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i26
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #26, !noalias !989
  br label %_ZNK4YAML4Node3endEv.exit

_ZNK4YAML4Node3endEv.exit:                        ; preds = %bb.u, %.thread.i29, %bb.ab, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i26, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.pre58 = load i32, ptr %5, align 8, !tbaa !113
  br label %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEEppEv.exit

_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEEppEv.exit: ; preds = %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEEppEv.exit.backedge, %_ZNK4YAML4Node3endEv.exit
  %i.cw = phi i32 [ %.pre58, %_ZNK4YAML4Node3endEv.exit ], [ %i.fx, %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEEppEv.exit.backedge ] ; 2 uses
  %i.cx = load i32, ptr %6, align 8, !tbaa !113
  %.not.i.i.i = icmp eq i32 %i.cw, %i.cx
  br i1 %.not.i.i.i, label %bb.ai, label %_ZNK4YAML6detail13iterator_baseIKNS0_14iterator_valueEEneIS3_EEbRKNS1_IT_EE.exit.thread

bb.ai:                                            ; preds = %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEEppEv.exit
  switch i32 %i.cw, label %_ZNK4YAML6detail13iterator_baseIKNS0_14iterator_valueEEneIS3_EEbRKNS1_IT_EE.exit.thread54 [
    i32 2, label %bb.aj
    i32 1, label %_ZNK4YAML6detail13iterator_baseIKNS0_14iterator_valueEEneIS3_EEbRKNS1_IT_EE.exit
  ]

bb.aj:                                            ; preds = %bb.ai
  br label %_ZNK4YAML6detail13iterator_baseIKNS0_14iterator_valueEEneIS3_EEbRKNS1_IT_EE.exit

_ZNK4YAML6detail13iterator_baseIKNS0_14iterator_valueEEneIS3_EEbRKNS1_IT_EE.exit: ; preds = %bb.ai, %bb.aj
  %.sink10.i.i.i.sroa.phi = phi ptr [ %.sink10.i.i.i.sroa.gep, %bb.aj ], [ %.sink10.i.i.i.sroa.gep49, %bb.ai ]
  %.sink10.i.i.i.sroa.phi50 = phi ptr [ %.sink10.i.i.i.sroa.gep51, %bb.aj ], [ %.sink10.i.i.i.sroa.gep52, %bb.ai ]
  %i.cy = load ptr, ptr %.sink10.i.i.i.sroa.phi50, align 8, !tbaa !115
  %i.cz = load ptr, ptr %.sink10.i.i.i.sroa.phi, align 8, !tbaa !115
  %.not = icmp eq ptr %i.cy, %i.cz
  br i1 %.not, label %_ZNK4YAML6detail13iterator_baseIKNS0_14iterator_valueEEneIS3_EEbRKNS1_IT_EE.exit.thread54, label %_ZNK4YAML6detail13iterator_baseIKNS0_14iterator_valueEEneIS3_EEbRKNS1_IT_EE.exit.thread

_ZNK4YAML6detail13iterator_baseIKNS0_14iterator_valueEEneIS3_EEbRKNS1_IT_EE.exit.thread54: ; preds = %bb.ai, %_ZNK4YAML6detail13iterator_baseIKNS0_14iterator_valueEEneIS3_EEbRKNS1_IT_EE.exit
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i30 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i30, label %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNK4YAML6detail13iterator_baseIKNS0_14iterator_valueEEneIS3_EEbRKNS1_IT_EE.exit.thread54
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 4 uses
  %i.dd = load atomic i64, ptr %i.dc acquire, align 8 ; 2 uses
  %i.de = icmp eq i64 %i.dd, 4294967297
  %i.df = trunc i64 %i.dd to i32                  ; 2 uses
  br i1 %i.de, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.dc, align 8, !tbaa !39
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store i32 0, ptr %i.dg, align 4, !tbaa !40
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !42
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #26, !inline_history !5
  %i.dk = load ptr, ptr %i.db, align 8, !tbaa !42
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #26, !inline_history !5
  br label %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEED2Ev.exit

bb.am:                                            ; preds = %bb.ak
  %i.dn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i31 = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i.i.i31, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.do = add nsw i32 %i.df, -1
  store i32 %i.do, ptr %i.dc, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i32

bb.ao:                                            ; preds = %bb.am
  %i.dp = atomicrmw volatile add ptr %i.dc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i32

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i32: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i.i33 = phi i32 [ %i.df, %bb.an ], [ %i.dp, %bb.ao ]
  %i.dq = icmp eq i32 %.0.i.i.i.i.i33, 1
  br i1 %i.dq, label %bb.ap, label %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEED2Ev.exit, !prof !45

end_hunk_0
