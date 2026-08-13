inline.NumInlined: 332
inline.NumDeleted: 257
begin_hunk_0_@_ZN8rawspeed10CiffParserC2ENS_6BufferE:bb.a
  store ptr %1, ptr %i.a, align 8, !tbaa !11
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8rawspeed10CiffParserE, i64 16), ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.b, align 8, !tbaa !17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed10CiffParser9parseDataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.rawspeed::ByteStream", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.02.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !11 ; 4 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.23.0.copyload = load i32, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !14 ; 5 uses
  %.not.i.i.i.i.i.i = icmp ult i32 %.sroa.23.0.copyload, 2
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_ZN8rawspeed10ByteStream6getU16Ev.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #14
  unreachable

_ZN8rawspeed10ByteStream6getU16Ev.exit:           ; preds = %bb.a
  %.0.copyload.i.i.i.i.i.i = load i16, ptr %.sroa.02.0.copyload, align 1
  %.not = icmp eq i16 %.0.copyload.i.i.i.i.i.i, 18761
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19CiffParserExceptionEEEvPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10CiffParser9parseDataEv) #14
  unreachable

bb.d:                                             ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit
  %.not.i.i.i.i.i.i6 = icmp ult i32 %.sroa.23.0.copyload, 6
  br i1 %.not.i.i.i.i.i.i6, label %bb.e, label %_ZN8rawspeed10ByteStream6getU32Ev.exit

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #14
  unreachable

_ZN8rawspeed10ByteStream6getU32Ev.exit:           ; preds = %bb.d
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 2
  %.0.copyload.i.i.i.i.i.i7 = load i32, ptr %i.b, align 1 ; 3 uses
  %i.c = tail call noundef zeroext i1 @_ZN8rawspeed10CrwDecoder5isCRWENS_6BufferE(ptr nonnull %.sroa.02.0.copyload, i32 %.sroa.23.0.copyload)
  br i1 %i.c, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19CiffParserExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10CiffParser9parseDataEv) #14
  unreachable

bb.g:                                             ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %.not.i.i = icmp ugt i32 %.0.copyload.i.i.i.i.i.i7, %.sroa.23.0.copyload
  br i1 %.not.i.i, label %bb.h, label %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEj) #14, !noalias !20
  unreachable

_ZNK8rawspeed10ByteStream12getSubStreamEj.exit:   ; preds = %bb.g
  %i.d = zext nneg i32 %.0.copyload.i.i.i.i.i.i7 to i64
  %i.e = sub nuw nsw i32 %.sroa.23.0.copyload, %.0.copyload.i.i.i.i.i.i7
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 %i.d
  %.sroa.2.8.insert.ext.i = zext nneg i32 %i.e to i64
  %.sroa.2.8.insert.insert.i = or disjoint i64 %.sroa.2.8.insert.ext.i, 244834610708480
  store ptr %i.f, ptr %1, align 8, !alias.scope !20
  %.sroa.2.0..0..sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.2.8.insert.insert.i, ptr %.sroa.2.0..0..sroa_idx.i3.i, align 8, !alias.scope !20
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.g, align 8, !tbaa !23, !alias.scope !20
  %i.h = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #24, !noalias !28 ; 3 uses
  invoke void @_ZN8rawspeed7CiffIFDC1EPS0_NS_10ByteStreamE(ptr noundef nonnull align 8 dereferenceable(88) %i.h, ptr noundef null, ptr noundef nonnull byval(%"class.rawspeed::ByteStream") align 8 %1)
          to label %_ZSt11make_uniqueIN8rawspeed7CiffIFDEJDnRNS0_10ByteStreamEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.i, !noalias !28

bb.i:                                             ; preds = %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 88) #25, !noalias !28
  resume { ptr, i32 } %i.i

_ZSt11make_uniqueIN8rawspeed7CiffIFDEJDnRNS0_10ByteStreamEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %_ZNK8rawspeed10ByteStream12getSubStreamEj.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31   ; 2 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !31
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN8rawspeed7CiffIFDESt14default_deleteIS1_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt11make_uniqueIN8rawspeed7CiffIFDEJDnRNS0_10ByteStreamEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  tail call void @_ZNKSt14default_deleteIKN8rawspeed7CiffIFDEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %i.k)
  br label %_ZNSt10unique_ptrIN8rawspeed7CiffIFDESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN8rawspeed7CiffIFDESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.j, %_ZSt11make_uniqueIN8rawspeed7CiffIFDEJDnRNS0_10ByteStreamEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_19CiffParserExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_19CiffParserExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #23 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN8rawspeed19CiffParserExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed19CiffParserExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_ZN8rawspeed10CrwDecoder5isCRWENS_6BufferE(ptr, i32) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed10CiffParser10getDecoderEPKNS_14CameraMetaDataE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.10") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree readnone captures(none) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %4 = alloca %"class.std::vector", align 8       ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8rawspeed10CiffParser9parseDataEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZNK8rawspeed7CiffIFD14getIFDsWithTagENS_7CiffTagE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.c, i16 noundef zeroext 2058) #27
  %i.d = load ptr, ptr %4, align 8, !tbaa !32     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32   ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22
  %.sroa.029.047 = phi ptr [ %i.d, %.lr.ph ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22 ] ; 2 uses
  %i.j = load ptr, ptr %.sroa.029.047, align 8, !tbaa !31
  %i.k = call noundef ptr @_ZNK8rawspeed7CiffIFD8getEntryENS_7CiffTagE(ptr noundef nonnull align 8 dereferenceable(88) %i.j, i16 noundef zeroext 2058) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.l = invoke { i64, ptr } @_ZNK8rawspeed9CiffEntry9getStringEv(ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.e unwind label %.loopexit33 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.m = extractvalue { i64, ptr } %i.l, 0        ; 6 uses
  %i.n = extractvalue { i64, ptr } %i.l, 1        ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %bb.e, %bb.f
  %.0710.i.i.i = phi i64 [ %i.q, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.0710.i.i.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !38, !noalias !35
  switch i8 %i.p, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i [
    i8 32, label %bb.f
    i8 9, label %bb.f
  ]

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.q = add nuw i64 %.0710.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.q, %i.m
  br i1 %exitcond.not.i.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, !llvm.loop !39

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i: ; preds = %bb.f, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %.0.i.i.i = phi i64 [ -1, %bb.f ], [ %.0710.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i ] ; 6 uses
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i12.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i12.i: ; preds = %bb.g, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i
  %.1.i.i.in.i = phi i64 [ %.1.i.i.i, %bb.g ], [ %i.m, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i ] ; 3 uses
  %6 = getelementptr i8, ptr %i.n, i64 %.1.i.i.in.i
  %i.r = getelementptr i8, ptr %6, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !38, !noalias !35
  switch i8 %i.s, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEPKcm.exit.i [
    i8 32, label %bb.g
    i8 9, label %bb.g
  ]

bb.g:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i12.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i12.i
  %.1.i.i.i = add i64 %.1.i.i.in.i, -1            ; 2 uses
  %.not15.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not15.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i12.i, !llvm.loop !41

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEPKcm.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i12.i
  %i.t = icmp eq i64 %.0.i.i.i, -1
  br i1 %i.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22, label %bb.h

bb.h:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEPKcm.exit.i
  %i.u = icmp ugt i64 %.0.i.i.i, %i.m
  br i1 %i.u, label %bb.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i64 noundef %.0.i.i.i, i64 noundef %i.m) #26
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %bb.h
  %i.v = sub i64 %.1.i.i.in.i, %.0.i.i.i
  %i.w = sub nuw i64 %i.m, %.0.i.i.i
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.w, i64 %i.v) ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %.0.i.i.i ; 2 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !42, !alias.scope !35
  store i64 0, ptr %i.i, align 8, !tbaa !44, !alias.scope !35
  %i.y = icmp ugt i64 %.sroa.speculated.i.i, 15
  br i1 %i.y, label %bb.j, label %._crit_edge.i.i15.i

bb.j:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %i.z = icmp slt i64 %.sroa.speculated.i.i, 0
  br i1 %i.z, label %.noexc.i17.i, label %bb.k

.noexc.i17.i:                                     ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #26
          to label %.noexc16 unwind label %.loopexit.split-lp

.noexc16:                                         ; preds = %.noexc.i17.i
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.aa = add nuw i64 %.sroa.speculated.i.i, 1    ; 2 uses
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %.noexc4.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i16.i, !prof !47

.noexc4.i.i:                                      ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #26
          to label %.noexc17 unwind label %.loopexit.split-lp

.noexc17:                                         ; preds = %.noexc4.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i16.i: ; preds = %bb.k
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #24
          to label %.noexc18 unwind label %.loopexit33 ; 2 uses

.noexc18:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i16.i
  store ptr %i.ac, ptr %5, align 8, !tbaa !48, !alias.scope !35
  store i64 %.sroa.speculated.i.i, ptr %i.h, align 8, !tbaa !38, !alias.scope !35
  br label %._crit_edge.i.i15.i

._crit_edge.i.i15.i:                              ; preds = %.noexc18, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %i.ad = phi ptr [ %i.ac, %.noexc18 ], [ %i.h, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ] ; 3 uses
  switch i64 %.sroa.speculated.i.i, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZN8rawspeed10trimSpacesB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  ]

bb.l:                                             ; preds = %._crit_edge.i.i15.i
  %i.ae = load i8, ptr %i.x, align 1, !tbaa !38, !noalias !35
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !38
  br label %_ZN8rawspeed10trimSpacesB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.m:                                             ; preds = %._crit_edge.i.i15.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr align 1 %i.x, i64 %.sroa.speculated.i.i, i1 false)
  br label %_ZN8rawspeed10trimSpacesB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN8rawspeed10trimSpacesB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %._crit_edge.i.i15.i, %bb.l, %bb.m
  store i64 %.sroa.speculated.i.i, ptr %i.i, align 8, !tbaa !44, !alias.scope !35
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.sroa.speculated.i.i
  store i8 0, ptr %i.af, align 1, !tbaa !38
  %.pre55 = load i64, ptr %i.i, align 8, !tbaa !44
  %.pre56.pre = load ptr, ptr %5, align 8, !tbaa !48 ; 5 uses
  %i.ag = icmp eq i64 %.pre55, 5
  br i1 %i.ag, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN8rawspeed10trimSpacesB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.ah = load i32, ptr %.pre56.pre, align 1
  %i.ai = xor i32 %i.ah, 1869504835
  %i.aj = getelementptr i8, ptr %.pre56.pre, i64 4
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i32
  %i.am = xor i32 %i.al, 110
  %i.an = or i32 %i.ai, %i.am
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ar = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #24
          to label %.noexc19 unwind label %bb.r   ; 3 uses

.noexc19:                                         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i64, ptr %i.a, align 8, !tbaa !31, !noalias !49
  store i64 %i.at, ptr %3, align 8, !tbaa !31, !noalias !49
  store ptr null, ptr %i.a, align 8, !tbaa !31, !noalias !49
  %.sroa.0.0.copyload.i = load ptr, ptr %i.as, align 8, !tbaa !11, !noalias !49
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !14, !noalias !49
  invoke void @_ZN8rawspeed10CrwDecoderC1ESt10unique_ptrIKNS_7CiffIFDESt14default_deleteIS3_EENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(104) %i.ar, ptr noundef nonnull align 8 %3, ptr %.sroa.0.0.copyload.i, i32 %.sroa.2.0.copyload.i)
          to label %bb.n unwind label %bb.p, !noalias !49

bb.n:                                             ; preds = %.noexc19
  %i.au = load ptr, ptr %3, align 8, !tbaa !31, !noalias !49 ; 2 uses
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN8rawspeed10CrwDecoderESt14default_deleteIS1_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZNKSt14default_deleteIKN8rawspeed7CiffIFDEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.au), !noalias !49, !inline_history !52
  br label %_ZNSt10unique_ptrIN8rawspeed10CrwDecoderESt14default_deleteIS1_EED2Ev.exit

bb.p:                                             ; preds = %.noexc19
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %3, align 8, !tbaa !31, !noalias !49 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.aw, null
  br i1 %.not.i4.i, label %_ZNSt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS2_EED2Ev.exit5.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZNKSt14default_deleteIKN8rawspeed7CiffIFDEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.aw), !noalias !49, !inline_history !52
  br label %_ZNSt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS2_EED2Ev.exit5.i

_ZNSt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS2_EED2Ev.exit5.i: ; preds = %bb.q, %bb.p
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef 104) #25, !noalias !49
  %.pre57 = load ptr, ptr %5, align 8, !tbaa !48
  br label %.body

_ZNSt10unique_ptrIN8rawspeed10CrwDecoderESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store ptr %i.ar, ptr %0, align 8, !tbaa !53
  %i.ax = load ptr, ptr %5, align 8, !tbaa !48    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.h
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10unique_ptrIN8rawspeed10CrwDecoderESt14default_deleteIS1_EED2Ev.exit
  %i.az = load i64, ptr %i.h, align 8, !tbaa !38
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN8rawspeed10CrwDecoderESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %.loopexitthread-pre-split

.loopexit33:                                      ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i16.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

.loopexit.split-lp:                               ; preds = %bb.i, %.noexc.i17.i, %.noexc4.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.r:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS2_EED2Ev.exit5.i, %bb.r
  %i.bc = phi ptr [ %.pre56.pre, %bb.r ], [ %.pre57, %_ZNSt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS2_EED2Ev.exit5.i ] ; 2 uses
  %eh.lpad-body = phi { ptr, i32 } [ %i.bb, %bb.r ], [ %i.av, %_ZNSt10unique_ptrIKN8rawspeed7CiffIFDESt14default_deleteIS2_EED2Ev.exit5.i ] ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.h
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

.critedge:                                        ; preds = %_ZN8rawspeed10trimSpacesB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.be = icmp eq ptr %.pre56.pre, %i.h
  br i1 %i.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %.critedge
  %i.bf = load i64, ptr %i.h, align 8, !tbaa !38
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %.pre56.pre, i64 noundef %i.bg) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22: ; preds = %bb.g, %.critedge, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEPKcm.exit.i, %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.029.047, i64 8 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.f
  br i1 %i.bi, label %.loopexitthread-pre-split, label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %.body
  %i.bj = load i64, ptr %i.h, align 8, !tbaa !38
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %.body, %.loopexit33, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
end_hunk_0
