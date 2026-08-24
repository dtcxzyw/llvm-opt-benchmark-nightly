Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/transaction_test_util?download=true
inline.NumInlined: 636
inline.NumDeleted: 263
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12
  %i.q = phi i64 [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13 ]
  %.not = icmp ugt i64 %i.e, %i.q
  br i1 %.not, label %bb.d, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14
  %i.r = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !71
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !82   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15

bb.c:                                             ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !73   ; 2 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15: ; preds = %.critedge
  store ptr %i.t, ptr %0, align 8, !tbaa !82
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !75
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !73
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !73
  store ptr %i.u, ptr %i.r, align 8, !tbaa !82
  store i64 0, ptr %i.ab, align 8, !tbaa !73
  store i8 0, ptr %i.u, align 8, !tbaa !75
  br label %bb.l

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.ae = sub i64 9223372036854775807, %i.b
  %i.af = icmp ult i64 %i.ae, %i.d
  br i1 %i.af, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #28
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.d
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ag = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ag)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ah = load i64, ptr %i.g, align 8, !tbaa !75
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ai = phi i64 [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.e, %i.ai
  br i1 %.not.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.d, 1
  br i1 %cond.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = load i8, ptr %.pre, align 1, !tbaa !75
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %.pre, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.b, i64 noundef 0, ptr noundef %.pre, i64 noundef %i.d)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.f, %bb.h, %bb.i, %bb.j
  store i64 %i.e, ptr %i.a, align 8, !tbaa !73
  %i.al = load ptr, ptr %1, align 8, !tbaa !82
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.e
  store i8 0, ptr %i.am, align 1, !tbaa !75
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.an, ptr %0, align 8, !tbaa !71
  %i.ao = load ptr, ptr %1, align 8, !tbaa !82    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.g
  br i1 %i.ap, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !73  ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.as, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.ao, ptr %0, align 8, !tbaa !82
  %i.at = load i64, ptr %i.g, align 8, !tbaa !75
  store i64 %i.at, ptr %i.an, align 8, !tbaa !75
  %.pre18 = load i64, ptr %i.a, align 8, !tbaa !73
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16
  %i.au = phi i64 [ %i.aq, %bb.k ], [ %.pre18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16 ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.au, ptr %i.av, align 8, !tbaa !73
  store ptr %i.g, ptr %1, align 8, !tbaa !82
  store i64 0, ptr %i.a, align 8, !tbaa !73
  store i8 0, ptr %i.g, align 8, !tbaa !75
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17
  ret void
}

declare void @_ZNK7rocksdb5Slice8ToStringB5cxx11Eb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb13RandomShuffleIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEEvT_S8_(ptr %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::mersenne_twister_engine.80", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::random_device", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.a, ptr noundef nonnull align 1 dereferenceable(7) @.str.31, i64 7, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 7, ptr %i.b, align 8, !tbaa !73
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 23
  store i8 0, ptr %i.c, align 1, !tbaa !75
  invoke void @_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(5000) %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %3, align 8, !tbaa !82     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt13random_deviceC2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !75
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #24
  br label %_ZNSt13random_deviceC2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %3, align 8, !tbaa !82     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !75
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i

common.resume:                                    ; preds = %_ZNSt13random_deviceD2Ev.exit4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i ], [ %i.at, %_ZNSt13random_deviceD2Ev.exit4 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume

_ZNSt13random_deviceC2Ev.exit:                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.m = invoke noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000) %4)
          to label %_ZNSt13random_deviceclEv.exit unwind label %bb.h

_ZNSt13random_deviceclEv.exit:                    ; preds = %_ZNSt13random_deviceC2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  store i64 %i.n, ptr %2, align 8, !tbaa !48
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZNSt13random_deviceclEv.exit
  %store_forwarded = phi i64 [ %i.n, %_ZNSt13random_deviceclEv.exit ], [ %i.ao, %bb.e ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %_ZNSt13random_deviceclEv.exit ], [ %i.ap, %bb.e ] ; 6 uses
  %i.o = getelementptr [8 x i8], ptr %2, i64 %.011.i.i.i
  %i.p = lshr i64 %store_forwarded, 30
  %i.q = xor i64 %i.p, %store_forwarded
  %i.r = mul nuw nsw i64 %i.q, 1812433253
  %i.s = add nuw i64 %i.r, %.011.i.i.i            ; 2 uses
  %i.t = and i64 %i.s, 4294967295                 ; 2 uses
  store i64 %i.t, ptr %i.o, align 8, !tbaa !48
  %i.u = add nuw nsw i64 %.011.i.i.i, 1           ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %2, i64 %i.u
  %i.w = lshr i64 %i.t, 30
  %i.x = xor i64 %i.w, %i.s
  %i.y = mul i64 %i.x, 1812433253
  %i.z = add i64 %i.y, %i.u                       ; 2 uses
  %i.aa = and i64 %i.z, 4294967295                ; 2 uses
  store i64 %i.aa, ptr %i.v, align 8, !tbaa !48
  %i.ab = add nuw nsw i64 %.011.i.i.i, 2          ; 2 uses
  %i.ac = getelementptr [8 x i8], ptr %2, i64 %i.ab
  %i.ad = lshr i64 %i.aa, 30
  %i.ae = xor i64 %i.ad, %i.z
  %i.af = mul i64 %i.ae, 1812433253
  %i.ag = add i64 %i.af, %i.ab                    ; 2 uses
  %i.ah = and i64 %i.ag, 4294967295               ; 2 uses
  store i64 %i.ah, ptr %i.ac, align 8, !tbaa !48
  %i.ai = add nuw nsw i64 %.011.i.i.i, 3          ; 3 uses
  %exitcond.not.i.i.i.2 = icmp eq i64 %i.ai, 624
  br i1 %exitcond.not.i.i.i.2, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr [8 x i8], ptr %2, i64 %i.ai
  %i.ak = lshr i64 %i.ah, 30
  %i.al = xor i64 %i.ak, %i.ag
  %i.am = mul i64 %i.al, 1812433253
  %i.an = add i64 %i.am, %i.ai
  %i.ao = and i64 %i.an, 4294967295               ; 2 uses
  store i64 %i.ao, ptr %i.aj, align 8, !tbaa !48
  %i.ap = add nuw nsw i64 %.011.i.i.i, 4
  br label %bb.d

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i: ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 4992
  store i64 624, ptr %i.aq, align 8, !tbaa !160
  invoke void @_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_SA_OT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(5000) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %4)
          to label %_ZNSt13random_deviceD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #22
  unreachable

_ZNSt13random_deviceD2Ev.exit:                    ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.h:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i, %_ZNSt13random_deviceC2Ev.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %4)
          to label %_ZNSt13random_deviceD2Ev.exit4 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #22
  unreachable

_ZNSt13random_deviceD2Ev.exit4:                   ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %common.resume
}

declare void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

declare void @_ZN7rocksdb3LogENS_12InfoLogLevelERKSt10shared_ptrINS_6LoggerEEPKcz(i8 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb9DBOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(753) dereferenceable(753) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !75
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !162  ; 8 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7rocksdb17CompactionServiceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !163
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !165
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !57
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #23, !inline_history !166
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !57
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #23, !inline_history !166
  br label %_ZNSt12__shared_ptrIN7rocksdb17CompactionServiceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !159
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZNSt12__shared_ptrIN7rocksdb17CompactionServiceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !154

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #23
  br label %_ZNSt12__shared_ptrIN7rocksdb17CompactionServiceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7rocksdb17CompactionServiceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !82   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt12__shared_ptrIN7rocksdb17CompactionServiceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !75
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt12__shared_ptrIN7rocksdb17CompactionServiceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !162 ; 8 uses
  %.not.i.i4 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i4, label %_ZNSt12__shared_ptrIN7rocksdb22FileChecksumGenFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.af, align 8, !tbaa !163
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !165
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !57
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #23, !inline_history !167
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !57
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #23, !inline_history !167
  br label %_ZNSt12__shared_ptrIN7rocksdb22FileChecksumGenFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i.i.i5 = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i5, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !159
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6

bb.l:                                             ; preds = %bb.j
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i7 = phi i32 [ %i.ai, %bb.k ], [ %i.as, %bb.l ]
  %i.at = icmp eq i32 %.0.i.i.i.i7, 1
  br i1 %i.at, label %bb.m, label %_ZNSt12__shared_ptrIN7rocksdb22FileChecksumGenFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !154
end_hunk_0
