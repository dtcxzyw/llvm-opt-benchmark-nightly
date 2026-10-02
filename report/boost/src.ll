Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/src?download=true
inline.NumInlined: 7222
inline.NumDeleted: 1430
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 62
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN5boost4json10serializer5resetEPKNS0_6objectE:bb.a
  tail call void @__clang_call_terminate(ptr %i.l) #49
  unreachable

_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.h, ptr %i.d, align 8, !tbaa !233
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZN5boost4json6detail5stack5clearEv.exit, label %.lr.ph.i, !llvm.loop !30

_ZN5boost4json6detail5stack5clearEv.exit:         ; preds = %_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.m, align 8, !tbaa !237
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 0, ptr %i.n, align 8, !tbaa !263
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost4json9serializeB5cxx11ERKNS0_6stringERKNS0_17serialize_optionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !93    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = icmp eq i8 %i.b, 5
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !255
  %i.g = zext i32 %i.f to i64
  br label %_ZNK5boost4json6string7subviewEv.exit

bb.c:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ashr i64 %i.h, 56
  %i.j = sub nsw i64 14, %i.i
  br label %_ZNK5boost4json6string7subviewEv.exit

_ZNK5boost4json6string7subviewEv.exit:            ; preds = %bb.b, %bb.c
  %i.k = phi i64 [ %i.g, %bb.b ], [ %i.j, %bb.c ]
  %i.l = icmp eq i8 %i.b, -123
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.0.i.i.i = select i1 %i.l, ptr %i.m, ptr %i.n
  tail call void @_ZN5boost4json9serializeB5cxx11ENS_4core17basic_string_viewIcEERKNS0_17serialize_optionsE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull %.0.i.i.i, i64 %i.k, ptr noundef nonnull align 1 dereferenceable(1) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost4json9serializeB5cxx11ENS_4core17basic_string_viewIcEERKNS0_17serialize_optionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %4 = alloca %"class.boost::json::serializer", align 8 ; 14 uses
  %5 = alloca %"class.boost::json::storage_ptr", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  store i64 0, ptr %5, align 8, !tbaa !96
  call void @_ZN5boost4json10serializerC1ENS0_11storage_ptrEPhmRKNS0_17serialize_optionsE(ptr noundef nonnull align 8 dereferenceable(129) %4, ptr noundef nonnull align 8 %5, ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef nonnull align 1 dereferenceable(1) %3) #47
  %i.b = load i64, ptr %5, align 8, !tbaa !96     ; 2 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN5boost4json11storage_ptrD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, -4                         ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = atomicrmw sub ptr %i.f, i64 1 acq_rel, align 8
  %i.h = icmp ne i64 %i.g, 1
  %i.i = icmp eq i64 %i.d, 0
  %or.cond.i.i = or i1 %i.i, %i.h
  br i1 %or.cond.i.i, label %_ZN5boost4json11storage_ptrD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !98
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #47, !inline_history !7
  br label %_ZN5boost4json11storage_ptrD2Ev.exit

_ZN5boost4json11storage_ptrD2Ev.exit:             ; preds = %bb.a, %bb.b, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !88
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !94
  store i8 0, ptr %i.m, align 8, !tbaa !93
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %1, ptr %i.p, align 8, !tbaa !191
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !191
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 112
  store ptr @_ZN5boost4json6detail15do_write_stringILb1EEEbRNS1_6writerERNS1_6streamE, ptr %i.q, align 8, !tbaa !260
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 120
  store ptr @_ZN5boost4json6detail15do_write_stringILb0EEEbRNS1_6writerERNS1_6streamE, ptr %i.r, align 8, !tbaa !262
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !233  ; 2 uses
  %.not1.i.i = icmp eq ptr %i.t, null
  br i1 %.not1.i.i, label %_ZN5boost4json10serializer5resetENS_4core17basic_string_viewIcEE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost4json11storage_ptrD2Ev.exit, %_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i
  %i.u = phi ptr [ %i.w, %_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i ], [ %i.t, %_ZN5boost4json11storage_ptrD2Ev.exit ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !235  ; 3 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !236
  %i.y = invoke noundef ptr %i.x(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef null)
          to label %_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #49
  unreachable

_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i: ; preds = %.lr.ph.i.i
  store ptr %i.w, ptr %i.s, align 8, !tbaa !233
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZN5boost4json10serializer5resetENS_4core17basic_string_viewIcEE.exit, label %.lr.ph.i.i, !llvm.loop !30

_ZN5boost4json10serializer5resetENS_4core17basic_string_viewIcEE.exit: ; preds = %_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i, %_ZN5boost4json11storage_ptrD2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.ab, align 8, !tbaa !237
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 128
  store i8 0, ptr %i.ac, align 8, !tbaa !263
  invoke void @_ZN5boost4json6detail14serialize_implERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_10serializerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(129) %4)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_ZN5boost4json10serializer5resetENS_4core17basic_string_viewIcEE.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %0, align 8, !tbaa !92    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.m
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !93
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @_ZN5boost4json6detail5stackD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(129) %4) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  resume { ptr, i32 } %i.ad

bb.f:                                             ; preds = %_ZN5boost4json10serializer5resetENS_4core17basic_string_viewIcEE.exit
  call void @_ZN5boost4json6detail5stackD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(129) %4) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost4json10serializer5resetENS_4core17basic_string_viewIcEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(129) initializes((56, 72), (112, 128)) %0, ptr %1, i64 %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %1, ptr %i.b, align 8, !tbaa !191
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !191
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZN5boost4json6detail15do_write_stringILb1EEEbRNS1_6writerERNS1_6streamE, ptr %i.c, align 8, !tbaa !260
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @_ZN5boost4json6detail15do_write_stringILb0EEEbRNS1_6writerERNS1_6streamE, ptr %i.d, align 8, !tbaa !262
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !233  ; 2 uses
  %.not1.i = icmp eq ptr %i.f, null
  br i1 %.not1.i, label %_ZN5boost4json6detail5stack5clearEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i
  %i.g = phi ptr [ %i.i, %_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i ], [ %i.f, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !235  ; 3 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !236
  %i.k = invoke noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef null)
          to label %_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %.lr.ph.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #49
  unreachable

_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.i, ptr %i.e, align 8, !tbaa !233
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZN5boost4json6detail5stack5clearEv.exit, label %.lr.ph.i, !llvm.loop !30

_ZN5boost4json6detail5stack5clearEv.exit:         ; preds = %_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.n, align 8, !tbaa !237
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 0, ptr %i.o, align 8, !tbaa !263
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost4jsonlsERSoRKNS0_5valueE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::json::detail::stream", align 8 ; 8 uses
  %3 = alloca %"class.boost::json::serializer", align 8 ; 13 uses
  %4 = alloca %"struct.boost::json::serialize_options", align 1 ; 4 uses
  %i.a = alloca [4096 x i8], align 16             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  %i.b = load ptr, ptr %0, align 8, !tbaa !98
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d ; 3 uses
  %i.f = load i32, ptr @_ZN5boost4json12_GLOBAL__N_116serialize_xallocE, align 4, !tbaa !176 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.h = load i32, ptr %i.g, align 8, !tbaa !267
  %i.i = icmp ult i32 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !268
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [16 x i8], ptr %i.k, i64 %i.l
  br label %_ZN5boost4json12_GLOBAL__N_116get_stream_flagsERSo.exit

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt8ios_base13_M_grow_wordsEib(ptr noundef nonnull align 8 dereferenceable(216) %i.e, i32 noundef %i.f, i1 noundef zeroext true)
  br label %_ZN5boost4json12_GLOBAL__N_116get_stream_flagsERSo.exit

_ZN5boost4json12_GLOBAL__N_116get_stream_flagsERSo.exit: ; preds = %bb.b, %bb.c
  %i.o = phi ptr [ %i.m, %bb.b ], [ %i.n, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !90
  %i.r = trunc i64 %i.q to i8
  %i.s = and i8 %i.r, 1
  store i8 %i.s, ptr %4, align 1
  call void @_ZN5boost4json10serializerC1ERKNS0_17serialize_optionsE(ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  store ptr %1, ptr %i.t, align 8, !tbaa !261
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 6 uses
  store ptr @_ZN5boost4json6detail11write_valueILb1EEEbRNS1_6writerERNS1_6streamE, ptr %i.u, align 8, !tbaa !260
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 2 uses
  store ptr @_ZN5boost4json6detail11write_valueILb0EEEbRNS1_6writerERNS1_6streamE, ptr %i.v, align 8, !tbaa !262
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !233  ; 2 uses
  %.not1.i.i = icmp eq ptr %i.x, null
  br i1 %.not1.i.i, label %.lr.ph, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost4json12_GLOBAL__N_116get_stream_flagsERSo.exit, %_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i
  %i.y = phi ptr [ %i.aa, %_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i ], [ %i.x, %_ZN5boost4json12_GLOBAL__N_116get_stream_flagsERSo.exit ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !235 ; 3 uses
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !236
  %i.ac = invoke noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef null)
          to label %_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #49
  unreachable

_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i: ; preds = %.lr.ph.i.i
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !233
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %.lr.ph, label %.lr.ph.i.i, !llvm.loop !30

.lr.ph:                                           ; preds = %_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i, %_ZN5boost4json12_GLOBAL__N_116get_stream_flagsERSo.exit
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store i64 0, ptr %i.af, align 8, !tbaa !237
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 4 uses
  store i8 0, ptr %i.ag, align 8, !tbaa !263
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 4096 ; 2 uses
  %i.ai = ptrtoint ptr %i.a to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  %i.aj = load ptr, ptr %i.u, align 8, !tbaa !260
  %.not.i.i5 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i5, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.t, align 8, !tbaa !261
  store <2 x ptr> <ptr @_ZN5boost4json6detail10write_implIDnLb1EEEbRNS1_6writerERNS1_6streamE, ptr @_ZN5boost4json6detail10write_implIDnLb0EEEbRNS1_6writerERNS1_6streamE>, ptr %i.u, align 8, !tbaa !164
  %i.ak = load ptr, ptr %i.w, align 8, !tbaa !233 ; 2 uses
  %.not1.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not1.i.i.i.i, label %.thread.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i.i.i
  %i.al = phi ptr [ %i.an, %_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i.i.i ], [ %i.ak, %bb.f ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !235 ; 3 uses
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !236
  %i.ap = invoke noundef ptr %i.ao(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef null)
          to label %_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i.i.i unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #49
  unreachable

_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.an, ptr %i.w, align 8, !tbaa !233
  %.not.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i, label %.thread.i, label %.lr.ph.i.i.i.i, !llvm.loop !30

.thread.i:                                        ; preds = %_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i.i.i, %bb.f
  store i64 0, ptr %i.af, align 8, !tbaa !237
  store i8 0, ptr %i.ag, align 8, !tbaa !263
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  store ptr %i.a, ptr %2, align 8, !tbaa !265
  store ptr %i.ah, ptr %5, align 8, !tbaa !266
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %.pre.i = load i64, ptr %i.af, align 8, !tbaa !237
  %.pre.fr.i = freeze i64 %.pre.i
  %i.as = icmp eq i64 %.pre.fr.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  store ptr %i.a, ptr %2, align 8, !tbaa !265
  store ptr %i.ah, ptr %5, align 8, !tbaa !266
  %spec.select.i = select i1 %i.as, ptr %i.u, ptr %i.v
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread.i
  %i.at = phi ptr [ %spec.select.i, %bb.h ], [ %i.u, %.thread.i ]
  %.sink.i.i = load ptr, ptr %i.at, align 8, !tbaa !164
  %i.au = invoke noundef zeroext i1 %.sink.i.i(ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc unwind label %bb.m, !inline_history !580 ; 0 uses

.noexc:                                           ; preds = %bb.i
  %i.av = load i64, ptr %i.af, align 8, !tbaa !237
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.noexc
  store i8 1, ptr %i.ag, align 8, !tbaa !263
  store ptr null, ptr %i.u, align 8, !tbaa !260
  store ptr null, ptr %i.t, align 8, !tbaa !261
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.noexc
  %i.ax = load ptr, ptr %2, align 8, !tbaa !265
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost4corelsIcEERSt13basic_ostreamIT_St11char_traitsIS3_EES7_NS0_17basic_string_viewIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull %i.a, i64 %i.az)
          to label %bb.l unwind label %bb.m       ; 0 uses

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  %i.bb = load i8, ptr %i.ag, align 8, !tbaa !263, !range !231, !noundef !125
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %._crit_edge, label %bb.e, !llvm.loop !581

bb.m:                                             ; preds = %bb.i, %bb.k
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  call void @_ZN5boost4json6detail5stackD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(129) %3) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  resume { ptr, i32 } %i.bd

._crit_edge:                                      ; preds = %bb.l
  call void @_ZN5boost4json6detail5stackD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(129) %3) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost4jsonlsERSoRKNS0_5arrayE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::json::serializer", align 8 ; 13 uses
  %3 = alloca %"struct.boost::json::serialize_options", align 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  %i.a = load ptr, ptr %0, align 8, !tbaa !98
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 3 uses
  %i.e = load i32, ptr @_ZN5boost4json12_GLOBAL__N_116serialize_xallocE, align 4, !tbaa !176 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.g = load i32, ptr %i.f, align 8, !tbaa !267
  %i.h = icmp ult i32 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !268
  %i.k = sext i32 %i.e to i64
  %i.l = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.k
  br label %_ZN5boost4json12_GLOBAL__N_116get_stream_flagsERSo.exit

bb.c:                                             ; preds = %bb.a
  %i.m = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt8ios_base13_M_grow_wordsEib(ptr noundef nonnull align 8 dereferenceable(216) %i.d, i32 noundef %i.e, i1 noundef zeroext true)
  br label %_ZN5boost4json12_GLOBAL__N_116get_stream_flagsERSo.exit

_ZN5boost4json12_GLOBAL__N_116get_stream_flagsERSo.exit: ; preds = %bb.b, %bb.c
  %i.n = phi ptr [ %i.l, %bb.b ], [ %i.m, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !90
  %i.q = trunc i64 %i.p to i8
  %i.r = and i8 %i.q, 1
  store i8 %i.r, ptr %3, align 1
  call void @_ZN5boost4json10serializerC1ERKNS0_17serialize_optionsE(ptr noundef nonnull align 8 dereferenceable(129) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %1, ptr %i.s, align 8, !tbaa !261
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 112
  store ptr @_ZN5boost4json6detail11write_arrayILb1EEEbRNS1_6writerERNS1_6streamE, ptr %i.t, align 8, !tbaa !260
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 120
  store ptr @_ZN5boost4json6detail11write_arrayILb0EEEbRNS1_6writerERNS1_6streamE, ptr %i.u, align 8, !tbaa !262
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !233  ; 2 uses
  %.not1.i.i = icmp eq ptr %i.w, null
  br i1 %.not1.i.i, label %_ZN5boost4json10serializer5resetEPKNS0_5arrayE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost4json12_GLOBAL__N_116get_stream_flagsERSo.exit, %_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i
  %i.x = phi ptr [ %i.z, %_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i ], [ %i.w, %_ZN5boost4json12_GLOBAL__N_116get_stream_flagsERSo.exit ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !235  ; 3 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !236
  %i.ab = invoke noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef null)
          to label %_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #49
  unreachable

_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i: ; preds = %.lr.ph.i.i
  store ptr %i.z, ptr %i.v, align 8, !tbaa !233
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZN5boost4json10serializer5resetEPKNS0_5arrayE.exit, label %.lr.ph.i.i, !llvm.loop !30

_ZN5boost4json10serializer5resetEPKNS0_5arrayE.exit: ; preds = %_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i, %_ZN5boost4json12_GLOBAL__N_116get_stream_flagsERSo.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.ae, align 8, !tbaa !237
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 128
  store i8 0, ptr %i.af, align 8, !tbaa !263
  invoke fastcc void @_ZN5boost4jsonL10to_ostreamERSoRNS0_10serializerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(129) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5boost4json10serializer5resetEPKNS0_5arrayE.exit
  call void @_ZN5boost4json6detail5stackD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(129) %2) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  ret ptr %0

bb.f:                                             ; preds = %_ZN5boost4json10serializer5resetEPKNS0_5arrayE.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost4json6detail5stackD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(129) %2) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  resume { ptr, i32 } %i.ag
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5boost4jsonL10to_ostreamERSoRNS0_10serializerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(129) %1) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::json::detail::stream", align 8 ; 8 uses
  %i.a = alloca [4096 x i8], align 16             ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !263, !range !231, !noundef !125
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4096 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = ptrtoint ptr %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost4json10serializer4readILm4096EEENS_4core17basic_string_viewIcEERAT__c.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !260
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.h, align 8, !tbaa !261
  store <2 x ptr> <ptr @_ZN5boost4json6detail10write_implIDnLb1EEEbRNS1_6writerERNS1_6streamE, ptr @_ZN5boost4json6detail10write_implIDnLb0EEEbRNS1_6writerERNS1_6streamE>, ptr %i.e, align 8, !tbaa !164
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !233  ; 2 uses
  %.not1.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not1.i.i.i.i, label %.thread.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i.i.i
  %i.m = phi ptr [ %i.o, %_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !235  ; 3 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !236
  %i.q = invoke noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef null)
          to label %_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i.i.i unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #49
  unreachable

_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.o, ptr %i.i, align 8, !tbaa !233
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %.thread.i, label %.lr.ph.i.i.i.i, !llvm.loop !30

.thread.i:                                        ; preds = %_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i.i.i, %bb.c
  store i64 0, ptr %.phi.trans.insert.i, align 8, !tbaa !237
  store i8 0, ptr %i.b, align 8, !tbaa !263
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  store ptr %i.a, ptr %2, align 8, !tbaa !265
  store ptr %i.f, ptr %3, align 8, !tbaa !266
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !237
  %.pre.fr.i = freeze i64 %.pre.i
  %i.t = icmp eq i64 %.pre.fr.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  store ptr %i.a, ptr %2, align 8, !tbaa !265
  store ptr %i.f, ptr %3, align 8, !tbaa !266
  %spec.select.i = select i1 %i.t, ptr %i.e, ptr %i.g
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread.i
  %i.u = phi ptr [ %spec.select.i, %bb.e ], [ %i.e, %.thread.i ]
  %.sink.i.i = load ptr, ptr %i.u, align 8, !tbaa !164
  %i.v = call noundef zeroext i1 %.sink.i.i(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef nonnull align 8 dereferenceable(16) %2), !inline_history !45 ; 0 uses
  %i.w = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !237
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.g, label %_ZN5boost4json10serializer4readILm4096EEENS_4core17basic_string_viewIcEERAT__c.exit

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.b, align 8, !tbaa !263
  store ptr null, ptr %i.e, align 8, !tbaa !260
  store ptr null, ptr %i.h, align 8, !tbaa !261
  br label %_ZN5boost4json10serializer4readILm4096EEENS_4core17basic_string_viewIcEERAT__c.exit

_ZN5boost4json10serializer4readILm4096EEENS_4core17basic_string_viewIcEERAT__c.exit: ; preds = %bb.f, %bb.g
  %i.y = load ptr, ptr %2, align 8, !tbaa !265
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef %i.aa) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  %i.ac = load i8, ptr %i.b, align 8, !tbaa !263, !range !231, !noundef !125
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %._crit_edge, label %bb.b, !llvm.loop !582

._crit_edge:                                      ; preds = %_ZN5boost4json10serializer4readILm4096EEENS_4core17basic_string_viewIcEERAT__c.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost4jsonlsERSoRKNS0_6objectE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::json::serializer", align 8 ; 13 uses
  %3 = alloca %"struct.boost::json::serialize_options", align 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  %i.a = load ptr, ptr %0, align 8, !tbaa !98
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 3 uses
  %i.e = load i32, ptr @_ZN5boost4json12_GLOBAL__N_116serialize_xallocE, align 4, !tbaa !176 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.g = load i32, ptr %i.f, align 8, !tbaa !267
  %i.h = icmp ult i32 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !268
  %i.k = sext i32 %i.e to i64
  %i.l = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.k
  br label %_ZN5boost4json12_GLOBAL__N_116get_stream_flagsERSo.exit

bb.c:                                             ; preds = %bb.a
  %i.m = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt8ios_base13_M_grow_wordsEib(ptr noundef nonnull align 8 dereferenceable(216) %i.d, i32 noundef %i.e, i1 noundef zeroext true)
  br label %_ZN5boost4json12_GLOBAL__N_116get_stream_flagsERSo.exit

_ZN5boost4json12_GLOBAL__N_116get_stream_flagsERSo.exit: ; preds = %bb.b, %bb.c
  %i.n = phi ptr [ %i.l, %bb.b ], [ %i.m, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !90
  %i.q = trunc i64 %i.p to i8
  %i.r = and i8 %i.q, 1
  store i8 %i.r, ptr %3, align 1
  call void @_ZN5boost4json10serializerC1ERKNS0_17serialize_optionsE(ptr noundef nonnull align 8 dereferenceable(129) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %1, ptr %i.s, align 8, !tbaa !261
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 112
  store ptr @_ZN5boost4json6detail12write_objectILb1EEEbRNS1_6writerERNS1_6streamE, ptr %i.t, align 8, !tbaa !260
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 120
  store ptr @_ZN5boost4json6detail12write_objectILb0EEEbRNS1_6writerERNS1_6streamE, ptr %i.u, align 8, !tbaa !262
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !233  ; 2 uses
  %.not1.i.i = icmp eq ptr %i.w, null
  br i1 %.not1.i.i, label %_ZN5boost4json10serializer5resetEPKNS0_6objectE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost4json12_GLOBAL__N_116get_stream_flagsERSo.exit, %_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i
  %i.x = phi ptr [ %i.z, %_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i ], [ %i.w, %_ZN5boost4json12_GLOBAL__N_116get_stream_flagsERSo.exit ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !235  ; 3 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !236
  %i.ab = invoke noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef null)
          to label %_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #49
  unreachable

_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i: ; preds = %.lr.ph.i.i
  store ptr %i.z, ptr %i.v, align 8, !tbaa !233
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZN5boost4json10serializer5resetEPKNS0_6objectE.exit, label %.lr.ph.i.i, !llvm.loop !30

_ZN5boost4json10serializer5resetEPKNS0_6objectE.exit: ; preds = %_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i, %_ZN5boost4json12_GLOBAL__N_116get_stream_flagsERSo.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.ae, align 8, !tbaa !237
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 128
  store i8 0, ptr %i.af, align 8, !tbaa !263
  invoke fastcc void @_ZN5boost4jsonL10to_ostreamERSoRNS0_10serializerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(129) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5boost4json10serializer5resetEPKNS0_6objectE.exit
  call void @_ZN5boost4json6detail5stackD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(129) %2) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  ret ptr %0

bb.f:                                             ; preds = %_ZN5boost4json10serializer5resetEPKNS0_6objectE.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost4json6detail5stackD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(129) %2) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  resume { ptr, i32 } %i.ag
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost4jsonlsERSoRKNS0_6stringE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::json::serializer", align 8 ; 14 uses
  %3 = alloca %"struct.boost::json::serialize_options", align 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  %i.a = load ptr, ptr %0, align 8, !tbaa !98
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 3 uses
  %i.e = load i32, ptr @_ZN5boost4json12_GLOBAL__N_116serialize_xallocE, align 4, !tbaa !176 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.g = load i32, ptr %i.f, align 8, !tbaa !267
  %i.h = icmp ult i32 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !268
  %i.k = sext i32 %i.e to i64
  %i.l = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.k
  br label %_ZN5boost4json12_GLOBAL__N_116get_stream_flagsERSo.exit

bb.c:                                             ; preds = %bb.a
  %i.m = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt8ios_base13_M_grow_wordsEib(ptr noundef nonnull align 8 dereferenceable(216) %i.d, i32 noundef %i.e, i1 noundef zeroext true)
  br label %_ZN5boost4json12_GLOBAL__N_116get_stream_flagsERSo.exit

_ZN5boost4json12_GLOBAL__N_116get_stream_flagsERSo.exit: ; preds = %bb.b, %bb.c
  %i.n = phi ptr [ %i.l, %bb.b ], [ %i.m, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !90
  %i.q = trunc i64 %i.p to i8
  %i.r = and i8 %i.q, 1
  store i8 %i.r, ptr %3, align 1
  call void @_ZN5boost4json10serializerC1ERKNS0_17serialize_optionsE(ptr noundef nonnull align 8 dereferenceable(129) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i8, ptr %i.s, align 8, !tbaa !93    ; 2 uses
  %i.u = icmp eq i8 %i.t, -123
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.w, align 8              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.0.i.i.i = select i1 %i.u, ptr %i.v, ptr %i.y  ; 2 uses
  %i.z = icmp eq i8 %i.t, 5
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5boost4json12_GLOBAL__N_116get_stream_flagsERSo.exit
  %i.aa = load i32, ptr %i.x, align 4, !tbaa !255
  %i.ab = zext i32 %i.aa to i64
  br label %_ZNK5boost4json6string4sizeEv.exit.i

bb.e:                                             ; preds = %_ZN5boost4json12_GLOBAL__N_116get_stream_flagsERSo.exit
  %i.ac = ptrtoint ptr %i.x to i64
  %i.ad = ashr i64 %i.ac, 56
  %i.ae = sub nsw i64 14, %i.ad
  br label %_ZNK5boost4json6string4sizeEv.exit.i

_ZNK5boost4json6string4sizeEv.exit.i:             ; preds = %bb.e, %bb.d
  %i.af = phi i64 [ %i.ab, %bb.d ], [ %i.ae, %bb.e ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %.0.i.i.i, ptr %i.ah, align 8, !tbaa !191
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr %i.ag, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !191
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 112
  store ptr @_ZN5boost4json6detail15do_write_stringILb1EEEbRNS1_6writerERNS1_6streamE, ptr %i.ai, align 8, !tbaa !260
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 120
  store ptr @_ZN5boost4json6detail15do_write_stringILb0EEEbRNS1_6writerERNS1_6streamE, ptr %i.aj, align 8, !tbaa !262
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !233 ; 2 uses
  %.not1.i.i = icmp eq ptr %i.al, null
  br i1 %.not1.i.i, label %_ZN5boost4json10serializer5resetEPKNS0_6stringE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5boost4json6string4sizeEv.exit.i, %_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i
  %i.am = phi ptr [ %i.ao, %_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i ], [ %i.al, %_ZNK5boost4json6string4sizeEv.exit.i ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !235 ; 3 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !236
  %i.aq = invoke noundef ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef null)
          to label %_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #49
  unreachable

_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i: ; preds = %.lr.ph.i.i
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !233
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %_ZN5boost4json10serializer5resetEPKNS0_6stringE.exit, label %.lr.ph.i.i, !llvm.loop !30

_ZN5boost4json10serializer5resetEPKNS0_6stringE.exit: ; preds = %_ZN5boost4json6detail5stack11non_trivialIvE7destroyEv.exit.i.i, %_ZNK5boost4json6string4sizeEv.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.at, align 8, !tbaa !237
end_hunk_0
