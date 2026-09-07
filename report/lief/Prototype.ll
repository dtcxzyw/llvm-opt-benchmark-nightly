Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/Prototype?download=true
inline.NumInlined: 87
inline.NumDeleted: 63
begin_hunk_0_@_ZNK4LIEF3DEX9Prototype15parameters_typeEv
define void @_ZNK4LIEF3DEX9Prototype15parameters_typeEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.LIEF::ref_iterator") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.g, 9223372036854775800
  br i1 %i.h, label %bb.c, label %_ZNSt15__new_allocatorIPN4LIEF3DEX4TypeEE8allocateEmPKv.exit.i.i.i.i, !prof !23

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #11
  unreachable

_ZNSt15__new_allocatorIPN4LIEF3DEX4TypeEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #12
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !25  ; 3 uses
  %.pre5 = load ptr, ptr %i.b, align 8, !tbaa !25 ; 2 uses
  %.pre6 = ptrtoint ptr %.pre5 to i64
  %.pre7 = ptrtoint ptr %.pre to i64
  %i.j = icmp eq ptr %.pre5, %.pre
  br label %_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt15__new_allocatorIPN4LIEF3DEX4TypeEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi8 = phi i64 [ %.pre7, %_ZNSt15__new_allocatorIPN4LIEF3DEX4TypeEE8allocateEmPKv.exit.i.i.i.i ], [ %i.f, %bb.a ]
  %.pre-phi = phi i64 [ %.pre6, %_ZNSt15__new_allocatorIPN4LIEF3DEX4TypeEE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ]
  %.not.i.i.i.i.i = phi i1 [ %i.j, %_ZNSt15__new_allocatorIPN4LIEF3DEX4TypeEE8allocateEmPKv.exit.i.i.i.i ], [ true, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %.pre, %_ZNSt15__new_allocatorIPN4LIEF3DEX4TypeEE8allocateEmPKv.exit.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %i.i, %_ZNSt15__new_allocatorIPN4LIEF3DEX4TypeEE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 6 uses
  %i.m = sub i64 %.pre-phi, %.pre-phi8            ; 10 uses
  %i.n = icmp sgt i64 %i.m, 8
  br i1 %i.n, label %bb.d, label %bb.e, !prof !26

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.l, ptr align 8 %i.k, i64 %i.m, i1 false)
  br label %_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EEC2ERKS5_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i
  %i.o = icmp eq i64 %i.m, 8
  br i1 %i.o, label %_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EEC2ERKS5_.exit.thread, label %_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EEC2ERKS5_.exit

_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EEC2ERKS5_.exit: ; preds = %bb.d, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.f

_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EEC2ERKS5_.exit.thread: ; preds = %bb.e
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !27
  store ptr %i.p, ptr %i.l, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %.thread, label %_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i.i

.thread:                                          ; preds = %_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EEC2ERKS5_.exit.thread, %_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EEC2ERKS5_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds i8, ptr null, i64 %i.m ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.r, ptr %i.s, align 8, !tbaa !24
  br label %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit

bb.f:                                             ; preds = %_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EEC2ERKS5_.exit
  %i.t = icmp ugt i64 %i.m, 9223372036854775800
  br i1 %i.t, label %bb.g, label %_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i.i, !prof !29

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #11
  unreachable

_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i.i: ; preds = %_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EEC2ERKS5_.exit.thread, %bb.f
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #12 ; 7 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.w, ptr %i.x, align 8, !tbaa !24
  %i.y = icmp samesign ugt i64 %i.m, 8
  br i1 %i.y, label %bb.h, label %bb.i, !prof !30

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr align 8 %i.l, i64 %i.m, i1 false)
  br label %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i.i
  %i.z = icmp eq i64 %i.m, 8
  br i1 %i.z, label %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit.thread, label %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit

_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit.thread: ; preds = %bb.i
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !27
  store ptr %i.aa, ptr %i.u, align 8, !tbaa !27
  store ptr %i.w, ptr %i.v, align 8, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.u, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.ac, align 8, !tbaa !33
  br label %bb.j

_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit: ; preds = %.thread, %bb.h, %bb.i
  %i.ad = phi ptr [ %i.w, %bb.h ], [ %i.w, %bb.i ], [ %i.r, %.thread ]
  %i.ae = phi ptr [ %i.v, %bb.h ], [ %i.v, %bb.i ], [ %i.q, %.thread ]
  %i.af = phi ptr [ %i.u, %bb.h ], [ %i.u, %bb.i ], [ null, %.thread ]
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !21
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.ah, align 8, !tbaa !33
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit.thread, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.g) #13
  br label %_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EED2Ev.exit:  ; preds = %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ES6_.exit, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4LIEF3DEX9Prototype15parameters_typeEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.LIEF::ref_iterator.43") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.g, 9223372036854775800
  br i1 %i.h, label %bb.c, label %_ZNSt15__new_allocatorIPN4LIEF3DEX4TypeEE8allocateEmPKv.exit.i.i.i.i, !prof !23

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #11
  unreachable

_ZNSt15__new_allocatorIPN4LIEF3DEX4TypeEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #12
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %.pre3 = load ptr, ptr %i.b, align 8, !tbaa !25
  %.pre4 = ptrtoint ptr %.pre3 to i64
  %.pre5 = ptrtoint ptr %.pre to i64
  br label %_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt15__new_allocatorIPN4LIEF3DEX4TypeEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi6 = phi i64 [ %.pre5, %_ZNSt15__new_allocatorIPN4LIEF3DEX4TypeEE8allocateEmPKv.exit.i.i.i.i ], [ %i.f, %bb.a ]
  %.pre-phi = phi i64 [ %.pre4, %_ZNSt15__new_allocatorIPN4LIEF3DEX4TypeEE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ]
  %i.j = phi ptr [ %.pre, %_ZNSt15__new_allocatorIPN4LIEF3DEX4TypeEE8allocateEmPKv.exit.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %i.i, %_ZNSt15__new_allocatorIPN4LIEF3DEX4TypeEE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 6 uses
  %i.l = sub i64 %.pre-phi, %.pre-phi6            ; 4 uses
  %i.m = icmp sgt i64 %i.l, 8
  br i1 %i.m, label %bb.d, label %bb.e, !prof !26

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.k, ptr align 8 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EED2Ev.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EEC2EmRKS4_.exit.i
  %i.n = icmp eq i64 %i.l, 8
  br i1 %i.n, label %bb.f, label %_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !27
  store ptr %i.o, ptr %i.k, align 8, !tbaa !27
  br label %_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EED2Ev.exit:  ; preds = %bb.f, %bb.e, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.g
  %i.q = getelementptr inbounds i8, ptr %i.k, i64 %i.l
  store ptr %i.k, ptr %0, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %i.s, align 8, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.k, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.u, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZNK4LIEF3DEX9Prototype6acceptERNS_7VisitorE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1224
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(40) %0) #10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF3DEXlsERSoRKNS0_9PrototypeE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %"class.LIEF::ref_iterator", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @_ZNK4LIEF3DEX9Prototype15parameters_typeEv(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::ref_iterator") align 8 %2, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF3DEXlsERSoRKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b) #10 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str, i64 noundef 2) #10 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !22     ; 7 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %.not19 = icmp eq ptr %i.f, %i.g
  br i1 %.not19, label %bb.d, label %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit.peel

_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit.peel: ; preds = %bb.c
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.i, %i.h                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 3
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF3DEXlsERSoRKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %.pre) #10 ; 0 uses
  %exitcond.peel.not = icmp eq i64 %i.j, 8
  br i1 %exitcond.peel.not, label %.thread, label %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit.peel22

_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit.peel22: ; preds = %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit.peel
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, i64 noundef 2) #10 ; 0 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF3DEXlsERSoRKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.o) #10 ; 0 uses
  %exitcond.peel25.not = icmp eq i64 %i.j, 16
  br i1 %exitcond.peel25.not, label %.thread, label %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit

.thread:                                          ; preds = %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit.peel, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit.peel22
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 1) #10 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 1) #10 ; 0 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !24
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.v) #13
  br label %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEED2Ev.exit

_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEED2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret ptr %0

_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit: ; preds = %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit.peel22, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit
  %.016 = phi i64 [ %i.aa, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit ], [ 2, %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit.peel22 ] ; 2 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, i64 noundef 2) #10 ; 0 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.g, i64 %.016
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !27
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF3DEXlsERSoRKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.y) #10 ; 0 uses
  %i.aa = add nuw i64 %.016, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %i.k
  br i1 %exitcond.not, label %.thread, label %_ZN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit, !llvm.loop !37
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF3DEXlsERSoRKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4LIEF3DEX9PrototypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #2 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF3DEX9PrototypeE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #13
  br label %_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4LIEF3DEX4TypeESaIS3_EED2Ev.exit:  ; preds = %bb.a, %bb.b
  tail call void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #10
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4LIEF3DEX9PrototypeD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN4LIEF3DEX9PrototypeD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #10
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #13
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK4LIEF6ObjecteqERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4LIEF6ObjectneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %i.d = xor i1 %i.c, true
  ret i1 %i.d
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { builtin nounwind allocsize(0) }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"vtable pointer", !3, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"_ZTSN4LIEF6ObjectE"}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!"p1 _ZTSN4LIEF3DEX4TypeE", !11, i64 0}
!13 = !{!"any p2 pointer", !11, i64 0}
!14 = !{!"p2 _ZTSN4LIEF3DEX4TypeE", !13, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!"_ZTSNSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EE12_Vector_implE", !15, i64 0}
!17 = !{!"_ZTSSt12_Vector_baseIPN4LIEF3DEX4TypeESaIS3_EE", !16, i64 0}
!18 = !{!"_ZTSSt6vectorIPN4LIEF3DEX4TypeESaIS3_EE", !17, i64 0}
!19 = !{!"_ZTSN4LIEF3DEX9PrototypeE", !10, i64 0, !12, i64 8, !18, i64 16}
!20 = !{!19, !12, i64 8}
!21 = !{!15, !14, i64 8}
!22 = !{!15, !14, i64 0}
!23 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!24 = !{!15, !14, i64 16}
!25 = !{!14, !14, i64 0}
!26 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!27 = !{!12, !12, i64 0}
!28 = !{!"long", !4, i64 0}
!29 = !{!"branch_weights", !"expected", i32 1073473, i32 2146410175}
!30 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!31 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKPN4LIEF3DEX4TypeESt6vectorIS4_SaIS4_EEEE", !14, i64 0}
!32 = !{!"_ZTSN4LIEF12ref_iteratorIKSt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEE", !18, i64 0, !31, i64 24, !28, i64 32}
!33 = !{!32, !28, i64 32}
!34 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPPN4LIEF3DEX4TypeESt6vectorIS4_SaIS4_EEEE", !14, i64 0}
!35 = !{!"_ZTSN4LIEF12ref_iteratorISt6vectorIPNS_3DEX4TypeESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEE", !18, i64 0, !34, i64 24, !28, i64 32}
!36 = !{!35, !28, i64 32}
!37 = distinct !{!37, !38, !39}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"llvm.loop.peeled.count", i32 2}
end_hunk_0
