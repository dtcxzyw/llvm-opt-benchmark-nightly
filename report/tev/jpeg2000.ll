Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/jpeg2000?download=true
inline.NumInlined: 1782
inline.NumDeleted: 1117
begin_hunk_0_@_ZNK18ImageItem_JPEG200033read_bitstream_configuration_dataEv:bb.a
  %i.k = atomicrmw add ptr %i.j, i64 1 monotonic, align 8, !noalias !249 ; 0 uses
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrI8Box_j2kHED2B8ne180100Ev.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.l, %i.d
  br i1 %.not.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit, label %.lr.ph.i

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__110shared_ptrI8Box_j2kHED2B8ne180100Ev.exit.i, %bb.d, %bb.c, %bb.a
  %.sroa.66.0 = phi ptr [ %i.i, %bb.d ], [ null, %bb.c ], [ null, %bb.a ], [ null, %_ZNSt3__110shared_ptrI8Box_j2kHED2B8ne180100Ev.exit.i ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.m, align 8, !tbaa !251
  %.not.i2 = icmp eq ptr %.sroa.66.0, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i2, label %_ZNSt3__110shared_ptrI8Box_j2kHED2B8ne180100Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.66.0, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 -1 acq_rel, align 8
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.f, label %_ZNSt3__110shared_ptrI8Box_j2kHED2B8ne180100Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %.sroa.66.0, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.66.0) #22, !inline_history !2
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.66.0) #22
  br label %_ZNSt3__110shared_ptrI8Box_j2kHED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrI8Box_j2kHED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__110shared_ptrI8Box_j2kHED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #22, !inline_history !1
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #22
  br label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZNK18ImageItem_JPEG200011get_decoderEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.Result.139) align 8 captures(none) initializes((0, 16), (32, 36)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 928
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 936
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !59
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt3__110shared_ptrI7DecoderED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrI7DecoderED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrI7DecoderED2B8ne180100Ev.exit: ; preds = %bb.b, %bb.a
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.g, align 8, !tbaa !253
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZNK18ImageItem_JPEG200011get_encoderEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::__1::shared_ptr.162") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 944
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 952
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !59
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !59
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt3__110shared_ptrI7EncoderEC2B8ne180100I16Encoder_JPEG2000vEERKNS0_IT_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrI7EncoderEC2B8ne180100I16Encoder_JPEG2000vEERKNS0_IT_EE.exit

_ZNSt3__110shared_ptrI7EncoderEC2B8ne180100I16Encoder_JPEG2000vEERKNS0_IT_EE.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN18ImageItem_JPEG200018initialize_decoderEv(ptr dead_on_unwind noalias writable sret(%class.Error) align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(960) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__1::shared_ptr.138", align 8 ; 9 uses
  %3 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50, !noalias !264 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51, !noalias !264 ; 2 uses
  %.not16.i = icmp eq ptr %i.b, %i.d
  br i1 %.not16.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt3__110shared_ptrI8Box_j2kHED2B8ne180100Ev.exit.i, %.lr.ph.i
  %.sroa.010.017.i = phi ptr [ %i.b, %.lr.ph.i ], [ %i.m, %_ZNSt3__110shared_ptrI8Box_j2kHED2B8ne180100Ev.exit.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %i.f = load ptr, ptr %.sroa.010.017.i, align 8, !tbaa !55, !noalias !266 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZNSt3__110shared_ptrI8Box_j2kHED2B8ne180100Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__dynamic_cast(ptr nonnull %i.f, ptr nonnull @_ZTI3Box, ptr nonnull @_ZTI8Box_j2kH, i64 0) #22, !noalias !266 ; 3 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt3__110shared_ptrI8Box_j2kHED2B8ne180100Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.h, ptr %2, align 8, !tbaa !267, !alias.scope !266
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !54, !noalias !266 ; 9 uses
  store ptr %i.j, ptr %i.e, align 8, !tbaa !58, !alias.scope !266
  %.not.i.i.i = icmp eq ptr %i.j, null            ; 3 uses
  br i1 %.not.i.i.i, label %_ZNK9ImageItem12get_propertyI8Box_j2kHEENSt3__110shared_ptrIT_EEv.exit.thread, label %_ZNK9ImageItem12get_propertyI8Box_j2kHEENSt3__110shared_ptrIT_EEv.exit

_ZNK9ImageItem12get_propertyI8Box_j2kHEENSt3__110shared_ptrIT_EEv.exit: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = atomicrmw add ptr %i.k, i64 1 monotonic, align 8, !noalias !266 ; 0 uses
  br label %_ZNK9ImageItem12get_propertyI8Box_j2kHEENSt3__110shared_ptrIT_EEv.exit.thread

_ZNSt3__110shared_ptrI8Box_j2kHED2B8ne180100Ev.exit.i: ; preds = %bb.c, %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !266
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.m, %i.d
  br i1 %.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %_ZNSt3__110shared_ptrI8Box_j2kHED2B8ne180100Ev.exit.i, %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !264
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i8 36, ptr %3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.n, ptr noundef nonnull align 1 dereferenceable(18) @.str, i64 18, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 19
  store i8 0, ptr %i.o, align 1, !tbaa !35
  invoke void @_ZN5ErrorC1E15heif_error_code18heif_suberror_codeRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %.loopexit
  %i.p = load i8, ptr %3, align 8
  %i.q = trunc i8 %i.p to i1
  br i1 %i.q, label %bb.f, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !35
  %i.t = load i64, ptr %3, align 8
  %i.u = and i64 %i.t, -2
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.u) #23
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZN5ErrorC2ERKS_.exit

bb.g:                                             ; preds = %.loopexit
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load i8, ptr %3, align 8
  %i.x = trunc i8 %i.w to i1
  br i1 %i.x, label %bb.h, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit8

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !35
  %i.aa = load i64, ptr %3, align 8
  %i.ab = and i64 %i.aa, -2
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ab) #23
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit8

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit8: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.s

_ZNK9ImageItem12get_propertyI8Box_j2kHEENSt3__110shared_ptrIT_EEv.exit.thread: ; preds = %_ZNK9ImageItem12get_propertyI8Box_j2kHEENSt3__110shared_ptrIT_EEv.exit, %bb.d
  %i.ac = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #21
          to label %.noexc9 unwind label %bb.p    ; 11 uses

.noexc9:                                          ; preds = %_ZNK9ImageItem12get_propertyI8Box_j2kHEENSt3__110shared_ptrIT_EEv.exit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false), !noalias !268
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceI16Decoder_JPEG2000NS_9allocatorIS1_EEEE, i64 16), ptr %i.ac, align 8, !tbaa !13, !noalias !268
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  br i1 %.not.i.i.i, label %_ZNSt3__110shared_ptrIK8Box_j2kHEC2B8ne180100IS1_vEERKNS0_IT_EE.exit.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.noexc9
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ag = atomicrmw add ptr %i.af, i64 1 monotonic, align 8, !noalias !268 ; 0 uses
  br label %_ZNSt3__110shared_ptrIK8Box_j2kHEC2B8ne180100IS1_vEERKNS0_IT_EE.exit.i.i.i.i.i.i

_ZNSt3__110shared_ptrIK8Box_j2kHEC2B8ne180100IS1_vEERKNS0_IT_EE.exit.i.i.i.i.i.i: ; preds = %bb.i, %.noexc9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  store i64 0, ptr %i.aj, align 8, !tbaa !71, !noalias !268
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  store i32 0, ptr %i.ak, align 8, !tbaa !72, !noalias !268
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %i.ah, i8 0, i64 17, i1 false), !noalias !268
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.ai, i8 0, i64 44, i1 false), !noalias !268
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false), !noalias !268
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV16Decoder_JPEG2000, i64 16), ptr %i.ae, align 8, !tbaa !13, !noalias !268
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 136
  store ptr %i.h, ptr %i.am, align 8, !tbaa !270, !noalias !268
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  store ptr %i.j, ptr %i.an, align 8, !tbaa !271, !noalias !268
  br i1 %.not.i.i.i, label %_ZNSt3__111make_sharedB8ne180100I16Decoder_JPEG2000JRNS_10shared_ptrI8Box_j2kHEEEvEENS2_IT_EEDpOT0_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt3__110shared_ptrIK8Box_j2kHEC2B8ne180100IS1_vEERKNS0_IT_EE.exit.i.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.ap = atomicrmw add ptr %i.ao, i64 1 monotonic, align 8, !noalias !268 ; 0 uses
  %i.aq = atomicrmw add ptr %i.ao, i64 -1 acq_rel, align 8, !noalias !268
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.k, label %_ZNSt3__111make_sharedB8ne180100I16Decoder_JPEG2000JRNS_10shared_ptrI8Box_j2kHEEEvEENS2_IT_EEDpOT0_.exit

bb.k:                                             ; preds = %bb.j
  %i.as = load ptr, ptr %i.j, align 8, !tbaa !13, !noalias !268
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !noalias !268
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(24) %i.j) #22, !noalias !268, !inline_history !262
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.j) #22, !noalias !268
  br label %_ZNSt3__111make_sharedB8ne180100I16Decoder_JPEG2000JRNS_10shared_ptrI8Box_j2kHEEEvEENS2_IT_EEDpOT0_.exit

_ZNSt3__111make_sharedB8ne180100I16Decoder_JPEG2000JRNS_10shared_ptrI8Box_j2kHEEEvEENS2_IT_EEDpOT0_.exit: ; preds = %bb.k, %bb.j, %_ZNSt3__110shared_ptrIK8Box_j2kHEC2B8ne180100IS1_vEERKNS0_IT_EE.exit.i.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 928
  store ptr %i.ae, ptr %i.av, align 8, !tbaa !272
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 936 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !18 ; 5 uses
  store ptr %i.ac, ptr %i.aw, align 8, !tbaa !18
  %.not.i.i10 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i10, label %_ZNSt3__110shared_ptrI16Decoder_JPEG2000ED2B8ne180100Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt3__111make_sharedB8ne180100I16Decoder_JPEG2000JRNS_10shared_ptrI8Box_j2kHEEEvEENS2_IT_EEDpOT0_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = atomicrmw add ptr %i.ay, i64 -1 acq_rel, align 8
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.m, label %_ZNSt3__110shared_ptrI16Decoder_JPEG2000ED2B8ne180100Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(24) %i.ax) #22, !inline_history !263
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ax) #22
  br label %_ZNSt3__110shared_ptrI16Decoder_JPEG2000ED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrI16Decoder_JPEG2000ED2B8ne180100Ev.exit: ; preds = %bb.m, %bb.l, %_ZNSt3__111make_sharedB8ne180100I16Decoder_JPEG2000JRNS_10shared_ptrI8Box_j2kHEEEvEENS2_IT_EEDpOT0_.exit
  %i.be = load i64, ptr @_ZN5Error2OkE, align 8
  store i64 %i.be, ptr %0, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), align 8
  %i.bh = trunc i8 %i.bg to i1
  br i1 %i.bh, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt3__110shared_ptrI16Decoder_JPEG2000ED2B8ne180100Ev.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), i64 24, i1 false), !tbaa.struct !73
  br label %_ZN5ErrorC2ERKS_.exit

bb.o:                                             ; preds = %_ZNSt3__110shared_ptrI16Decoder_JPEG2000ED2B8ne180100Ev.exit
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 24), align 8, !tbaa !35
  %i.bj = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 16), align 8, !tbaa !35
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef %i.bi, i64 noundef %i.bj)
          to label %_ZN5ErrorC2ERKS_.exit unwind label %bb.p

bb.p:                                             ; preds = %_ZNK9ImageItem12get_propertyI8Box_j2kHEENSt3__110shared_ptrIT_EEv.exit.thread, %bb.o
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZN5ErrorC2ERKS_.exit:                            ; preds = %bb.n, %bb.o, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !58 ; 5 uses
  %.not.i13 = icmp eq ptr %i.bm, null
  br i1 %.not.i13, label %_ZNSt3__110shared_ptrI8Box_j2kHED2B8ne180100Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5ErrorC2ERKS_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = atomicrmw add ptr %i.bn, i64 -1 acq_rel, align 8
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.r, label %_ZNSt3__110shared_ptrI8Box_j2kHED2B8ne180100Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !13
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(24) %i.bm) #22, !inline_history !2
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bm) #22
  br label %_ZNSt3__110shared_ptrI8Box_j2kHED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrI8Box_j2kHED2B8ne180100Ev.exit: ; preds = %_ZN5ErrorC2ERKS_.exit, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

bb.s:                                             ; preds = %bb.p, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit8
  %.pn5 = phi { ptr, i32 } [ %i.bk, %bb.p ], [ %i.v, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit8 ]
  call void @_ZNSt3__110shared_ptrI8Box_j2kHED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn5
}

declare void @_ZN5ErrorC1E15heif_error_code18heif_suberror_codeRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN18ImageItem_JPEG200022set_decoder_input_dataEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.DataExtent, align 16        ; 18 uses
  %2 = alloca %"class.std::__1::shared_ptr.163", align 16 ; 4 uses
  %3 = alloca %struct.DataExtent, align 16        ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 0, ptr %i.b, align 8, !tbaa !71
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i32 0, ptr %i.c, align 16, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(84) %1, i8 0, i64 17, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.a, i8 0, i64 44, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !287  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !139, !noalias !288 ; 2 uses
  %i.j = load <2 x ptr>, ptr %i.f, align 8, !tbaa !59, !noalias !288
  store <2 x ptr> %i.j, ptr %2, align 16, !tbaa !59, !alias.scope !288
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNK11HeifContext13get_heif_fileEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = atomicrmw add ptr %i.k, i64 1 monotonic, align 8, !noalias !288 ; 0 uses
  br label %_ZNK11HeifContext13get_heif_fileEv.exit

_ZNK11HeifContext13get_heif_fileEv.exit:          ; preds = %bb.a, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.n = load i32, ptr %i.m, align 8, !tbaa !289
  invoke void @_ZN10DataExtent19set_from_image_itemENSt3__110shared_ptrI8HeifFileEEj(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr nofree noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.n)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %_ZNK11HeifContext13get_heif_fileEv.exit
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !139  ; 5 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNSt3__110shared_ptrI8HeifFileED2B8ne180100Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = atomicrmw add ptr %i.p, i64 -1 acq_rel, align 8
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.e, label %_ZNSt3__110shared_ptrI8HeifFileED2B8ne180100Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(24) %i.o) #22, !inline_history !3
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.o) #22
  br label %_ZNSt3__110shared_ptrI8HeifFileED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrI8HeifFileED2B8ne180100Ev.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !290
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load <2 x ptr>, ptr %1, align 16, !tbaa !59
  store <2 x ptr> %i.z, ptr %3, align 16, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(84) %1, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load i8, ptr %i.ab, align 16, !tbaa !140
  store i8 %i.ac, ptr %i.aa, align 16, !tbaa !140
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load <2 x ptr>, ptr %i.a, align 8, !tbaa !141
  store <2 x ptr> %i.ah, ptr %i.ad, align 8, !tbaa !141
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !141
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !141
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 16, !tbaa !142
  store ptr %i.am, ptr %i.ak, align 16, !tbaa !142
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !143
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !143
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.aq, ptr noundef nonnull align 16 dereferenceable(20) %i.ar, i64 20, i1 false)
  call void @_ZN7Decoder15set_data_extentE10DataExtent(ptr noundef nonnull align 8 dereferenceable(112) %i.w, ptr nofree noundef nonnull align 8 dereferenceable(88) %3)
  invoke void @_ZN12MemoryHandle4freeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak)
          to label %_ZN12MemoryHandleD2Ev.exit.i unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt3__110shared_ptrI8HeifFileED2B8ne180100Ev.exit
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #24
  unreachable

_ZN12MemoryHandleD2Ev.exit.i:                     ; preds = %_ZNSt3__110shared_ptrI8HeifFileED2B8ne180100Ev.exit
  %i.au = load ptr, ptr %i.ad, align 8, !tbaa !144 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN12MemoryHandleD2Ev.exit.i
  store ptr %i.au, ptr %i.ae, align 16, !tbaa !145
  %i.av = load ptr, ptr %i.af, align 8, !tbaa !141
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #23
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit.i

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit.i: ; preds = %bb.g, %_ZN12MemoryHandleD2Ev.exit.i
  %i.az = load ptr, ptr %i.x, align 8, !tbaa !139 ; 5 uses
  %.not.i.i2 = icmp eq ptr %i.az, null
  br i1 %.not.i.i2, label %_ZN10DataExtentD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = atomicrmw add ptr %i.ba, i64 -1 acq_rel, align 8
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.i, label %_ZN10DataExtentD2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(24) %i.az) #22, !inline_history !275
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.az) #22
  br label %_ZN10DataExtentD2Ev.exit

_ZN10DataExtentD2Ev.exit:                         ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit.i, %bb.h, %bb.i
  invoke void @_ZN12MemoryHandle4freeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al)
          to label %_ZN12MemoryHandleD2Ev.exit.i3 unwind label %bb.j

bb.j:                                             ; preds = %_ZN10DataExtentD2Ev.exit
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #24
  unreachable

_ZN12MemoryHandleD2Ev.exit.i3:                    ; preds = %_ZN10DataExtentD2Ev.exit
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !144 ; 4 uses
  %.not.i.i.i4 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i4, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit.i5, label %bb.k

bb.k:                                             ; preds = %_ZN12MemoryHandleD2Ev.exit.i3
  store ptr %i.bi, ptr %i.ag, align 16, !tbaa !145
  %i.bj = load ptr, ptr %i.ai, align 8, !tbaa !141
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bm) #23
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit.i5

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit.i5: ; preds = %bb.k, %_ZN12MemoryHandleD2Ev.exit.i3
  %i.bn = load ptr, ptr %i.y, align 8, !tbaa !139 ; 5 uses
  %.not.i.i6 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i6, label %_ZN10DataExtentD2Ev.exit7, label %bb.l

bb.l:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit.i5
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = atomicrmw add ptr %i.bo, i64 -1 acq_rel, align 8
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.m, label %_ZN10DataExtentD2Ev.exit7

bb.m:                                             ; preds = %bb.l
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(24) %i.bn) #22, !inline_history !275
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bn) #22
  br label %_ZN10DataExtentD2Ev.exit7

_ZN10DataExtentD2Ev.exit7:                        ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit.i5, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void

bb.n:                                             ; preds = %_ZNK11HeifContext13get_heif_fileEv.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrI8HeifFileED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #22
  call void @_ZN10DataExtentD2Ev(ptr noundef nonnull align 8 dead_on_return(84) dereferenceable(84) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %i.bu
}

declare void @_ZN10DataExtent19set_from_image_itemENSt3__110shared_ptrI8HeifFileEEj(ptr noundef nonnull align 8 dereferenceable(84), ptr nofree noundef align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #1

end_hunk_0
