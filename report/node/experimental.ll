Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/experimental?download=true
inline.NumInlined: 430
inline.NumDeleted: 265
begin_hunk_0_@_ZN2v88internal18ExperimentalRegExp7CompileEPNS0_7IsolateENS0_12DirectHandleINS0_12IrRegExpDataEEE:bb.a

bb.h:                                             ; preds = %_ZN2v88internal12StdoutStreamD1Ev.exit, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call fastcc void @_ZN2v88internal12_GLOBAL__N_111CompileImplEPNS0_7IsolateENS0_12DirectHandleINS0_12IrRegExpDataEEE(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull %0, ptr nonnull %1)
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val = load i8, ptr %i.at, align 8, !range !24, !noundef !26
  %i.au = trunc nuw i8 %.val to i1                ; 2 uses
  br i1 %i.au, label %bb.i, label %_ZN2v88internal12IrRegExpData20set_capture_name_mapENS0_12DirectHandleINS0_10FixedArrayEEE.exit

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.av = load i64, ptr %1, align 8
  store i64 %i.av, ptr %4, align 8
  %i.aw = load ptr, ptr %3, align 8
  %i.ax = load i64, ptr %i.aw, align 8
  call void @_ZN2v88internal12IrRegExpData26SetBytecodeForExperimentalEPNS0_7IsolateENS0_6TaggedINS0_16TrustedByteArrayEEE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %0, i64 %i.ax) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.ay = load i64, ptr %1, align 8               ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.az, align 8 ; 2 uses
  %i.ba = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %i.ba, label %_ZN2v88internal12IrRegExpData20set_capture_name_mapENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, label %bb.j

_ZN2v88internal12IrRegExpData20set_capture_name_mapENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i: ; preds = %bb.i
  %i.bb = add i64 %i.ay, 71
  %i.bc = inttoptr i64 %i.bb to ptr
  store atomic volatile i64 0, ptr %i.bc monotonic, align 8
  br label %_ZN2v88internal12IrRegExpData20set_capture_name_mapENS0_12DirectHandleINS0_10FixedArrayEEE.exit

bb.j:                                             ; preds = %bb.i
  %i.bd = load i64, ptr %.sroa.0.0.copyload, align 8 ; 5 uses
  %i.be = add i64 %i.ay, 71                       ; 3 uses
  %i.bf = inttoptr i64 %i.be to ptr
  store atomic volatile i64 %i.bd, ptr %i.bf monotonic, align 8
  %i.bg = trunc i64 %i.bd to i1
  br i1 %i.bg, label %bb.k, label %_ZN2v88internal12IrRegExpData20set_capture_name_mapENS0_12DirectHandleINS0_10FixedArrayEEE.exit

bb.k:                                             ; preds = %bb.j
  %i.bh = and i64 %i.ay, -262144
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load i64, ptr %i.bi, align 262144       ; 2 uses
  %i.bk = and i64 %i.bj, 32
  %.not.i.i.i6.i = icmp eq i64 %i.bk, 0
  %i.bl = and i64 %i.bj, 25
  %.not38.i.i.i7.i = icmp eq i64 %i.bl, 0
  br i1 %.not38.i.i.i7.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bm = and i64 %i.bd, -262144
  %i.bn = inttoptr i64 %i.bm to ptr
  %.sroa.0.0.copyload.i28.i.i.i8.i = load i64, ptr %i.bn, align 262144
  %i.bo = and i64 %.sroa.0.0.copyload.i28.i.i.i8.i, 25
  %.not39.i.i.i9.i = icmp eq i64 %i.bo, 0
  br i1 %.not39.i.i.i9.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ay, i64 noundef %i.be, i64 %i.bd) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  br i1 %.not.i.i.i6.i, label %_ZN2v88internal12IrRegExpData20set_capture_name_mapENS0_12DirectHandleINS0_10FixedArrayEEE.exit, label %bb.o, !prof !28

bb.o:                                             ; preds = %bb.n
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ay, i64 %i.be, i64 %i.bd) #11
  br label %_ZN2v88internal12IrRegExpData20set_capture_name_mapENS0_12DirectHandleINS0_10FixedArrayEEE.exit

_ZN2v88internal12IrRegExpData20set_capture_name_mapENS0_12DirectHandleINS0_10FixedArrayEEE.exit: ; preds = %bb.o, %bb.n, %bb.j, %_ZN2v88internal12IrRegExpData20set_capture_name_mapENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret i1 %i.au
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_111CompileImplEPNS0_7IsolateENS0_12DirectHandleINS0_12IrRegExpDataEEE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2) unnamed_addr #0 !guid !35 {
bb.a:
  %3 = alloca %"class.v8::internal::Zone", align 8 ; 6 uses
  %4 = alloca %"struct.v8::internal::RegExpCompileData", align 8 ; 9 uses
  %5 = alloca %"class.v8::internal::ZoneList", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 58832
  %i.b = load ptr, ptr %i.a, align 8
  call void @_ZN2v88internal4ZoneC1EPNS0_19AccountingAllocatorEPKc(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %i.b, ptr noundef nonnull @__func__._ZN2v88internal12_GLOBAL__N_111CompileImplEPNS0_7IsolateENS0_12DirectHandleINS0_12IrRegExpDataEEE) #11
  %i.c = load i64, ptr %2, align 8
  %i.d = add i64 %i.c, 15
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %bb.b, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.l = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #11
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.l, %bb.b ], [ %i.h, %bb.a ] ; 4 uses
  %i.m = ptrtoint ptr %.0.i to i64
  %i.n = add i64 %i.m, 8
  %i.o = inttoptr i64 %i.n to ptr
  store ptr %i.o, ptr %i.g, align 8
  store i64 %i.f, ptr %.0.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %4, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 25
  store i8 0, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %i.s = load i64, ptr %2, align 8
  %i.t = add i64 %i.s, 23
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i64, ptr %i.u, align 8
  %i.w = lshr i64 %i.v, 32
  %i.x = trunc nuw i64 %i.w to i32                ; 2 uses
  %i.y = call noundef zeroext i1 @_ZN2v88internal12RegExpParser25ParseRegExpFromHeapStringEPNS0_7IsolateEPNS0_4ZoneENS0_12DirectHandleINS0_6StringEEENS_4base5FlagsINS0_10RegExpFlagEiiEEPNS0_17RegExpCompileDataE(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr nonnull %.0.i, i32 %i.x, ptr noundef nonnull %4) #11
  br i1 %i.y, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = call ptr @_ZN2v88internal6RegExp20ThrowRegExpExceptionEPNS0_7IsolateENS_4base5FlagsINS0_10RegExpFlagEiiEENS0_12DirectHandleINS0_6StringEEENS0_11RegExpErrorE(ptr noundef nonnull %1, i32 %i.x, ptr nonnull %.0.i, i32 noundef %i.aa) #11 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.ac, align 8
  br label %bb.i

bb.d:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.ad = load ptr, ptr %4, align 8
  %i.ae = load i64, ptr %2, align 8
  %i.af = add i64 %i.ae, 23
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = lshr i64 %i.ah, 32
  %i.aj = trunc nuw i64 %i.ai to i32
  call void @_ZN2v88internal26ExperimentalRegExpCompiler7CompileEPNS0_10RegExpTreeENS_4base5FlagsINS0_10RegExpFlagEiiEEPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::ZoneList") align 8 %5, ptr noundef %i.ad, i32 %i.aj, ptr noundef nonnull %3) #11
  %i.ak = load ptr, ptr %5, align 8               ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %i.an = icmp sgt i32 %i.am, -1
  br i1 %i.an, label %_ZNK2v84base6VectorINS_8internal17RegExpInstructionEE6lengthEv.exit.i, label %bb.e, !prof !28

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9) #12
  unreachable

_ZNK2v84base6VectorINS_8internal17RegExpInstructionEE6lengthEv.exit.i: ; preds = %bb.d
  %i.ao = shl i32 %i.am, 3                        ; 3 uses
  %i.ap = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewTrustedByteArrayEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.ao, i8 noundef zeroext 8) #11 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = add i64 %i.aq, -1
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  switch i32 %i.ao, label %bb.h [
    i32 16, label %bb.g
    i32 8, label %bb.f
  ]

bb.f:                                             ; preds = %_ZNK2v84base6VectorINS_8internal17RegExpInstructionEE6lengthEv.exit.i
  %i.au = load i64, ptr %i.ak, align 1
  store i64 %i.au, ptr %i.at, align 1
  br label %_ZN2v88internal17VectorToByteArrayINS0_17RegExpInstructionEEENS0_12DirectHandleINS0_16TrustedByteArrayEEEPNS0_7IsolateENS_4base6VectorIT_EE.exit

bb.g:                                             ; preds = %_ZNK2v84base6VectorINS_8internal17RegExpInstructionEE6lengthEv.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.at, ptr noundef nonnull align 1 dereferenceable(16) %i.ak, i64 16, i1 false)
  br label %_ZN2v88internal17VectorToByteArrayINS0_17RegExpInstructionEEENS0_12DirectHandleINS0_16TrustedByteArrayEEEPNS0_7IsolateENS_4base6VectorIT_EE.exit

bb.h:                                             ; preds = %_ZNK2v84base6VectorINS_8internal17RegExpInstructionEE6lengthEv.exit.i
  %i.av = sext i32 %i.ao to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr align 1 %i.ak, i64 %i.av, i1 false)
  br label %_ZN2v88internal17VectorToByteArrayINS0_17RegExpInstructionEEENS0_12DirectHandleINS0_16TrustedByteArrayEEEPNS0_7IsolateENS_4base6VectorIT_EE.exit

_ZN2v88internal17VectorToByteArrayINS0_17RegExpInstructionEEENS0_12DirectHandleINS0_16TrustedByteArrayEEEPNS0_7IsolateENS_4base6VectorIT_EE.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.aw = load ptr, ptr %i.r, align 8
  %i.ax = call ptr @_ZN2v88internal6RegExp20CreateCaptureNameMapEPNS0_7IsolateEPNS0_10ZoneVectorIPNS0_13RegExpCaptureEEE(ptr noundef nonnull %1, ptr noundef %i.aw) #11
  store ptr %i.ap, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.ay, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal17VectorToByteArrayINS0_17RegExpInstructionEEENS0_12DirectHandleINS0_16TrustedByteArrayEEEPNS0_7IsolateENS_4base6VectorIT_EE.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @_ZN2v88internal4ZoneD1Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(64) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void
}

declare void @_ZN2v88internal12IrRegExpData26SetBytecodeForExperimentalEPNS0_7IsolateENS0_6TaggedINS0_16TrustedByteArrayEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, i64 } @_ZN2v88internal21AsInstructionSequenceENS0_6TaggedINS0_16TrustedByteArrayEEE(i64 %0) local_unnamed_addr #4 !guid !36 {
bb.a:
  %i.a = add i64 %0, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %1 = load i64, ptr %i.d, align 8
  %2 = lshr i64 %1, 32
  %3 = trunc nuw i64 %2 to i32
  %i.e = ashr i32 %3, 3
  %i.f = sext i32 %i.e to i64
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.c, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.f, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal18ExperimentalRegExp7ExecRawEPNS0_7IsolateENS0_6RegExp10CallOriginENS0_6TaggedINS0_12IrRegExpDataEEENS6_INS0_6StringEEEPiii(ptr noundef %0, i32 noundef %1, i64 %2, i64 %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 align 2 !guid !37 {
bb.a:
  %7 = alloca %"class.v8::internal::Zone", align 8 ; 5 uses
  %8 = alloca %"class.v8::internal::StdoutStream", align 8 ; 19 uses
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1609), align 1, !range !24, !noundef !26
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1624), align 8, !range !24, !noundef !26
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 6 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #11
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 304
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 312
  store i8 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 313
  store i8 0, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  %i.j = load ptr, ptr @stdout, align 8
  call void @_ZN2v88internal8OFStreamC2EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(88) %8, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN2v88internal12StdoutStreamE, i64 8), ptr noundef %i.j) #11
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %8, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.e, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  %i.l = call noundef ptr @_ZN2v88internal12StdoutStream14GetStdoutMutexEv() #11 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8
  call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #11
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %8, ptr noundef nonnull @.str.5, i64 noundef 30) #11 ; 0 uses
  %i.n = add i64 %2, 15
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 8
  %i.q = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoNS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(88) %8, i64 %i.p) #11 ; 0 uses
  %i.r = load ptr, ptr %8, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %8, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 240
  %i.w = load ptr, ptr %i.v, align 8              ; 6 uses
  %.not.i.i.i8 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i8, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt16__throw_bad_castv() #12
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.y = load i8, ptr %i.x, align 8
  %.not.i1.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 67
  %i.aa = load i8, ptr %i.z, align 1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.w) #11
  %i.ab = load ptr, ptr %i.w, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noundef signext i8 %i.ad(ptr noundef nonnull align 8 dereferenceable(570) %i.w, i8 noundef signext 10) #11, !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i = phi i8 [ %i.aa, %bb.f ], [ %i.ae, %bb.g ]
  %i.af = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %8, i8 noundef signext %.0.i.i.i) #11
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #11 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %8, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.e, align 8
  %i.ah = load ptr, ptr %i.k, align 8             ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %_ZN2v88internal12StdoutStreamD1Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #11, !inline_history !25
  br label %_ZN2v88internal12StdoutStreamD1Ev.exit

_ZN2v88internal12StdoutStreamD1Ev.exit:           ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.h
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %8, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.e, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #11, !inline_history !25
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #11, !inline_history !25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal12StdoutStreamD1Ev.exit, %bb.c
  %.sroa.0.0.in.in.i = add i64 %2, 39
  %.sroa.0.0.in.i = inttoptr i64 %.sroa.0.0.in.in.i to ptr
  %.sroa.0.0.i = load i64, ptr %.sroa.0.0.in.i, align 8
  %i.ak = add i64 %2, 87
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i64, ptr %i.al, align 8
  %sh.diff = lshr i64 %i.am, 31
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %i.an = and i32 %tr.sh.diff, -2
  %i.ao = add i32 %i.an, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 58832
  %i.aq = load ptr, ptr %i.ap, align 8
  call void @_ZN2v88internal4ZoneC1EPNS0_19AccountingAllocatorEPKc(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef %i.aq, ptr noundef nonnull @__func__._ZN2v88internal12_GLOBAL__N_111ExecRawImplEPNS0_7IsolateENS0_6RegExp10CallOriginENS0_6TaggedINS0_16TrustedByteArrayEEENS6_INS0_6StringEEEiPiii) #11
  %i.ar = call noundef i32 @_ZN2v88internal29ExperimentalRegExpInterpreter11FindMatchesEPNS0_7IsolateENS0_6RegExp10CallOriginENS0_6TaggedINS0_16TrustedByteArrayEEEiNS6_INS0_6StringEEEiPiiPNS0_4ZoneE(ptr noundef nonnull %0, i32 noundef %1, i64 %.sroa.0.0.i, i32 noundef %i.ao, i64 %3, i32 noundef %6, ptr noundef %4, i32 noundef %5, ptr noundef nonnull %7) #11
  call void @_ZN2v88internal4ZoneD1Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(64) %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  ret i32 %i.ar
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal18ExperimentalRegExp18MatchForCallFromJsEmimmPiiNS0_6RegExp10CallOriginEPNS0_7IsolateEm(i64 noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i64 noundef %8) local_unnamed_addr #0 align 2 !guid !38 {
bb.a:
  %9 = alloca %"class.v8::internal::DisallowJavascriptExecution", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  call void @_ZN2v88internal27DisallowJavascriptExecutionC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(9) %9, ptr noundef %7) #11
  %i.a = trunc i64 %8 to i1
  br i1 %i.a, label %_ZN2v88internal8NullOrIsINS0_12IrRegExpDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i, label %_ZN2v88internal8NullOrIsINS0_12IrRegExpDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.thread.i, !prof !39

_ZN2v88internal8NullOrIsINS0_12IrRegExpDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i: ; preds = %bb.a
  %i.b = add nsw i64 %8, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 183
  br i1 %i.h, label %_ZN2v88internal7SbxCastINS0_12IrRegExpDataENS0_6ObjectENS0_6TaggedEQ21HasCastImplementationIT1_T_T0_EEES5_IS6_ES5_IS7_ENS_14SourceLocationE.exit, label %_ZN2v88internal8NullOrIsINS0_12IrRegExpDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.thread.i, !prof !40

_ZN2v88internal8NullOrIsINS0_12IrRegExpDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.thread.i: ; preds = %_ZN2v88internal8NullOrIsINS0_12IrRegExpDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i, %bb.a
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.11) #12
  unreachable

_ZN2v88internal7SbxCastINS0_12IrRegExpDataENS0_6ObjectENS0_6TaggedEQ21HasCastImplementationIT1_T_T0_EEES5_IS6_ES5_IS7_ENS_14SourceLocationE.exit: ; preds = %_ZN2v88internal8NullOrIsINS0_12IrRegExpDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i
  %i.i = call noundef i32 @_ZN2v88internal18ExperimentalRegExp7ExecRawEPNS0_7IsolateENS0_6RegExp10CallOriginENS0_6TaggedINS0_12IrRegExpDataEEENS6_INS0_6StringEEEPiii(ptr noundef %7, i32 noundef 1, i64 %8, i64 %0, ptr noundef %4, i32 noundef %5, i32 noundef %1)
  call void @_ZN2v88internal27DisallowJavascriptExecutionD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  ret i32 %i.i
}

declare void @_ZN2v88internal27DisallowJavascriptExecutionC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2v88internal27DisallowJavascriptExecutionD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 0, 8589934592) i64 @_ZN2v88internal18ExperimentalRegExp4ExecEPNS0_7IsolateENS0_12DirectHandleINS0_12IrRegExpDataEEENS4_INS0_6StringEEEiPij(ptr noundef %0, ptr nofree readonly captures(none) %1, ptr %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 align 2 !guid !41 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.in.in.in.i.i = add i64 %i.a, 39
  %.in.in.i.i = inttoptr i64 %.in.in.in.i.i to ptr
  %.in.i.i = load i64, ptr %.in.in.i.i, align 8
  %.not = icmp eq i64 %.in.i.i, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN2v88internal18ExperimentalRegExp7CompileEPNS0_7IsolateENS0_12DirectHandleINS0_12IrRegExpDataEEE(ptr noundef %0, ptr nonnull %1)
  br i1 %i.b, label %bb.c, label %.thread45

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load i64, ptr %2, align 8                ; 2 uses
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  %i.f = load atomic volatile i64, ptr %i.e acquire, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2 ; 3 uses
  %i.j = and i16 %i.i, -127
  %.not49 = icmp eq i16 %i.j, 1
  br i1 %.not49, label %bb.d, label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit, !prof !27

bb.d:                                             ; preds = %bb.c
  %i.k = and i16 %i.i, 7
  %i.l = icmp eq i16 %i.k, 1
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.n = load i64, ptr %i.m, align 8
end_hunk_0
