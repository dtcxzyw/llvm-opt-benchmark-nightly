Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/TiffParser?download=true
inline.NumInlined: 967
inline.NumDeleted: 812
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN8rawspeed10TiffParser11makeDecoderESt10unique_ptrINS_11TiffRootIFDESt14default_deleteIS2_EENS_6BufferE:bb.a
  br i1 %.not18, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN8rawspeed10DngDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef nonnull %i.a, ptr %2, i32 %3)
  br i1 %i.b, label %bb.d, label %.preheader.1

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19TiffParserExceptionEEEvPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10TiffParser11makeDecoderESt10unique_ptrINS_11TiffRootIFDESt14default_deleteIS2_EENS_6BufferE) #13
  unreachable

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.c = load ptr, ptr %1, align 8, !tbaa !20
  %i.d = tail call noundef zeroext i1 @_ZN8rawspeed10MosDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef %i.c, ptr %2, i32 %3)
  br i1 %i.d, label %bb.d, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.e = load ptr, ptr %1, align 8, !tbaa !20
  %i.f = tail call noundef zeroext i1 @_ZN8rawspeed10IiqDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef %i.e, ptr %2, i32 %3)
  br i1 %i.f, label %bb.d, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.g = load ptr, ptr %1, align 8, !tbaa !20
  %i.h = tail call noundef zeroext i1 @_ZN8rawspeed10Cr2Decoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef %i.g, ptr %2, i32 %3)
  br i1 %i.h, label %bb.d, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.i = load ptr, ptr %1, align 8, !tbaa !20
  %i.j = tail call noundef zeroext i1 @_ZN8rawspeed10NefDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef %i.i, ptr %2, i32 %3)
  br i1 %i.j, label %bb.d, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.k = load ptr, ptr %1, align 8, !tbaa !20
  %i.l = tail call noundef zeroext i1 @_ZN8rawspeed10OrfDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef %i.k, ptr %2, i32 %3)
  br i1 %i.l, label %bb.d, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.m = load ptr, ptr %1, align 8, !tbaa !20
  %i.n = tail call noundef zeroext i1 @_ZN8rawspeed10ArwDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef %i.m, ptr %2, i32 %3)
  br i1 %i.n, label %bb.d, label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.6
  %i.o = load ptr, ptr %1, align 8, !tbaa !20
  %i.p = tail call noundef zeroext i1 @_ZN8rawspeed10PefDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef %i.o, ptr %2, i32 %3)
  br i1 %i.p, label %bb.d, label %.preheader.8

.preheader.8:                                     ; preds = %.preheader.7
  %i.q = load ptr, ptr %1, align 8, !tbaa !20
  %i.r = tail call noundef zeroext i1 @_ZN8rawspeed10Rw2Decoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef %i.q, ptr %2, i32 %3)
  br i1 %i.r, label %bb.d, label %.preheader.9

.preheader.9:                                     ; preds = %.preheader.8
  %i.s = load ptr, ptr %1, align 8, !tbaa !20
  %i.t = tail call noundef zeroext i1 @_ZN8rawspeed10SrwDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef %i.s, ptr %2, i32 %3)
  br i1 %i.t, label %bb.d, label %.preheader.10

.preheader.10:                                    ; preds = %.preheader.9
  %i.u = load ptr, ptr %1, align 8, !tbaa !20
  %i.v = tail call noundef zeroext i1 @_ZN8rawspeed10MefDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef %i.u, ptr %2, i32 %3)
  br i1 %i.v, label %bb.d, label %.preheader.11

.preheader.11:                                    ; preds = %.preheader.10
  %i.w = load ptr, ptr %1, align 8, !tbaa !20
  %i.x = tail call noundef zeroext i1 @_ZN8rawspeed10DcrDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef %i.w, ptr %2, i32 %3)
  br i1 %i.x, label %bb.d, label %.preheader.12

.preheader.12:                                    ; preds = %.preheader.11
  %i.y = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.z = tail call noundef zeroext i1 @_ZN8rawspeed10DcsDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef %i.y, ptr %2, i32 %3)
  br i1 %i.z, label %bb.d, label %.preheader.13

.preheader.13:                                    ; preds = %.preheader.12
  %i.aa = tail call noundef zeroext i1 @_ZN8rawspeed10KdcDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef %i.y, ptr %2, i32 %3)
  br i1 %i.aa, label %bb.d, label %.preheader.14

.preheader.14:                                    ; preds = %.preheader.13
  %i.ab = load ptr, ptr %1, align 8, !tbaa !20
  %i.ac = tail call noundef zeroext i1 @_ZN8rawspeed10ErfDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef %i.ab, ptr %2, i32 %3)
  br i1 %i.ac, label %bb.d, label %.preheader.15

.preheader.15:                                    ; preds = %.preheader.14
  %i.ad = load ptr, ptr %1, align 8, !tbaa !20
  %i.ae = tail call noundef zeroext i1 @_ZN8rawspeed10StiDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef %i.ad, ptr %2, i32 %3)
  br i1 %i.ae, label %bb.d, label %.preheader.16

.preheader.16:                                    ; preds = %.preheader.15
  %i.af = load ptr, ptr %1, align 8, !tbaa !20
  %i.ag = tail call noundef zeroext i1 @_ZN8rawspeed14ThreefrDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef %i.af, ptr %2, i32 %3)
  br i1 %i.ag, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.16
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19TiffParserExceptionEEEvPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10TiffParser11makeDecoderESt10unique_ptrINS_11TiffRootIFDESt14default_deleteIS2_EENS_6BufferE) #13
  unreachable

bb.d:                                             ; preds = %.preheader.16, %.preheader.15, %.preheader.14, %.preheader.13, %.preheader.12, %.preheader.11, %.preheader.10, %.preheader.9, %.preheader.8, %.preheader.7, %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.0.idx20.lcssa = phi i64 [ 0, %.preheader.preheader ], [ 16, %.preheader.1 ], [ 32, %.preheader.2 ], [ 48, %.preheader.3 ], [ 64, %.preheader.4 ], [ 80, %.preheader.5 ], [ 96, %.preheader.6 ], [ 112, %.preheader.7 ], [ 128, %.preheader.8 ], [ 144, %.preheader.9 ], [ 160, %.preheader.10 ], [ 176, %.preheader.11 ], [ 192, %.preheader.12 ], [ 208, %.preheader.13 ], [ 224, %.preheader.14 ], [ 240, %.preheader.15 ], [ 256, %.preheader.16 ]
  %.0.ptr.le = getelementptr inbounds nuw i8, ptr @_ZN8rawspeed10TiffParser3MapE, i64 %.0.idx20.lcssa
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.ptr.le, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !71
  tail call void %i.ai(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, i32 %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed10TiffParser5parseEPNS_7TiffIFDENS_6BufferE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.2") align 8 %0, ptr noundef %1, ptr %2, i32 %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.rawspeed::NORangesSet", align 8 ; 11 uses
  %5 = alloca %"class.std::unique_ptr.10", align 8 ; 4 uses
  %.sroa.9.sroa.0.0.insert.ext = zext i32 %3 to i64
  %.not.i.i = icmp ult i32 %3, 2
  br i1 %.not.i.i, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i, label %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i

_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i:     ; preds = %bb.a
  %i.a = load i8, ptr %2, align 1, !tbaa !78
  switch i8 %i.a, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i [
    i8 73, label %.lr.ph.i.i.i.i.i.1.i
    i8 77, label %.lr.ph.i.i.i.i.i6.1.i
  ]

.lr.ph.i.i.i.i.i.1.i:                             ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i
  %.0810.i.i.i.i.i.ptr.1.i = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.b = load i8, ptr %.0810.i.i.i.i.i.ptr.1.i, align 1, !tbaa !78
  %i.c = icmp eq i8 %i.b, 73
  br i1 %i.c, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i

.lr.ph.i.i.i.i.i6.1.i:                            ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i
  %.0810.i.i.i.i.i8.ptr.1.i = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.d = load i8, ptr %.0810.i.i.i.i.i8.ptr.1.i, align 1, !tbaa !78
  %i.e = icmp eq i8 %i.d, 77
  br i1 %i.e, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i

_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i: ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i, %.lr.ph.i.i.i.i.i.1.i, %.lr.ph.i.i.i.i.i6.1.i, %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19TiffParserExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc, ptr noundef nonnull @.str) #13
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit:        ; preds = %.lr.ph.i.i.i.i.i6.1.i, %.lr.ph.i.i.i.i.i.1.i
  %i.f = phi i1 [ true, %.lr.ph.i.i.i.i.i.1.i ], [ false, %.lr.ph.i.i.i.i.i6.1.i ] ; 2 uses
  %.0.i = phi i64 [ 244834610708480, %.lr.ph.i.i.i.i.i.1.i ], [ 209933706461184, %.lr.ph.i.i.i.i.i6.1.i ]
  %.not.i.i.i.i.i.i = icmp ult i32 %3, 4
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_ZN8rawspeed10ByteStream6getU16Ev.exit

bb.b:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #13
  unreachable

_ZN8rawspeed10ByteStream6getU16Ev.exit:           ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 2
  %.0.copyload.i.i.i.i.i.i = load i16, ptr %i.g, align 1 ; 2 uses
  %i.h = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i)
  %spec.select.i.i.i.i.i.i = select i1 %i.f, i16 %.0.copyload.i.i.i.i.i.i, i16 %i.h
  switch i16 %spec.select.i.i.i.i.i.i, label %bb.c [
    i16 21330, label %bb.d
    i16 20306, label %bb.d
    i16 85, label %bb.d
    i16 42, label %bb.d
  ]

bb.c:                                             ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19TiffParserExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10TiffParser5parseEPNS_7TiffIFDENS_6BufferE) #13
  unreachable

bb.d:                                             ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit, %_ZN8rawspeed10ByteStream6getU16Ev.exit, %_ZN8rawspeed10ByteStream6getU16Ev.exit, %_ZN8rawspeed10ByteStream6getU16Ev.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.i = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #25, !noalias !79 ; 9 uses
  %.sroa.9.sroa.0.0.insert.insert69 = or disjoint i64 %.0.i, %.sroa.9.sroa.0.0.insert.ext ; 3 uses
  invoke void @_ZN8rawspeed7TiffIFDC2EPS0_PNS_11NORangesSetINS_6BufferEEENS_10DataBufferEj(ptr noundef nonnull align 8 dereferenceable(120) %i.i, ptr noundef %1, ptr noundef null, ptr nonnull %2, i64 %.sroa.9.sroa.0.0.insert.insert69, i32 noundef -1)
          to label %_ZSt11make_uniqueIN8rawspeed11TiffRootIFDEJRPNS0_7TiffIFDEDnRNS0_10ByteStreamEjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.e, !noalias !79

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit47, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.e ], [ %.merged, %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit47 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 120) #24, !noalias !79
  br label %common.resume

_ZSt11make_uniqueIN8rawspeed11TiffRootIFDEJRPNS0_7TiffIFDEDnRNS0_10ByteStreamEjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8rawspeed11TiffRootIFDE, i64 16), ptr %i.i, align 8, !tbaa !18, !noalias !79
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  store ptr %2, ptr %i.k, align 8, !noalias !79
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store i64 %.sroa.9.sroa.0.0.insert.insert69, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !79
  store ptr %i.i, ptr %0, align 8, !tbaa !20, !alias.scope !79
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 0, ptr %i.l, align 8, !tbaa !80
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.l, ptr %i.n, align 8, !tbaa !81
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.l, ptr %i.o, align 8, !tbaa !82
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.p, align 8, !tbaa !83
  %.not.i.i.i.i.i.i26 = icmp ult i32 %3, 8
  br i1 %.not.i.i.i.i.i.i26, label %bb.f, label %_ZN8rawspeed10ByteStream6getU32Ev.exit

bb.f:                                             ; preds = %_ZSt11make_uniqueIN8rawspeed11TiffRootIFDEJRPNS0_7TiffIFDEDnRNS0_10ByteStreamEjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #13
          to label %.noexc unwind label %6

.noexc:                                           ; preds = %bb.f
  unreachable

_ZN8rawspeed10ByteStream6getU32Ev.exit:           ; preds = %_ZSt11make_uniqueIN8rawspeed11TiffRootIFDEJRPNS0_7TiffIFDEDnRNS0_10ByteStreamEjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.0.copyload.i.i.i.i.i.i27 = load i32, ptr %i.q, align 1 ; 2 uses
  %i.r = call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i27)
  %spec.select.i.i.i.i.i.i28 = select i1 %i.f, i32 %.0.copyload.i.i.i.i.i.i27, i32 %i.r ; 2 uses
  %.not97 = icmp eq i32 %spec.select.i.i.i.i.i.i28, 0
  br i1 %.not97, label %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit41, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN8rawspeed10ByteStream6getU32Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  br label %.lr.ph

6:                                                ; preds = %bb.f
  %7 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit47

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit38
  %storemerge98 = phi i32 [ %i.al, %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit38 ], [ %spec.select.i.i.i.i.i.i28, %.lr.ph.preheader ]
  %i.t = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #25
          to label %.noexc32 unwind label %bb.h   ; 3 uses

.noexc32:                                         ; preds = %.lr.ph
  invoke void @_ZN8rawspeed7TiffIFDC1EPS0_PNS_11NORangesSetINS_6BufferEEENS_10DataBufferEj(ptr noundef nonnull align 8 dereferenceable(104) %i.t, ptr noundef nonnull %i.i, ptr noundef nonnull %4, ptr nonnull %2, i64 %.sroa.9.sroa.0.0.insert.insert69, i32 noundef %storemerge98)
          to label %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit unwind label %bb.g, !noalias !84

bb.g:                                             ; preds = %.noexc32
  %i.u = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8rawspeed19TiffParserExceptionE
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 104) #24, !noalias !84
  br label %.body

_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit: ; preds = %.noexc32
  %i.v = ptrtoint ptr %i.t to i64
  store i64 %i.v, ptr %5, align 8, !tbaa !32
  invoke void @_ZN8rawspeed7TiffIFD3addESt10unique_ptrIS0_St14default_deleteIS0_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.i, ptr noundef nonnull align 8 %5)
          to label %.critedge unwind label %bb.k

bb.h:                                             ; preds = %.lr.ph
  %i.w = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8rawspeed19TiffParserExceptionE
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.w, %bb.h ], [ %i.u, %bb.g ] ; 3 uses
  %i.x = extractvalue { ptr, i32 } %eh.lpad-body, 1
  %i.y = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8rawspeed19TiffParserExceptionE) #23
  %i.z = icmp eq i32 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit47

bb.i:                                             ; preds = %.body
  %i.aa = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ab = call ptr @__cxa_begin_catch(ptr %i.aa) #23 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit41 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit47

.critedge:                                        ; preds = %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit
  %i.ad = load ptr, ptr %5, align 8, !tbaa !32    ; 3 uses
  %.not.i33 = icmp eq ptr %i.ad, null
  br i1 %.not.i33, label %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit38, label %_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i34

_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i34: ; preds = %.critedge
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(104) %i.ad) #23, !call_target !37, !inline_history !76
  br label %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit38

_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit38: ; preds = %_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i34, %.critedge
  %i.ah = load ptr, ptr %i.s, align 8, !tbaa !85
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !95 ; 2 uses
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit41, label %.lr.ph, !llvm.loop !77

bb.k:                                             ; preds = %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %5, align 8, !tbaa !32    ; 3 uses
  %.not.i42 = icmp eq ptr %i.an, null
  br i1 %.not.i42, label %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit47, label %_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i43

_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i43: ; preds = %bb.k
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(104) %i.an) #23, !call_target !37, !inline_history !76
  br label %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit47

_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit41: ; preds = %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit38, %_ZN8rawspeed10ByteStream6getU32Ev.exit, %bb.i
  %i.ar = load ptr, ptr %i.m, align 8, !tbaa !26
  invoke void @_ZNSt8_Rb_treeIN8rawspeed6BufferES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.ar)
          to label %_ZN8rawspeed11NORangesSetINS_6BufferEED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit41
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #22
  unreachable

_ZN8rawspeed11NORangesSetINS_6BufferEED2Ev.exit:  ; preds = %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit47: ; preds = %_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i43, %bb.k, %bb.j, %.body, %6
  %.merged = phi { ptr, i32 } [ %7, %6 ], [ %eh.lpad-body, %.body ], [ %i.ac, %bb.j ], [ %i.am, %bb.k ], [ %i.am, %_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i43 ]
  call void @_ZN8rawspeed11NORangesSetINS_6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #23
  br label %common.resume
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20     ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8rawspeed7TiffIFDE, i64 16), ptr %i.a, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  invoke void @_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.d)
          to label %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #22
  unreachable

_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30   ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i, %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i ], [ %i.h, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i ] ; 2 uses
  %i.k = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !32 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(104) %i.k) #23, !call_target !37, !inline_history !96
  br label %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !29
  br label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i
  %i.p = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.h, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i1.i.i.i, label %_ZNKSt14default_deleteIN8rawspeed11TiffRootIFDEEclEPS1_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !40
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #24
  br label %_ZNKSt14default_deleteIN8rawspeed11TiffRootIFDEEclEPS1_.exit

_ZNKSt14default_deleteIN8rawspeed11TiffRootIFDEEclEPS1_.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 120) #24
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt14default_deleteIN8rawspeed11TiffRootIFDEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_19TiffParserExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_19TiffParserExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #23 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN8rawspeed19TiffParserExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed19TiffParserExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #5

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare void @_ZN8rawspeed7TiffIFD3addESt10unique_ptrIS0_St14default_deleteIS0_EE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef align 8) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed11NORangesSetINS_6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  invoke void @_ZNSt8_Rb_treeIN8rawspeed6BufferES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt3setIN8rawspeed6BufferESt4lessIS1_ESaIS1_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #22
  unreachable

_ZNSt3setIN8rawspeed6BufferESt4lessIS1_ESaIS1_EED2Ev.exit: ; preds = %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN8rawspeed10DngDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef, ptr, i32) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed10TiffParser11constructorINS_10DngDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, i32 %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #25, !noalias !99 ; 3 uses
  invoke void @_ZN8rawspeed10DngDecoderC1EOSt10unique_ptrINS_11TiffRootIFDESt14default_deleteIS2_EENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, i32 %3)
          to label %_ZNSt10unique_ptrIN8rawspeed10DngDecoderESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !99

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 120) #24, !noalias !99
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN8rawspeed10DngDecoderESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !43
  ret void
}

declare noundef zeroext i1 @_ZN8rawspeed10MosDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef, ptr, i32) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed10TiffParser11constructorINS_10MosDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, i32 %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #25, !noalias !102 ; 3 uses
  invoke void @_ZN8rawspeed10MosDecoderC1EOSt10unique_ptrINS_11TiffRootIFDESt14default_deleteIS2_EENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(168) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, i32 %3)
          to label %_ZNSt10unique_ptrIN8rawspeed10MosDecoderESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !102

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 168) #24, !noalias !102
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN8rawspeed10MosDecoderESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !43
  ret void
}

declare noundef zeroext i1 @_ZN8rawspeed10IiqDecoder20isAppropriateDecoderEPKNS_11TiffRootIFDENS_6BufferE(ptr noundef, ptr, i32) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed10TiffParser11constructorINS_10IiqDecoderEEESt10unique_ptrINS_10RawDecoderESt14default_deleteIS4_EEOS3_INS_11TiffRootIFDES5_IS8_EENS_6BufferE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, i32 %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #25, !noalias !105 ; 6 uses
  invoke void @_ZN8rawspeed10RawDecoderC2ENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr %2, i32 %3)
          to label %_ZNSt10unique_ptrIN8rawspeed10IiqDecoderESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !105

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 112) #24, !noalias !105
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN8rawspeed10IiqDecoderESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.d = load i64, ptr %1, align 8, !tbaa !20, !noalias !105
end_hunk_0
