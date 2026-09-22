Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/OptionParserEmitter?download=true
inline.NumInlined: 2621
inline.NumDeleted: 1091
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL13getOptionNameB5cxx11RKN4llvm6RecordE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.p = load i64, ptr %i.b, align 8, !tbaa !49, !noalias !338 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !109, !alias.scope !338
  %i.r = load ptr, ptr %0, align 8, !tbaa !122, !alias.scope !338
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21, !noalias !338
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.h:                                             ; preds = %bb.a
  %i.t = tail call { ptr, i64 } @_ZNK4llvm6Record16getValueAsStringENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.82, i64 8) #21 ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.t, 0        ; 3 uses
  %i.v = extractvalue { ptr, i64 } %i.t, 1        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %.not.i3 = icmp eq ptr %i.u, null
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !107, !alias.scope !339
  br i1 %.not.i3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !109, !alias.scope !339
  store i8 0, ptr %i.w, align 8, !tbaa !110, !alias.scope !339
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21, !noalias !339
  store i64 %i.v, ptr %i.a, align 8, !tbaa !49, !noalias !339
  %i.y = icmp ugt i64 %i.v, 15
  br i1 %i.y, label %bb.k, label %._crit_edge.i.i.i4

bb.k:                                             ; preds = %bb.j
  %i.z = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #21 ; 2 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !122, !alias.scope !339
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !49, !noalias !339
  store i64 %i.aa, ptr %i.w, align 8, !tbaa !110, !alias.scope !339
  br label %._crit_edge.i.i.i4

._crit_edge.i.i.i4:                               ; preds = %bb.k, %bb.j
  %i.ab = phi ptr [ %i.z, %bb.k ], [ %i.w, %bb.j ] ; 2 uses
  switch i64 %i.v, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i5
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i4
  %i.ac = load i8, ptr %i.u, align 1, !tbaa !110
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !110
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i5

bb.m:                                             ; preds = %._crit_edge.i.i.i4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr nonnull align 1 %i.u, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i5: ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i4
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !49, !noalias !339 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !109, !alias.scope !339
  %i.af = load ptr, ptr %0, align 8, !tbaa !122, !alias.scope !339
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21, !noalias !339
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i5, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(48) ptr @_ZL19writeStrTableOffsetRN4llvm11raw_ostreamERKNS_19StringToOffsetTableENS_9StringRefE(ptr noundef nonnull returned align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(74) %1, ptr %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %2, i64 %3) #21
  %i.b = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(74) %1, ptr %2, i64 %3, i32 noundef %i.a) #21 ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  %i.d = load ptr, ptr %1, align 8, !tbaa !123
  br i1 %i.c, label %_ZNK4llvm19StringToOffsetTable15GetStringOffsetENS_9StringRefE.exit.thread, label %_ZNK4llvm9StringMapIjNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i

_ZNK4llvm9StringMapIjNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i: ; preds = %bb.a
  %i.e = sext i32 %i.b to i64                     ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !124
  %.pre6.i = zext i32 %.pre.i to i64
  %i.f = icmp eq i64 %i.e, %.pre6.i
  br i1 %i.f, label %_ZNK4llvm19StringToOffsetTable15GetStringOffsetENS_9StringRefE.exit.thread, label %_ZNK4llvm19StringToOffsetTable15GetStringOffsetENS_9StringRefE.exit

_ZNK4llvm19StringToOffsetTable15GetStringOffsetENS_9StringRefE.exit: ; preds = %_ZNK4llvm9StringMapIjNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i
  %i.g = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !126
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !40
  %i.k = zext i32 %i.j to i64
  %i.l = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.k) #21 ; 0 uses
  br label %_ZN4llvmlsIjRNS_11raw_ostreamEEES2_S2_RKSt8optionalIT_E.exit

_ZNK4llvm19StringToOffsetTable15GetStringOffsetENS_9StringRefE.exit.thread: ; preds = %bb.a, %_ZNK4llvm9StringMapIjNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i
  %i.m = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvmlsERNS_11raw_ostreamESt9nullopt_t(ptr noundef nonnull align 8 dereferenceable(48) %0) #21 ; 0 uses
  br label %_ZN4llvmlsIjRNS_11raw_ostreamEEES2_S2_RKSt8optionalIT_E.exit

_ZN4llvmlsIjRNS_11raw_ostreamEEES2_S2_RKSt8optionalIT_E.exit: ; preds = %_ZNK4llvm19StringToOffsetTable15GetStringOffsetENS_9StringRefE.exit, %_ZNK4llvm19StringToOffsetTable15GetStringOffsetENS_9StringRefE.exit.thread
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !116
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !117  ; 2 uses
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp ult i64 %i.t, 4
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4llvmlsIjRNS_11raw_ostreamEEES2_S2_RKSt8optionalIT_E.exit
  %i.v = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.83, i64 noundef 4) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %_ZN4llvmlsIjRNS_11raw_ostreamEEES2_S2_RKSt8optionalIT_E.exit
  store i32 539635488, ptr %i.q, align 1
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !117
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store ptr %i.x, ptr %i.p, align 8, !tbaa !117
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %i.y = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream13write_escapedENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %2, i64 %3, i1 noundef zeroext false) #21 ; 0 uses
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !116
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !117 ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = icmp ult i64 %i.ad, 3
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.af = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.84, i64 noundef 3) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit11

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aa, ptr noundef nonnull align 1 dereferenceable(3) @.str.84, i64 3, i1 false)
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !117
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 3
  store ptr %i.ah, ptr %i.p, align 8, !tbaa !117
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit11

_ZN4llvm11raw_ostreamlsEPKc.exit11:               ; preds = %bb.d, %bb.e
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL24emitHelpTextsForVariantsRN4llvm11raw_ostreamESt6vectorISt4pairIS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EENS_9StringRefEESaISD_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 12 uses
  %2 = alloca %"struct.std::pair.172", align 8    ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"struct.std::pair.172", align 8    ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"struct.std::pair.172", align 8    ; 10 uses
  %7 = alloca %"class.llvm::InterleavedRange", align 8 ; 10 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !172    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !172  ; 2 uses
  %.not103112 = icmp eq ptr %i.b, %i.d
  br i1 %.not103112, label %._crit_edge.i.i15.lr.ph, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 17
  br label %bb.b

.preheader:                                       ; preds = %_ZNSt4pairISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEN4llvm9StringRefEED2Ev.exit
  %.pre125.a = load ptr, ptr %i.c, align 8, !tbaa !141
  %.pre126.a = load ptr, ptr %1, align 8, !tbaa !140
  %i.k = icmp eq ptr %.pre125.a, %.pre126.a
  br i1 %i.k, label %._crit_edge.i.i15.lr.ph, label %._crit_edge115

._crit_edge.i.i15.lr.ph:                          ; preds = %bb.a, %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 17
  br label %._crit_edge.i.i15

bb.b:                                             ; preds = %.lr.ph, %_ZNSt4pairISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEN4llvm9StringRefEED2Ev.exit
  %.sroa.098.0113 = phi ptr [ %i.b, %.lr.ph ], [ %i.cr, %_ZNSt4pairISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEN4llvm9StringRefEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.098.0113)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.098.0113, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !160
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !145  ; 3 uses
  %i.v = load ptr, ptr %2, align 8, !tbaa !144    ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp ult i64 %i.y, 33
  br i1 %i.z, label %._crit_edge.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %.lcssa109 = phi ptr [ %i.u, %bb.b ], [ %i.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.lcssa107 = phi ptr [ %i.v, %bb.b ], [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = phi ptr [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.v, %bb.b ] ; 6 uses
  %i.ab = phi ptr [ %i.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %bb.b ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %i.g, ptr %3, align 8, !tbaa !107
  store i8 48, ptr %i.g, align 8, !tbaa !110
  store i64 1, ptr %i.h, align 8, !tbaa !109
  store i8 0, ptr %i.j, align 1, !tbaa !110
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !146
  %.not.i.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !107
  %i.ae = load ptr, ptr %3, align 8, !tbaa !122   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.g
  br i1 %i.af, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ag = load i16, ptr %i.g, align 8
  store i16 %i.ag, ptr %i.ad, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !122
  %i.ah = load i64, ptr %i.g, align 8, !tbaa !110
  store i64 %i.ah, ptr %i.ad, align 8, !tbaa !110
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 1, ptr %i.ai, align 8, !tbaa !109
  store ptr %i.g, ptr %3, align 8, !tbaa !122
  store i64 0, ptr %i.h, align 8, !tbaa !109
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  store ptr %i.aj, ptr %i.f, align 8, !tbaa !145
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ak = ptrtoint ptr %i.ab to i64
  %i.al = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.am = sub i64 %i.ak, %i.al                    ; 3 uses
  %i.an = icmp eq i64 %i.am, 9223372036854775776
  br i1 %i.an, label %bb.f, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #25
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.e
  %i.ao = ashr exact i64 %i.am, 5                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ao, i64 1)
  %i.ap = add nsw i64 %.sroa.speculated.i.i, %i.ao ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ao
  %i.ar = call i64 @llvm.umin.i64(i64 %i.ap, i64 288230376151711743)
  %i.as = select i1 %i.aq, i64 288230376151711743, i64 %i.ar ; 3 uses
  %.not.i.i73 = icmp ne i64 %i.as, 0
  call void @llvm.assume(i1 %.not.i.i73)
  %i.at = shl nuw nsw i64 %i.as, 5
  %i.au = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #22 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.am ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 3 uses
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !107
  %i.ax = load ptr, ptr %3, align 8, !tbaa !122   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.g
  br i1 %i.ay, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

bb.g:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.az = load i64, ptr %i.h, align 8, !tbaa !109 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.bb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !122
  %i.bc = load i64, ptr %i.g, align 8, !tbaa !110
  store i64 %i.bc, ptr %i.aw, align 8, !tbaa !110
  %.pre.i = load i64, ptr %i.h, align 8, !tbaa !109
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74, %bb.g
  %i.bd = phi i64 [ %i.az, %bb.g ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !109
  store ptr %i.g, ptr %3, align 8, !tbaa !122
  store i64 0, ptr %i.h, align 8, !tbaa !109
  store i8 0, ptr %i.g, align 8, !tbaa !110
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i, label %.lr.ph.i.i.i.i75

.lr.ph.i.i.i.i75:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bs, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.br, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.bf, ptr %.012.i.i.i.i, align 8, !tbaa !107, !alias.scope !348, !noalias !349
  %i.bg = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !122, !alias.scope !349, !noalias !348 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i76

bb.h:                                             ; preds = %.lr.ph.i.i.i.i75
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !109, !alias.scope !349, !noalias !348 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 16
  call void @llvm.assume(i1 %i.bl)
  %i.bm = add nuw nsw i64 %i.bk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bf, ptr noundef nonnull align 8 dereferenceable(1) %i.bh, i64 %i.bm, i1 false), !alias.scope !350
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i76: ; preds = %.lr.ph.i.i.i.i75
  store ptr %i.bg, ptr %.012.i.i.i.i, align 8, !tbaa !122, !alias.scope !348, !noalias !349
  %i.bn = load i64, ptr %i.bh, align 8, !tbaa !110, !alias.scope !349, !noalias !348
  store i64 %i.bn, ptr %i.bf, align 8, !tbaa !110, !alias.scope !348, !noalias !349
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !109, !alias.scope !349, !noalias !348
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i76, %bb.h
  %i.bo = phi i64 [ %i.bk, %bb.h ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i76 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.bo, ptr %i.bq, align 8, !tbaa !109, !alias.scope !348, !noalias !349
  store ptr %i.bh, ptr %.0911.i.i.i.i, align 8, !tbaa !122, !alias.scope !349, !noalias !348
  store i64 0, ptr %i.bp, align 8, !tbaa !109, !alias.scope !349, !noalias !348
  store i8 0, ptr %i.bh, align 8, !tbaa !110, !alias.scope !349, !noalias !348
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i77 = icmp eq ptr %i.br, %i.ab
  br i1 %.not.i.i.i.i77, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i, label %.lr.ph.i.i.i.i75, !llvm.loop !9

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ], [ %i.bs, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32 ; 2 uses
  %.not.i27.i = icmp eq ptr %i.aa, null
  br i1 %.not.i27.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i
  %i.bu = load ptr, ptr %i.i, align 8, !tbaa !146
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = sub i64 %i.bv, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.bw) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i
  store ptr %i.au, ptr %2, align 8, !tbaa !144
  store ptr %i.bt, ptr %i.f, align 8, !tbaa !145
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %i.as
  store ptr %i.bx, ptr %i.i, align 8, !tbaa !146
  %.pre = load ptr, ptr %3, align 8, !tbaa !122   ; 2 uses
  %i.by = icmp eq ptr %.pre, %i.g
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.bz = load i64, ptr %i.g, align 8, !tbaa !110
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ca) #23
  %.pre123 = load ptr, ptr %i.f, align 8, !tbaa !145
  %.pre124 = load ptr, ptr %2, align 8, !tbaa !144
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cb = phi ptr [ %.pre124, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.aa, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread ], [ %i.au, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit ] ; 3 uses
  %i.cc = phi ptr [ %.pre123, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.aj, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread ], [ %i.bt, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = icmp ult i64 %i.cf, 33
  br i1 %i.cg, label %._crit_edge.i.i, label %.lr.ph.i.i.i.i.preheader, !llvm.loop !343

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cm, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %.lcssa107, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.ch = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !122 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !110
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cm, %.lcssa109
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %2, align 8, !tbaa !144 ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i1.i.i, label %_ZNSt4pairISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEN4llvm9StringRefEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i
  %i.cn = load ptr, ptr %i.i, align 8, !tbaa !146
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %.pr.i.i to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i.i, i64 noundef %i.cq) #23
  br label %_ZNSt4pairISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEN4llvm9StringRefEED2Ev.exit

_ZNSt4pairISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEN4llvm9StringRefEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.098.0113, i64 40 ; 2 uses
  %.not103 = icmp eq ptr %i.cr, %i.d
  br i1 %.not103, label %.preheader, label %bb.b

._crit_edge.i.i15:                                ; preds = %._crit_edge.i.i15.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %i.l, ptr %5, align 8, !tbaa !107
  store i8 48, ptr %i.l, align 8, !tbaa !110
  store i64 1, ptr %i.m, align 8, !tbaa !109
  store i8 0, ptr %i.s, align 1, !tbaa !110
  %i.cs = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #22 ; 13 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 3 uses
  store ptr %i.ct, ptr %i.cs, align 8, !tbaa !107
  %i.cu = load ptr, ptr %5, align 8, !tbaa !122   ; 2 uses
  %i.cv = load i64, ptr %i.m, align 8, !tbaa !109 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.cv, ptr %i.a, align 8, !tbaa !49
  %i.cw = icmp ugt i64 %i.cv, 15
  br i1 %i.cw, label %bb.k, label %._crit_edge.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %._crit_edge.i.i15
  %i.cx = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #21 ; 2 uses
  store ptr %i.cx, ptr %i.cs, align 8, !tbaa !122
  %i.cy = load i64, ptr %i.a, align 8, !tbaa !49
  store i64 %i.cy, ptr %i.ct, align 8, !tbaa !110
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.k, %._crit_edge.i.i15
  %i.cz = phi ptr [ %i.cx, %bb.k ], [ %i.ct, %._crit_edge.i.i15 ] ; 2 uses
  switch i64 %i.cv, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.da = load i8, ptr %i.cu, align 1, !tbaa !110
  store i8 %i.da, ptr %i.cz, align 1, !tbaa !110
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cz, ptr align 1 %i.cu, i64 %i.cv, i1 false)
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.db = load i64, ptr %i.a, align 8, !tbaa !49  ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !109
  %i.dd = load ptr, ptr %i.cs, align 8, !tbaa !122
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.db
  store i8 0, ptr %i.de, align 1, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.df = getelementptr inbounds nuw i8, ptr %i.cs, i64 32 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cs, i64 48 ; 3 uses
  store ptr %i.dg, ptr %i.df, align 8, !tbaa !107
  %i.dh = load ptr, ptr %5, align 8, !tbaa !122   ; 2 uses
  %i.di = load i64, ptr %i.m, align 8, !tbaa !109 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.di, ptr %i.a, align 8, !tbaa !49
  %i.dj = icmp ugt i64 %i.di, 15
  br i1 %i.dj, label %bb.n, label %._crit_edge.i.i.i.i.i.i.i.i.i.1

bb.n:                                             ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.dk = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.df, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #21 ; 2 uses
  store ptr %i.dk, ptr %i.df, align 8, !tbaa !122
  %i.dl = load i64, ptr %i.a, align 8, !tbaa !49
  store i64 %i.dl, ptr %i.dg, align 8, !tbaa !110
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.1

._crit_edge.i.i.i.i.i.i.i.i.i.1:                  ; preds = %bb.n, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.dm = phi ptr [ %i.dk, %bb.n ], [ %i.dg, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i ] ; 2 uses
  switch i64 %i.di, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.1
  %i.dn = load i8, ptr %i.dh, align 1, !tbaa !110
  store i8 %i.dn, ptr %i.dm, align 1, !tbaa !110
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1

bb.p:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dm, ptr align 1 %i.dh, i64 %i.di, i1 false)
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1

_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1: ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i.i.i.i.i.i.i.1
  %i.do = load i64, ptr %i.a, align 8, !tbaa !49  ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !109
  %i.dq = load ptr, ptr %i.df, align 8, !tbaa !122
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.do
  store i8 0, ptr %i.dr, align 1, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cs, i64 64 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cs, i64 64 ; 2 uses
  store ptr %i.cs, ptr %4, align 8, !tbaa !144
  store ptr %i.ds, ptr %i.n, align 8, !tbaa !145
  store ptr %i.dt, ptr %i.o, align 8, !tbaa !146
  store ptr @.str.8, ptr %i.p, align 8, !tbaa !173
  store i64 0, ptr %i.q, align 8, !tbaa !174
  %i.du = load ptr, ptr %i.c, align 8, !tbaa !141 ; 6 uses
  %i.dv = load ptr, ptr %i.r, align 8, !tbaa !147
  %.not.i.i17 = icmp eq ptr %i.du, %i.dv
  br i1 %.not.i.i17, label %_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEN4llvm9StringRefEESaISB_EE9push_backEOSB_.exit, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i26.thread

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i26.thread: ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  store ptr %i.cs, ptr %i.du, align 8, !tbaa !144
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr %i.ds, ptr %i.dw, align 8, !tbaa !145
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store ptr %i.dt, ptr %i.dx, align 8, !tbaa !146
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 24, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !160
  %i.dz = load ptr, ptr %i.c, align 8, !tbaa !141
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  store ptr %i.ea, ptr %i.c, align 8, !tbaa !141
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEN4llvm9StringRefEESaISB_EE9push_backEOSB_.exit: ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  call void @_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEN4llvm9StringRefEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.du, ptr noundef nonnull align 8 dereferenceable(40) %4)
  %.pre127 = load ptr, ptr %4, align 8, !tbaa !144 ; 3 uses
  %.pre128 = load ptr, ptr %i.n, align 8, !tbaa !145 ; 2 uses
  %.not4.i.i.i.i18 = icmp eq ptr %.pre127, %.pre128
  br i1 %.not4.i.i.i.i18, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i26, label %.lr.ph.i.i.i.i19

.lr.ph.i.i.i.i19:                                 ; preds = %_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEN4llvm9StringRefEESaISB_EE9push_backEOSB_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i22
  %.05.i.i.i.i20 = phi ptr [ %i.eg, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i22 ], [ %.pre127, %_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEN4llvm9StringRefEESaISB_EE9push_backEOSB_.exit ] ; 3 uses
  %i.eb = load ptr, ptr %.05.i.i.i.i20, align 8, !tbaa !122 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i20, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i21: ; preds = %.lr.ph.i.i.i.i19
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !110
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i22

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i22: ; preds = %.lr.ph.i.i.i.i19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i21
  %i.eg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i20, i64 32 ; 2 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.eg, %.pre128
  br i1 %.not.i.i.i.i23, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i24, label %.lr.ph.i.i.i.i19, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i24: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i22
  %.pr.i.i25 = load ptr, ptr %4, align 8, !tbaa !144
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i26

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i26: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i24, %_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEN4llvm9StringRefEESaISB_EE9push_backEOSB_.exit
  %i.eh = phi ptr [ %.pr.i.i25, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i24 ], [ %.pre127, %_ZNSt6vectorISt4pairIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEN4llvm9StringRefEESaISB_EE9push_backEOSB_.exit ] ; 3 uses
  %.not.i.i1.i.i27 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i1.i.i27, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i26
  %i.ei = load ptr, ptr %i.o, align 8, !tbaa !146
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eh to i64
  %i.el = sub i64 %i.ej, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.el) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i26.thread, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i26, %bb.q
  %i.em = load ptr, ptr %5, align 8, !tbaa !122   ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.l
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.eo = load i64, ptr %i.l, align 8, !tbaa !110
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.eq = load ptr, ptr %i.c, align 8, !tbaa !141
  %i.er = load ptr, ptr %1, align 8, !tbaa !140
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %._crit_edge.i.i15, label %._crit_edge115, !llvm.loop !344

._crit_edge115:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %.preheader
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !116
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 21 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !117 ; 2 uses
  %i.ex = ptrtoint ptr %i.eu to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = icmp ult i64 %i.ez, 45
  br i1 %i.fa, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge115
  %i.fb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.86, i64 noundef 45) #21
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.s:                                             ; preds = %._crit_edge115
end_hunk_0
