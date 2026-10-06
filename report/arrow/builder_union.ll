Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/builder_union?download=true
inline.NumInlined: 1479
inline.NumDeleted: 711
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5arrow17DenseUnionBuilder6AppendEa:bb.a

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status8FromArgsIJRA82_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 6, ptr noundef nonnull align 1 dereferenceable(82) @.str.1)
  br label %_ZN5arrow18TypedBufferBuilderIivE6AppendEi.exit

bb.e:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !95
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.q
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !96 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !63
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(144) %i.ab)
  %i.ag = trunc i64 %i.af to i32
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 4 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !45, !noalias !222 ; 2 uses
  %i.aj = add nsw i64 %i.ai, 4                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !98, !noalias !222 ; 2 uses
  %i.am = icmp sgt i64 %i.aj, %i.al
  br i1 %i.am, label %_ZN5arrow6StatusD2Ev.exit.i.i14, label %bb.f, !prof !75

_ZN5arrow6StatusD2Ev.exit.i.i14:                  ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 312
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !noalias !222
  %i.ao = shl nsw i64 %i.al, 1
  %.sroa.speculated.i.i.i15 = call noundef i64 @llvm.smax.i64(i64 %i.aj, i64 %i.ao)
  call void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(56) %i.an, i64 noundef %.sroa.speculated.i.i.i15, i1 noundef zeroext false), !noalias !222
  %i.ap = load ptr, ptr %3, align 8, !tbaa !48, !noalias !222 ; 2 uses
  store ptr %i.ap, ptr %0, align 8, !tbaa !48, !alias.scope !222
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !222
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i16, label %_ZN5arrow18TypedBufferBuilderIivE6AppendEi.exit

_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i16:       ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i14
  %.pre.i.i17 = load i64, ptr %i.ah, align 8, !tbaa !45, !noalias !222
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i16, %bb.e
  %i.ar = phi i64 [ %.pre.i.i17, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i16 ], [ %i.ai, %bb.e ]
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !100, !noalias !222
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.ar
  store i32 %i.ag, ptr %i.au, align 1, !noalias !222
  %i.av = load i64, ptr %i.ah, align 8, !tbaa !45, !noalias !222
  %i.aw = add nsw i64 %i.av, 4
  store i64 %i.aw, ptr %i.ah, align 8, !tbaa !45, !noalias !222
  store ptr null, ptr %0, align 8, !tbaa !48, !alias.scope !223
  br label %_ZN5arrow18TypedBufferBuilderIivE6AppendEi.exit

_ZN5arrow18TypedBufferBuilderIivE6AppendEi.exit:  ; preds = %bb.f, %_ZN5arrow6StatusD2Ev.exit.i.i14, %bb.b, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow17DenseUnionBuilder14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(368) %1, ptr nofree noundef captures(none) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZN5arrow17BasicUnionBuilder14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef %2)
  %i.a = load ptr, ptr %3, align 8, !tbaa !48     ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.a, label %bb.l

bb.a:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.c = load ptr, ptr %2, align 8, !tbaa !78     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71   ; 3 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !69   ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 4                   ; 2 uses
  %i.l = icmp ult i64 %i.k, 3
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = sub nuw nsw i64 3, %i.k
  tail call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.m)
  br label %_ZN5arrow6StatusD2Ev.exit19

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.j, 48
  br i1 %.not, label %_ZN5arrow6StatusD2Ev.exit19, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 3 uses
  %.not.i.i = icmp eq ptr %i.f, %i.n
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit19, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.af, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !64   ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.q, align 8, !tbaa !73
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !74
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #16, !inline_history !224
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !63
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #16, !inline_history !224
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !16
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.t, %bb.h ], [ %i.ad, %bb.i ]
  %i.ae = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ae, label %bb.j, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i, !prof !75

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #16
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.f, %.lr.ph.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, %i.f
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i
  store ptr %i.n, ptr %i.e, align 8, !tbaa !71
  br label %_ZN5arrow6StatusD2Ev.exit19

_ZN5arrow6StatusD2Ev.exit19:                      ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.ah = load ptr, ptr %2, align 8, !tbaa !78
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !69
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  call void @_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.ag, ptr noundef nonnull %i.ak, i1 noundef zeroext true)
  %i.al = load ptr, ptr %4, align 8, !tbaa !48    ; 2 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit19
  store ptr null, ptr %0, align 8, !tbaa !48, !alias.scope !227
  br label %bb.l

bb.l:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit19, %_ZN5arrow6StatusD2Ev.exit, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow17BasicUnionBuilderC2EPNS_10MemoryPoolElRKSt6vectorISt10shared_ptrINS_12ArrayBuilderEESaIS6_EERKS4_INS_8DataTypeEE(ptr noundef nonnull align 8 dereferenceable(312) initializes((0, 144)) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !230
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.d, align 8, !tbaa !231
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.f, align 8, !tbaa !106
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.g, align 8, !tbaa !100
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store i64 %2, ptr %i.i, align 8, !tbaa !107
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow17BasicUnionBuilderE, i64 16), ptr %0, align 8, !tbaa !63
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !51   ; 2 uses
  %i.n = load ptr, ptr %3, align 8, !tbaa !52     ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp ugt i64 %i.q, 9223372036854775792
  br i1 %i.r, label %bb.b, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2EmRKS4_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2EmRKS4_.exit.thread.i: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 16, i1 false)
  br label %bb.c

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #18
          to label %.noexc33 unwind label %bb.e   ; 3 uses

.noexc33:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.s, ptr %i.k, align 8, !tbaa !110
  %i.t = getelementptr i8, ptr %i.s, i64 %i.q
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.s, i8 0, i64 %i.q, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2EmRKS4_.exit.thread.i, %.noexc33
  %.sink.i = phi ptr [ null, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2EmRKS4_.exit.thread.i ], [ %i.t, %.noexc33 ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %.sink.i, ptr %i.v, align 8, !tbaa !111
  store ptr %.sink.i, ptr %i.u, align 8, !tbaa !112
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.x, i8 0, i64 49, i1 false)
  store ptr %1, ptr %i.aa, align 8, !tbaa !106
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ab, align 8, !tbaa !100
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  store i64 %2, ptr %i.ad, align 8, !tbaa !107
  %i.ae = load ptr, ptr %4, align 8, !tbaa !114   ; 5 uses
  %i.af = invoke noundef i32 @_ZNK5arrow9UnionType4modeEv(ptr noundef nonnull align 8 dereferenceable(120) %i.ae)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !131
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 72 ; 2 uses
  %i.ai = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIaSaIaEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %bb.g unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.b
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit, %bb.h, %bb.g, %bb.d, %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.g:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.am = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.h unwind label %bb.f       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.an = invoke noundef zeroext i8 @_ZNK5arrow9UnionType13max_type_codeEv(ptr noundef nonnull align 8 dereferenceable(120) %i.ae)
          to label %bb.i unwind label %bb.f

bb.i:                                             ; preds = %bb.h
  %i.ao = zext i8 %i.an to i64                    ; 2 uses
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 -1, ptr %i.a, align 4, !tbaa !16
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !132 ; 3 uses
  %i.as = load ptr, ptr %i.y, align 8, !tbaa !91  ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 2                 ; 3 uses
  %.not = icmp ugt i64 %i.aw, %i.ao
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = sub nuw nsw i64 %i.ap, %i.aw
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr %i.ar, i64 noundef %i.ax, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit unwind label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.ay = icmp ult i64 %i.ap, %i.aw
  br i1 %i.ay, label %bb.l, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ap ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %i.az
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.l
  store ptr %i.az, ptr %i.aq, align 8, !tbaa !132
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit:            ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.l, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.ba = invoke noundef zeroext i8 @_ZNK5arrow9UnionType13max_type_codeEv(ptr noundef nonnull align 8 dereferenceable(120) %i.ae)
          to label %bb.m unwind label %bb.f

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit
  %i.bb = zext i8 %i.ba to i64                    ; 2 uses
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr null, ptr %i.b, align 8, !tbaa !96
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !133 ; 3 uses
  %i.bf = load ptr, ptr %i.x, align 8, !tbaa !95  ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3                 ; 3 uses
  %.not41 = icmp ugt i64 %i.bj, %i.bb
  br i1 %.not41, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = sub nuw nsw i64 %i.bc, %i.bj
  invoke void @_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr %i.be, i64 noundef %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEmRKS2_.exit unwind label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.bl = icmp ult i64 %i.bc, %i.bj
  br i1 %i.bl, label %bb.p, label %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEmRKS2_.exit

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bc ; 2 uses
  %.not.i.i35 = icmp eq ptr %i.be, %i.bm
  br i1 %.not.i.i35, label %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEmRKS2_.exit, label %_ZSt8_DestroyIPPN5arrow12ArrayBuilderES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN5arrow12ArrayBuilderES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.p
  store ptr %i.bm, ptr %i.bd, align 8, !tbaa !133
  br label %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEmRKS2_.exit

_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEmRKS2_.exit: ; preds = %_ZSt8_DestroyIPPN5arrow12ArrayBuilderES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.p, %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.bn = load ptr, ptr %i.l, align 8, !tbaa !51  ; 2 uses
  %i.bo = load ptr, ptr %3, align 8, !tbaa !52    ; 2 uses
  %.not43 = icmp eq ptr %i.bn, %i.bo
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEmRKS2_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  br label %bb.s

bb.q:                                             ; preds = %bb.j
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.ad

bb.r:                                             ; preds = %bb.n
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.ad

._crit_edge:                                      ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEaSERKS2_.exit, %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEmRKS2_.exit
  ret void

bb.s:                                             ; preds = %.lr.ph, %_ZNSt10shared_ptrIN5arrow5FieldEEaSERKS2_.exit
  %i.bs = phi ptr [ %i.bo, %.lr.ph ], [ %i.da, %_ZNSt10shared_ptrIN5arrow5FieldEEaSERKS2_.exit ]
  %i.bt = phi ptr [ %i.bn, %.lr.ph ], [ %i.db, %_ZNSt10shared_ptrIN5arrow5FieldEEaSERKS2_.exit ]
  %.02642 = phi i64 [ 0, %.lr.ph ], [ %i.dm, %_ZNSt10shared_ptrIN5arrow5FieldEEaSERKS2_.exit ] ; 6 uses
  %i.bu = trunc i64 %.02642 to i32
  %sext = shl i64 %.02642, 32
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !110
  %i.bw = ashr exact i64 %sext, 28
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw ; 2 uses
  %i.by = load ptr, ptr %i.k, align 8, !tbaa !110
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %.02642 ; 2 uses
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !136
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !136
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !64 ; 4 uses
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !64 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cd, %i.ce
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow5FieldEEaSERKS2_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not7.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 3 uses
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i37 = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i.i37, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !16
  %i.ci = add nsw i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cf, align 4, !tbaa !16
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cj = atomicrmw volatile add ptr %i.cf, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.cb, align 8, !tbaa !64
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.w, %bb.v, %bb.t
  %i.ck = phi ptr [ %i.ce, %bb.t ], [ %i.ce, %bb.v ], [ %.pr.pre.i.i.i, %bb.w ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 4 uses
  %i.cm = load atomic i64, ptr %i.cl acquire, align 8 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 4294967297
  %i.co = trunc i64 %i.cm to i32                  ; 2 uses
  br i1 %i.cn, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
end_hunk_0
begin_hunk_1_@_ZN5arrow17BasicUnionBuilder11AppendChildERKSt10shared_ptrINS_12ArrayBuilderEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #16
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.pn = phi { ptr, i32 } [ %i.gq, %bb.az ], [ %i.gp, %bb.ay ]
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #16
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #16
  %i.gr = load ptr, ptr %4, align 8, !tbaa !146   ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.cs
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.ba
  %i.gt = load i64, ptr %i.cs, align 8, !tbaa !66
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef signext i8 @_ZN5arrow17BasicUnionBuilder10NextTypeIdEv(ptr noundef nonnull align 8 dereferenceable(312) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !133  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !95   ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  %.promoted = load i8, ptr %i.a, align 8, !tbaa !143 ; 2 uses
  %i.j = sext i8 %.promoted to i64                ; 2 uses
  %i.k = icmp ugt i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.l = phi i64 [ %i.r, %bb.b ], [ %i.j, %bb.a ]
  %i.m = phi i8 [ %i.q, %bb.b ], [ %.promoted, %bb.a ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !96
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEm.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = add i8 %i.m, 1                           ; 3 uses
  store i8 %i.q, ptr %i.a, align 8, !tbaa !143
  %i.r = sext i8 %i.q to i64                      ; 2 uses
  %i.s = icmp ugt i64 %i.i, %i.r
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !132
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !91   ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %.not = icmp eq i64 %i.z, -4
  br i1 %.not, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef 1)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !133 ; 2 uses
  %.pre8 = load ptr, ptr %i.b, align 8, !tbaa !95 ; 2 uses
  %.pre9 = ptrtoint ptr %.pre to i64
  %.pre10 = ptrtoint ptr %.pre8 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %._crit_edge
  store ptr %i.w, ptr %i.u, align 8, !tbaa !132
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.c, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %.pre-phi11 = phi i64 [ %.pre10, %bb.c ], [ %i.g, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  %.pre-phi = phi i64 [ %.pre9, %bb.c ], [ %i.f, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  %i.aa = phi ptr [ %.pre8, %bb.c ], [ %i.e, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.ab = phi ptr [ %.pre, %bb.c ], [ %i.d, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  %i.ac = sub i64 %.pre-phi, %.pre-phi11
  %.not2 = icmp eq i64 %i.ac, -8
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  tail call void @_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1)
  br label %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEm.exit

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %.not.i.i1 = icmp eq ptr %i.ab, %i.aa
  br i1 %.not.i.i1, label %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPPN5arrow12ArrayBuilderES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN5arrow12ArrayBuilderES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.e
  store ptr %i.aa, ptr %i.c, align 8, !tbaa !133
  br label %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEm.exit

_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEm.exit: ; preds = %.lr.ph, %_ZSt8_DestroyIPPN5arrow12ArrayBuilderES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.e, %bb.d
  %storemerge.in = load i8, ptr %i.a, align 8, !tbaa !143 ; 2 uses
  %storemerge = add i8 %storemerge.in, 1
  store i8 %storemerge, ptr %i.a, align 8, !tbaa !143
  ret i8 %storemerge.in
}

declare void @_ZN5arrow5fieldENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_8DataTypeEEbS6_IKNS_16KeyValueMetadataEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.63") align 8, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !73
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !74
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !3
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !3
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !16
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !75

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow17BasicUnionBuilder4typeEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.42") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(312) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.7", align 8     ; 15 uses
  %3 = alloca %"class.std::shared_ptr.63", align 16 ; 7 uses
  %4 = alloca %"class.std::shared_ptr.42", align 8 ; 7 uses
  %5 = alloca %"class.std::vector.7", align 8     ; 7 uses
  %6 = alloca %"class.std::vector.12", align 8    ; 7 uses
  %7 = alloca %"class.std::vector.7", align 8     ; 7 uses
  %8 = alloca %"class.std::vector.12", align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !110  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %i.h = icmp ugt i64 %i.g, 9223372036854775792
  br i1 %i.h, label %.noexc, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %.thread, label %.lr.ph

.thread:                                          ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #18 ; 4 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !110
  %9 = getelementptr i8, ptr %i.k, i64 %i.g       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.g, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %9, ptr %i.m, align 8, !tbaa !111
  store ptr %9, ptr %i.l, align 8, !tbaa !112
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %.thread
  %i.q = phi ptr [ %i.j, %.thread ], [ %i.m, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %i.r = phi ptr [ %i.i, %.thread ], [ %i.l, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %.lcssa100 = phi ptr [ null, %.thread ], [ %i.cg, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %.lcssa = phi ptr [ null, %.thread ], [ %i.ch, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.t = load i32, ptr %i.s, align 8, !tbaa !131
  %.not = icmp eq i32 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 4 uses
  br i1 %.not, label %bb.z, label %bb.af

bb.b:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.w = phi ptr [ %i.k, %.lr.ph ], [ %i.ch, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %.019103 = phi i64 [ 0, %.lr.ph ], [ %i.cf, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %.019103
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !52
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %.019103
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !61 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !63
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.42") align 8 %4, ptr noundef nonnull align 8 dereferenceable(144) %i.ac)
          to label %bb.c unwind label %bb.w

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNK5arrow5Field8WithTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.63") align 8 %3, ptr noundef nonnull align 8 dereferenceable(96) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.d unwind label %bb.x

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %.019103 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load <2 x ptr>, ptr %3, align 16, !tbaa !65
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !64 ; 8 uses
  store <2 x ptr> %i.ai, ptr %i.ag, align 8, !tbaa !65
  %.not.i.i.i.i42 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i42, label %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.ak, align 8, !tbaa !73
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !74
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !63
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #16, !inline_history !249
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !63
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #16, !inline_history !249
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !16
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i = phi i32 [ %i.an, %bb.h ], [ %i.ax, %bb.i ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.j, label %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit, !prof !75

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #16
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit:    ; preds = %bb.d, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.j
  %i.az = load ptr, ptr %i.o, align 8, !tbaa !64  ; 8 uses
  %.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ba, align 8, !tbaa !73
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !74
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !63
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #16, !inline_history !7
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !63
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #16, !inline_history !7
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !16
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.bd, %bb.n ], [ %i.bn, %bb.o ]
  %i.bo = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bo, label %bb.p, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !75

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #16
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p
  %i.bp = load ptr, ptr %i.p, align 8, !tbaa !64  ; 8 uses
  %.not.i.i43 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i43, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 4 uses
  %i.br = load atomic i64, ptr %i.bq acquire, align 8 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 4294967297
  %i.bt = trunc i64 %i.br to i32                  ; 2 uses
  br i1 %i.bs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bq, align 8, !tbaa !73
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 0, ptr %i.bu, align 4, !tbaa !74
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !63
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #16, !inline_history !1
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !63
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #16, !inline_history !1
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i44 = icmp eq i8 %i.cb, 0
  br i1 %.not.i.i.i44, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cc = add nsw i32 %i.bt, -1
  store i32 %i.cc, ptr %i.bq, align 8, !tbaa !16
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i45

bb.u:                                             ; preds = %bb.s
  %i.cd = atomicrmw volatile add ptr %i.bq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i45

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i45: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i46 = phi i32 [ %i.bt, %bb.t ], [ %i.cd, %bb.u ]
  %i.ce = icmp eq i32 %.0.i.i.i.i46, 1
  br i1 %i.ce, label %bb.v, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !75

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i45
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #16
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i45, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.cf = add nuw i64 %.019103, 1                 ; 2 uses
  %i.cg = load ptr, ptr %i.l, align 8, !tbaa !112 ; 2 uses
  %i.ch = load ptr, ptr %2, align 8, !tbaa !110   ; 3 uses
end_hunk_1
