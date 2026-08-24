Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/buffers_to_string?download=true
inline.NumInlined: 930
inline.NumDeleted: 408
begin_hunk_0_@_ZN5boost5beast17buffers_to_stringINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EERKT_:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.6.0, i64 16
  %.sroa.6.0.in.i.i = select i1 %i.x, ptr %i.r, ptr %i.y
  %.sroa.6.0.i.i = load i64, ptr %.sroa.6.0.in.i.i, align 8, !tbaa !13 ; 3 uses
  %.sroa.07.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.0, i64 24 ; 2 uses
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !130
  %i.aa = icmp eq ptr %.sroa.6.0, %i.z
  br i1 %i.aa, label %bb.f, label %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = load i64, ptr %i.s, align 8, !tbaa !137
  %..i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %.sroa.6.0.i.i) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i, i64 %..i.i.i
  %i.ad = sub i64 %.sroa.6.0.i.i, %..i.i.i
  br label %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit

_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit: ; preds = %bb.e, %bb.f
  %.sroa.07.1.i.i = phi ptr [ %i.ac, %bb.f ], [ %.sroa.07.0.i.i, %bb.e ]
  %.sroa.6.1.i.i = phi i64 [ %i.ad, %bb.f ], [ %.sroa.6.0.i.i, %bb.e ] ; 2 uses
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !18
  %i.af = sub i64 4611686018427387903, %i.ae
  %i.ag = icmp ult i64 %i.af, %.sroa.6.1.i.i
  br i1 %i.ag, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.g:                                             ; preds = %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #28
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.07.1.i.i, i64 noundef %.sroa.6.1.i.i)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %i.t, %bb.d ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ai = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.a
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !17
  %i.al = add i64 %i.ak, 1
  tail call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast18basic_multi_bufferISaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109, !noalias !191 ; 2 uses
  %.not6.i = icmp eq ptr %i.b, %i.a
  br i1 %.not6.i, label %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.04.07.i = phi ptr [ %i.c, %.lr.ph.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.sroa.04.07.i, align 8, !tbaa !109, !noalias !194 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !132
  %i.f = add i64 %i.e, 31
  %i.g = and i64 %i.f, -8
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.07.i, i64 noundef %i.g) #30
  %.not.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i, label %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit, label %.lr.ph.i, !llvm.loop !156

_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit: ; preds = %.lr.ph.i, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast6detail14ostream_helperINS0_18basic_multi_bufferISaIcEEEcSt11char_traitsIcELb1EEC1ERS5_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::beast::basic_multi_buffer<std::allocator<char>>::subrange", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  tail call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr null, ptr %i.b, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i8 0, ptr %i.c, align 8, !tbaa !96
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 305
  store i8 0, ptr %i.d, align 1, !tbaa !97
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN5boost5beast6detail14ostream_helperINS0_18basic_multi_bufferISaIcEEEcSt11char_traitsIcELb1EEE0_So, i64 24), ptr %0, align 8, !tbaa !59
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN5boost5beast6detail14ostream_helperINS0_18basic_multi_bufferISaIcEEEcSt11char_traitsIcELb1EEE0_So, i64 64), ptr %i.a, align 8, !tbaa !59
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.a, ptr noundef nonnull %i.f)
          to label %_ZNSoC2EPSt15basic_streambufIcSt11char_traitsIcEE.exit unwind label %bb.d

_ZNSoC2EPSt15basic_streambufIcSt11char_traitsIcEE.exit: ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5boost5beast6detail14ostream_helperINS0_18basic_multi_bufferISaIcEEEcSt11char_traitsIcELb1EEE, i64 24), ptr %0, align 8, !tbaa !59
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5boost5beast6detail14ostream_helperINS0_18basic_multi_bufferISaIcEEEcSt11char_traitsIcELb1EEE, i64 64), ptr %i.a, align 8, !tbaa !59
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  tail call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #27
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferISaIcEEEcSt11char_traitsIcELb1EEE, i64 16), ptr %i.f, align 8, !tbaa !59
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.i, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZN5boost5beast18basic_multi_bufferISaIcEE7prepareEm(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::basic_multi_buffer<std::allocator<char>>::subrange") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef 0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %_ZNSoC2EPSt15basic_streambufIcSt11char_traitsIcEE.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8, !tbaa !59
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #27
  br label %.body

bb.c:                                             ; preds = %_ZNSoC2EPSt15basic_streambufIcSt11char_traitsIcEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.d:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %.pn = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.j, %bb.b ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.a) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast6detail14ostream_helperINS0_18basic_multi_bufferISaIcEEEcSt11char_traitsIcELb1EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5boost5beast6detail14ostream_helperINS0_18basic_multi_bufferISaIcEEEcSt11char_traitsIcELb1EEE, i64 24), ptr %0, align 8, !tbaa !59
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5boost5beast6detail14ostream_helperINS0_18basic_multi_bufferISaIcEEEcSt11char_traitsIcELb1EEE, i64 64), ptr %i.a, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferISaIcEEEcSt11char_traitsIcELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.b) #27, !inline_history !115
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.a) #27, !inline_history !115
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 344) #30
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZTv0_n24_N5boost5beast6detail14ostream_helperINS0_18basic_multi_bufferISaIcEEEcSt11char_traitsIcELb1EED1Ev(ptr noundef %0) unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !59
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5boost5beast6detail14ostream_helperINS0_18basic_multi_bufferISaIcEEEcSt11char_traitsIcELb1EEE, i64 24), ptr %i.d, align 8, !tbaa !59
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5boost5beast6detail14ostream_helperINS0_18basic_multi_bufferISaIcEEEcSt11char_traitsIcELb1EEE, i64 64), ptr %i.e, align 8, !tbaa !59
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferISaIcEEEcSt11char_traitsIcELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #27, !inline_history !115
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.e) #27, !inline_history !115
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZTv0_n24_N5boost5beast6detail14ostream_helperINS0_18basic_multi_bufferISaIcEEEcSt11char_traitsIcELb1EED0Ev(ptr noundef %0) unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !59
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5boost5beast6detail14ostream_helperINS0_18basic_multi_bufferISaIcEEEcSt11char_traitsIcELb1EEE, i64 24), ptr %i.d, align 8, !tbaa !59
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5boost5beast6detail14ostream_helperINS0_18basic_multi_bufferISaIcEEEcSt11char_traitsIcELb1EEE, i64 64), ptr %i.e, align 8, !tbaa !59
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferISaIcEEEcSt11char_traitsIcELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #27, !inline_history !198
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.e) #27, !inline_history !198
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef 344) #30, !inline_history !199
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast18basic_multi_bufferISaIcEE7prepareEm(ptr dead_on_unwind noalias writable sret(%"class.boost::beast::basic_multi_buffer<std::allocator<char>>::subrange") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::length_error", align 8 ; 5 uses
  %4 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %5 = alloca %"class.std::length_error", align 8 ; 5 uses
  %6 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %7 = alloca %"class.boost::intrusive::list_impl", align 8 ; 19 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !116  ; 6 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !99     ; 3 uses
  %i.d = icmp ugt i64 %i.b, %i.c
  %i.e = sub nuw i64 %i.c, %i.b
  %i.f = icmp ugt i64 %2, %i.e
  %or.cond = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store ptr @.str.11, ptr %6, align 8, !tbaa !200
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.12, ptr %i.g, align 8, !tbaa !202
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 857, ptr %i.h, align 8, !tbaa !203
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 43, ptr %i.i, align 4, !tbaa !204
  invoke void @_ZN5boost15throw_exceptionISt12length_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #28
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.u

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store ptr %7, ptr %7, align 8, !tbaa !109
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %7, ptr %i.k, align 8, !tbaa !110
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !205  ; 4 uses
  %.not = icmp eq ptr %i.n, %i.m
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !132  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load i64, ptr %i.q, align 8, !tbaa !206  ; 2 uses
  %i.s = sub i64 %i.p, %i.r                       ; 3 uses
  %i.t = add i64 %i.s, %i.b                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !110  ; 3 uses
  %.not91 = icmp eq ptr %i.n, %i.v
  br i1 %.not91, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferISaIcEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISD_Lb1EEERSE_SG_SG_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.p, ptr %i.w, align 8, !tbaa !131
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !109  ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.x, %i.m
  %.not23.i.i.i = icmp eq ptr %7, %i.x
  %or.cond.i.i.i = or i1 %.not23.i.i.i, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferISaIcEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISD_Lb1EEERSE_SG_SG_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !110  ; 2 uses
  store ptr %7, ptr %i.v, align 8, !tbaa !109
  store ptr %i.v, ptr %i.k, align 8, !tbaa !110
  store ptr %i.m, ptr %i.z, align 8, !tbaa !109
  store ptr %i.z, ptr %i.u, align 8, !tbaa !110
  store ptr %i.x, ptr %7, align 8, !tbaa !109
  store ptr %7, ptr %i.y, align 8, !tbaa !110
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferISaIcEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISD_Lb1EEERSE_SG_SG_.exit

_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferISaIcEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISD_Lb1EEERSE_SG_SG_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.aa = phi ptr [ %7, %bb.f ], [ %7, %bb.g ], [ %i.x, %bb.h ] ; 2 uses
  %i.ab = icmp ugt i64 %2, %i.s
  br i1 %i.ab, label %bb.i, label %.thread

bb.i:                                             ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferISaIcEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISD_Lb1EEERSE_SG_SG_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.p, ptr %i.ac, align 8, !tbaa !131
  %i.ad = sub nuw i64 %2, %i.s
  br label %bb.j

.thread:                                          ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferISaIcEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISD_Lb1EEERSE_SG_SG_.exit
  %i.ae = add i64 %i.r, %2
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !131
  br label %.critedge

bb.j:                                             ; preds = %bb.i, %bb.e
  %i.ag = phi ptr [ %7, %bb.e ], [ %i.aa, %bb.i ]
  %.084 = phi i64 [ %2, %bb.e ], [ %i.ad, %bb.i ] ; 2 uses
  %.0 = phi i64 [ %i.b, %bb.e ], [ %i.t, %bb.i ]  ; 2 uses
  %.not31101 = icmp eq i64 %.084, 0
  br i1 %.not31101, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.m
  %.1103 = phi i64 [ %.0, %.lr.ph ], [ %i.at, %bb.m ] ; 3 uses
  %.185102 = phi i64 [ %.084, %.lr.ph ], [ %i.av, %bb.m ] ; 5 uses
  %i.aj = load ptr, ptr %7, align 8, !tbaa !109   ; 9 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  %i.ak = icmp eq ptr %i.aj, %7                   ; 2 uses
  %i.al = or i1 %.not.i.i, %i.ak
  br i1 %i.al, label %.critedge.thread, label %bb.l

.critedge.thread:                                 ; preds = %bb.k
  br i1 %i.ak, label %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread90, label %.lr.ph.i.preheader

bb.l:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !109, !noalias !207 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !110, !noalias !207 ; 2 uses
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !109, !noalias !207
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !110, !noalias !207
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !110 ; 2 uses
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !110
  store ptr %i.m, ptr %i.aj, align 8, !tbaa !109
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !110
  store ptr %i.aj, ptr %i.aq, align 8, !tbaa !109
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !132 ; 4 uses
  %i.at = add i64 %i.as, %.1103                   ; 2 uses
  %i.au = icmp ugt i64 %.185102, %i.as
  br i1 %i.au, label %bb.m, label %.thread129

.thread129:                                       ; preds = %bb.l
  store i64 %.185102, ptr %i.ai, align 8, !tbaa !131
  br label %.critedge.loopexit

bb.m:                                             ; preds = %bb.l
  store i64 %i.as, ptr %i.ai, align 8, !tbaa !131
  %i.av = sub nuw i64 %.185102, %i.as             ; 2 uses
  %.not31 = icmp eq i64 %i.av, 0
  br i1 %.not31, label %.critedge.loopexit, label %bb.k, !llvm.loop !212

.critedge.loopexit:                               ; preds = %bb.m, %.thread129
  %.pre = load ptr, ptr %7, align 8, !tbaa !109
  br label %.critedge

.critedge:                                        ; preds = %.thread, %.critedge.loopexit, %bb.j
  %i.aw = phi ptr [ %i.ag, %bb.j ], [ %.pre, %.critedge.loopexit ], [ %i.aa, %.thread ] ; 3 uses
  %.1.lcssa = phi i64 [ %.0, %bb.j ], [ %i.at, %.critedge.loopexit ], [ %i.t, %.thread ]
  %.not.i.i41 = icmp eq ptr %i.aw, null
  %i.ax = icmp eq ptr %i.aw, %7
  %i.ay = or i1 %.not.i.i41, %i.ax
  br i1 %i.ay, label %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.critedge.thread, %.critedge
  %.18599 = phi i64 [ %.185102, %.critedge.thread ], [ 0, %.critedge ]
  %.196 = phi i64 [ %.1103, %.critedge.thread ], [ %.1.lcssa, %.critedge ]
  %.not3194 = phi i1 [ false, %.critedge.thread ], [ true, %.critedge ]
  %.sroa.04.07.i.ph = phi ptr [ %i.aj, %.critedge.thread ], [ %i.aw, %.critedge ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.04.07.i = phi ptr [ %i.az, %.lr.ph.i ], [ %.sroa.04.07.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.az = load ptr, ptr %.sroa.04.07.i, align 8, !tbaa !109, !noalias !213 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !132
  %i.bc = add i64 %i.bb, 31
  %i.bd = and i64 %i.bc, -8
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.07.i, i64 noundef %i.bd) #30
  %.not.i = icmp eq ptr %i.az, %7
  br i1 %.not.i, label %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit, label %.lr.ph.i, !llvm.loop !156

_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit: ; preds = %.lr.ph.i
  %.pre112.a = load i64, ptr %i.a, align 8, !tbaa !116 ; 2 uses
  br i1 %.not3194, label %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread, label %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit._ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread90_crit_edge

_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit._ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread90_crit_edge: ; preds = %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit
  %.pre111 = load i64, ptr %1, align 8, !tbaa !99
  br label %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread90

_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread90: ; preds = %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit._ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread90_crit_edge, %.critedge.thread
  %i.be = phi i64 [ %i.c, %.critedge.thread ], [ %.pre111, %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit._ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread90_crit_edge ]
  %i.bf = phi i64 [ %i.b, %.critedge.thread ], [ %.pre112.a, %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit._ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread90_crit_edge ] ; 2 uses
  %.185100 = phi i64 [ %.185102, %.critedge.thread ], [ %.18599, %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit._ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread90_crit_edge ] ; 2 uses
  %.197 = phi i64 [ %.1103, %.critedge.thread ], [ %.196, %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit._ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread90_crit_edge ]
  %i.bg = shl nuw i64 %i.bf, 1
  %i.bh = sub i64 %i.be, %.197                    ; 2 uses
  %.sroa.speculated50 = call i64 @llvm.umax.i64(i64 %i.bg, i64 %.185100)
  %i.bi = call i64 @llvm.umax.i64(i64 %.sroa.speculated50, i64 512)
  %i.bj = call i64 @llvm.umin.i64(i64 %i.bi, i64 %i.bh)
  %.inv92 = icmp slt i64 %i.bf, 0
  %.sroa.speculated = select i1 %.inv92, i64 %i.bh, i64 %i.bj ; 3 uses
  %i.bk = icmp ugt i64 %.sroa.speculated, 1152921504606846975
  br i1 %i.bk, label %bb.n, label %_ZNSt16allocator_traitsISaIN5boost11tt_align_ns2a8EEE8allocateERS3_m.exit.i

bb.n:                                             ; preds = %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread90
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.13)
          to label %.noexc45 unwind label %bb.s

.noexc45:                                         ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr @.str.11, ptr %4, align 8, !tbaa !200
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.14, ptr %i.bl, align 8, !tbaa !202
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 1246, ptr %i.bm, align 8, !tbaa !203
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 70, ptr %i.bn, align 4, !tbaa !204
  invoke void @_ZN5boost15throw_exceptionISt12length_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #28
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.noexc45
  unreachable

bb.p:                                             ; preds = %.noexc45
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %.body

_ZNSt16allocator_traitsISaIN5boost11tt_align_ns2a8EEE8allocateERS3_m.exit.i: ; preds = %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread90
  %i.bp = add nuw nsw i64 %.sroa.speculated, 31
  %i.bq = and i64 %i.bp, 2305843009213693944
  %i.br = invoke noalias noundef nonnull align 8 dereferenceable(24) ptr @_Znwm(i64 noundef %i.bq) #32
          to label %bb.q unwind label %bb.s       ; 6 uses

bb.q:                                             ; preds = %_ZNSt16allocator_traitsISaIN5boost11tt_align_ns2a8EEE8allocateERS3_m.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i64 %.sroa.speculated, ptr %i.bs, align 8, !tbaa !132
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !110 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !110
  store ptr %i.m, ptr %i.br, align 8, !tbaa !109
  store ptr %i.br, ptr %i.bt, align 8, !tbaa !110
  store ptr %i.br, ptr %i.bu, align 8, !tbaa !109
  %i.bw = load ptr, ptr %i.l, align 8, !tbaa !205
  %i.bx = icmp eq ptr %i.bw, %i.m
  br i1 %i.bx, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  store ptr %i.br, ptr %i.l, align 8, !tbaa !205
  br label %bb.t

bb.s:                                             ; preds = %_ZNSt16allocator_traitsISaIN5boost11tt_align_ns2a8EEE8allocateERS3_m.exit.i, %bb.n
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %.185100, ptr %i.bz, align 8, !tbaa !131
  %.pre112 = load i64, ptr %i.a, align 8, !tbaa !116
  br label %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread

_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread: ; preds = %.critedge, %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit, %bb.t
  %i.ca = phi i64 [ %i.b, %.critedge ], [ %.pre112.a, %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit ], [ %.pre112, %bb.t ]
  call void @_ZN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EEC2ERKS3_mm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %i.ca, i64 noundef %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret void

.body:                                            ; preds = %bb.s, %bb.p
  %.pn33 = phi { ptr, i32 } [ %i.by, %bb.s ], [ %i.bo, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.u

bb.u:                                             ; preds = %.body, %bb.d
  %.pn36 = phi { ptr, i32 } [ %i.j, %bb.d ], [ %.pn33, %.body ]
  resume { ptr, i32 } %.pn36
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferISaIcEEEcSt11char_traitsIcELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !216, !nonnull !43, !align !55 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !164
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !165
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !109  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  %i.l = icmp eq ptr %i.k, %i.j
  %i.m = or i1 %.not.i.i.i.i, %i.l
  br i1 %i.m, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !205  ; 5 uses
  %i.p = icmp eq ptr %i.o, %i.j
  br i1 %i.p, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !110  ; 3 uses
  %.not1419.i.i = icmp eq ptr %i.o, %i.r
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 5 uses
  br i1 %.not1419.i.i, label %.._crit_edge_crit_edge.i.i, label %.lr.ph.i.i

.._crit_edge_crit_edge.i.i:                       ; preds = %bb.c
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !206
  %.phi.trans.insert30.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.pre31.i.i = load i64, ptr %.phi.trans.insert30.i.i, align 8, !tbaa !116
  br label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %.promoted22.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !206 ; 2 uses
  %.promoted23.i.i = load i64, ptr %i.s, align 8  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !132
  %i.v = sub i64 %i.u, %.promoted22.i.i           ; 3 uses
  %.not.peel.i.i = icmp ult i64 %i.i, %i.v
  br i1 %.not.peel.i.i, label %.thread.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !109  ; 4 uses
  store ptr %i.w, ptr %i.n, align 8, !tbaa !205
  %i.x = sub nuw i64 %i.i, %i.v                   ; 2 uses
  %i.y = add i64 %i.v, %.promoted23.i.i           ; 2 uses
  %.not14.peel.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not14.peel.i.i, label %._crit_edge.i.i, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %bb.d, %bb.e
  %i.z = phi i64 [ %i.ai, %bb.e ], [ %i.y, %bb.d ] ; 2 uses
  %.020.i.i = phi i64 [ %i.ah, %bb.e ], [ %i.x, %bb.d ] ; 3 uses
  %i.aa = phi ptr [ %i.ag, %bb.e ], [ %i.w, %bb.d ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !132 ; 3 uses
  %.not.i.i = icmp ult i64 %.020.i.i, %i.ac
  br i1 %.not.i.i, label %.thread.i.i, label %bb.e

.thread.i.i:                                      ; preds = %.peel.next.i.i, %.lr.ph.i.i
  %i.ad = phi i64 [ %.promoted23.i.i, %.lr.ph.i.i ], [ %i.z, %.peel.next.i.i ]
  %.lcssa25.i.i = phi i64 [ %.promoted22.i.i, %.lr.ph.i.i ], [ 0, %.peel.next.i.i ]
  %.020.lcssa.i.i = phi i64 [ %i.i, %.lr.ph.i.i ], [ %.020.i.i, %.peel.next.i.i ] ; 2 uses
  %i.ae = add i64 %.020.lcssa.i.i, %.lcssa25.i.i
  store i64 %i.ae, ptr %.phi.trans.insert.i.i, align 8, !tbaa !206
  %i.af = add i64 %.020.lcssa.i.i, %i.ad
  store i64 %i.af, ptr %i.s, align 8, !tbaa !116
  br label %bb.g

bb.e:                                             ; preds = %.peel.next.i.i
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !109 ; 4 uses
  store ptr %i.ag, ptr %i.n, align 8, !tbaa !205
  %i.ah = sub nuw i64 %.020.i.i, %i.ac            ; 2 uses
  %i.ai = add i64 %i.ac, %i.z                     ; 2 uses
  %.not14.i.i = icmp eq ptr %i.ag, %i.r
  br i1 %.not14.i.i, label %._crit_edge.i.i, label %.peel.next.i.i, !llvm.loop !218

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d, %.._crit_edge_crit_edge.i.i
  %i.aj = phi i64 [ %.pre31.i.i, %.._crit_edge_crit_edge.i.i ], [ %i.y, %bb.d ], [ %i.ai, %bb.e ]
  %i.ak = phi i64 [ %.pre.i.i, %.._crit_edge_crit_edge.i.i ], [ 0, %bb.d ], [ 0, %bb.e ] ; 2 uses
  %.0.lcssa.i.i = phi i64 [ %i.i, %.._crit_edge_crit_edge.i.i ], [ %i.x, %bb.d ], [ %i.ah, %bb.e ]
  %.lcssa.i.i = phi ptr [ %i.o, %.._crit_edge_crit_edge.i.i ], [ %i.w, %bb.d ], [ %i.ag, %bb.e ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.am = load i64, ptr %i.al, align 8, !tbaa !131
  %i.an = sub i64 %i.am, %i.ak
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 %.0.lcssa.i.i) ; 2 uses
  %i.ao = add i64 %.sroa.speculated.i.i, %i.ak    ; 2 uses
  store i64 %i.ao, ptr %.phi.trans.insert.i.i, align 8, !tbaa !206
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aq = add i64 %.sroa.speculated.i.i, %i.aj
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !116
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !132
  %i.at = icmp eq i64 %i.ao, %i.as
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.au = load ptr, ptr %.lcssa.i.i, align 8, !tbaa !109
  store ptr %i.au, ptr %i.n, align 8, !tbaa !205
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.phi.trans.insert.i.i, i8 0, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i, %.thread.i.i, %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %0, align 8, !tbaa !59
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.av) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferISaIcEEEcSt11char_traitsIcELb1EED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferISaIcEEEcSt11char_traitsIcELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare noundef ptr @_ZNSt15basic_streambufIcSt11char_traitsIcEE6setbufEPcl(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i64 noundef) unnamed_addr #6 align 2

; Function Attrs: mustprogress uwtable
declare { i64, i64 } @_ZNSt15basic_streambufIcSt11char_traitsIcEE7seekoffElSt12_Ios_SeekdirSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef, i32 noundef, i32 noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
declare { i64, i64 } @_ZNSt15basic_streambufIcSt11char_traitsIcEE7seekposESt4fposI11__mbstate_tESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(64), i64, i64, i32 noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferISaIcEEEcSt11char_traitsIcELb1EE4syncEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !216, !nonnull !43, !align !55 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !164
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !165
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !109  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  %i.l = icmp eq ptr %i.k, %i.j
  %i.m = or i1 %.not.i.i.i, %i.l
  br i1 %i.m, label %_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !205  ; 5 uses
  %i.p = icmp eq ptr %i.o, %i.j
  br i1 %i.p, label %_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !110  ; 3 uses
  %.not1419.i = icmp eq ptr %i.o, %i.r
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 5 uses
  br i1 %.not1419.i, label %.._crit_edge_crit_edge.i, label %.lr.ph.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.c
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !206
  %.phi.trans.insert30.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.pre31.i = load i64, ptr %.phi.trans.insert30.i, align 8, !tbaa !116
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %.promoted22.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !206 ; 2 uses
  %.promoted23.i = load i64, ptr %i.s, align 8    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !132
  %i.v = sub i64 %i.u, %.promoted22.i             ; 3 uses
  %.not.peel.i = icmp ult i64 %i.i, %i.v
  br i1 %.not.peel.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !109  ; 4 uses
  store ptr %i.w, ptr %i.n, align 8, !tbaa !205
  %i.x = sub nuw i64 %i.i, %i.v                   ; 2 uses
  %i.y = add i64 %i.v, %.promoted23.i             ; 2 uses
end_hunk_0
