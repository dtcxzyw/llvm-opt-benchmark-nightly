Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/cxx03_test?download=true
inline.NumInlined: 374
inline.NumDeleted: 175
begin_hunk_0_@_Z8BM_emptyRN9benchmark5StateE:bb.a
  %.pre5.pre = load i8, ptr %i.b, align 8, !tbaa !35, !range !36
  br label %bb.b

bb.b:                                             ; preds = %_ZNK9benchmark5State10iterationsEv.exit, %bb.a
  %.pre5 = phi i8 [ %.pre56, %_ZNK9benchmark5State10iterationsEv.exit ], [ %.pre5.pre, %bb.a ] ; 2 uses
  %i.f = phi i64 [ %storemerge, %_ZNK9benchmark5State10iterationsEv.exit ], [ %.pre, %bb.a ] ; 2 uses
  %.not.i = icmp slt i64 %i.f, 1
  br i1 %.not.i, label %bb.c, label %bb.f, !prof !37

bb.c:                                             ; preds = %bb.b
  %i.g = trunc nuw i8 %.pre5 to i1
  br i1 %i.g, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %i.h = load i32, ptr %i.c, align 4, !tbaa !38
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.i = load i64, ptr %0, align 64, !tbaa !34    ; 2 uses
  %.not14.i = icmp slt i64 %i.i, 1
  br i1 %.not14.i, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.pre4 = load i8, ptr %i.b, align 8, !tbaa !35, !range !36
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.b
  %.pre56 = phi i8 [ %.pre5, %bb.b ], [ %.pre4, %._crit_edge ] ; 2 uses
  %storemerge.in = phi i64 [ %i.f, %bb.b ], [ %i.i, %._crit_edge ]
  %storemerge = add nsw i64 %storemerge.in, -1    ; 3 uses
  store i64 %storemerge, ptr %0, align 64, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = trunc nuw i8 %.pre56 to i1
  br i1 %i.j, label %bb.g, label %_ZNK9benchmark5State10iterationsEv.exit, !prof !39

bb.g:                                             ; preds = %bb.f
  %i.k = load i64, ptr %i.d, align 16, !tbaa !40
  %i.l = sub i64 %i.k, %storemerge
  %i.m = load i64, ptr %i.e, align 8, !tbaa !41
  %i.n = add nsw i64 %i.l, %i.m
  br label %_ZNK9benchmark5State10iterationsEv.exit

_ZNK9benchmark5State10iterationsEv.exit:          ; preds = %bb.f, %bb.g
  %.0.i = phi i64 [ %i.n, %bb.g ], [ 0, %bb.f ]
  store volatile i64 %.0.i, ptr %i.a, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.h:                                             ; preds = %bb.e, %bb.d, %bb.c
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef) local_unnamed_addr #0

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: uwtable
define hidden void @_Z26BM_old_arg_range_interfaceRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 32, !tbaa !44  ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %bb.b, label %_ZNK9benchmark5State5rangeEm.exit9

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, i32 noundef 998, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm) #17
  unreachable

_ZNK9benchmark5State5rangeEm.exit9:               ; preds = %bb.a
  %i.i = load i64, ptr %i.d, align 8, !tbaa !42
  switch i64 %i.i, label %.critedge2 [
    i64 1, label %bb.c
    i64 5, label %bb.e
  ]

bb.c:                                             ; preds = %_ZNK9benchmark5State5rangeEm.exit9
  %i.j = icmp ugt i64 %i.h, 1
  br i1 %i.j, label %_ZNK9benchmark5State5rangeEm.exit8, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, i32 noundef 998, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm) #17
  unreachable

_ZNK9benchmark5State5rangeEm.exit8:               ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !42
  %i.m = icmp eq i64 %i.l, 2
  br i1 %i.m, label %.critedge, label %.critedge2

bb.e:                                             ; preds = %_ZNK9benchmark5State5rangeEm.exit9
  %i.n = icmp ugt i64 %i.h, 1
  br i1 %i.n, label %_ZNK9benchmark5State5rangeEm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, i32 noundef 998, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm) #17
  unreachable

_ZNK9benchmark5State5rangeEm.exit:                ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !42
  %i.q = icmp eq i64 %i.p, 6
  br i1 %i.q, label %.critedge, label %.critedge2

.critedge2:                                       ; preds = %_ZNK9benchmark5State5rangeEm.exit9, %_ZNK9benchmark5State5rangeEm.exit8, %_ZNK9benchmark5State5rangeEm.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 27, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26BM_old_arg_range_interfaceRN9benchmark5StateE) #17
  unreachable

.critedge:                                        ; preds = %_ZNK9benchmark5State5rangeEm.exit8, %_ZNK9benchmark5State5rangeEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.pre = load i64, ptr %0, align 64, !tbaa !34
  br label %bb.g

bb.g:                                             ; preds = %_ZN9benchmark5State19KeepRunningInternalElb.exit, %.critedge
  %i.t = phi i64 [ %storemerge, %_ZN9benchmark5State19KeepRunningInternalElb.exit ], [ %.pre, %.critedge ] ; 2 uses
  %.not.i = icmp slt i64 %i.t, 1
  br i1 %.not.i, label %bb.h, label %_ZN9benchmark5State19KeepRunningInternalElb.exit, !prof !37

bb.h:                                             ; preds = %bb.g
  %i.u = load i8, ptr %i.r, align 8, !tbaa !35, !range !36, !noundef !45
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %i.w = load i32, ptr %i.s, align 4, !tbaa !38
  %.not11 = icmp eq i32 %i.w, 0
  br i1 %.not11, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.x = load i64, ptr %0, align 64, !tbaa !34    ; 2 uses
  %.not14.i = icmp slt i64 %i.x, 1
  br i1 %.not14.i, label %bb.k, label %_ZN9benchmark5State19KeepRunningInternalElb.exit

_ZN9benchmark5State19KeepRunningInternalElb.exit: ; preds = %bb.j, %bb.g
  %storemerge.in = phi i64 [ %i.t, %bb.g ], [ %i.x, %bb.j ]
  %storemerge = add nsw i64 %storemerge.in, -1    ; 2 uses
  store i64 %storemerge, ptr %0, align 64, !tbaa !34
  br label %bb.g

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: uwtable
define linkonce_odr hidden noundef ptr @_ZN9benchmark8internal9Benchmark7ArgPairEll(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i:
  %3 = alloca %"class.std::vector", align 8       ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #18
          to label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i4 unwind label %bb.c ; 5 uses

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i4: ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  store i64 %1, ptr %i.c, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !44
  store ptr %i.d, ptr %i.a, align 8, !tbaa !43
  store ptr %i.d, ptr %i.b, align 8, !tbaa !61
  %i.e = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #18
          to label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit12 unwind label %bb.c ; 4 uses

_ZNSt6vectorIlSaIlEE9push_backERKl.exit12:        ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %2, ptr %i.f, align 8, !tbaa !42
  %i.g = load i64, ptr %i.c, align 8, !tbaa !42
  store i64 %i.g, ptr %i.e, align 8, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #19
  store ptr %i.e, ptr %3, align 8, !tbaa !44
  store ptr %i.h, ptr %i.a, align 8, !tbaa !43
  store ptr %i.h, ptr %i.b, align 8, !tbaa !61
  %i.i = invoke noundef ptr @_ZN9benchmark8internal9Benchmark4ArgsERKSt6vectorIlSaIlEE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.a unwind label %bb.c

bb.a:                                             ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit12
  %i.j = load ptr, ptr %3, align 8, !tbaa !44     ; 2 uses
  %.not.i.i.i13 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZdlPv(ptr noundef nonnull %i.j) #19
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret ptr %i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i4, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit12
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %3, align 8, !tbaa !44     ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIlSaIlEED2Ev.exit15, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdlPv(ptr noundef nonnull %i.l) #19
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit15

_ZNSt6vectorIlSaIlEED2Ev.exit15:                  ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %i.k
}

; Function Attrs: uwtable
define linkonce_odr hidden noundef ptr @_ZN9benchmark8internal9Benchmark9RangePairEllll(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt6vectorISt4pairIllESaIS1_EE12_M_check_lenEmPKc.exit.i.i:
  %5 = alloca %"class.std::vector.27", align 8    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.c = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #18
          to label %_ZNKSt6vectorISt4pairIllESaIS1_EE12_M_check_lenEmPKc.exit.i.i12 unwind label %bb.c ; 6 uses

_ZNKSt6vectorISt4pairIllESaIS1_EE12_M_check_lenEmPKc.exit.i.i12: ; preds = %_ZNKSt6vectorISt4pairIllESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  store i64 %1, ptr %i.c, align 8
  %.sroa.635.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %2, ptr %.sroa.635.0..sroa_idx36, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !64
  store ptr %i.d, ptr %i.a, align 8, !tbaa !65
  store ptr %i.d, ptr %i.b, align 8, !tbaa !66
  %i.e = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18
          to label %.lr.ph.i.i.i.i.i.i.i16.preheader unwind label %bb.c ; 6 uses

.lr.ph.i.i.i.i.i.i.i16.preheader:                 ; preds = %_ZNKSt6vectorISt4pairIllESaIS1_EE12_M_check_lenEmPKc.exit.i.i12
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %3, ptr %i.f, align 8
  %.sroa.6.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %4, ptr %.sroa.6.0..sroa_idx31, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #19
  store ptr %i.e, ptr %5, align 8, !tbaa !64
  store ptr %i.g, ptr %i.a, align 8, !tbaa !65
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.h, ptr %i.b, align 8, !tbaa !66
  %i.i = invoke noundef ptr @_ZN9benchmark8internal9Benchmark6RangesERKSt6vectorISt4pairIllESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.a unwind label %bb.c

bb.a:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i16.preheader
  %i.j = load ptr, ptr %5, align 8, !tbaa !64     ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorISt4pairIllESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZdlPv(ptr noundef nonnull %i.j) #19
  br label %_ZNSt6vectorISt4pairIllESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIllESaIS1_EED2Ev.exit:        ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret ptr %i.i

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIllESaIS1_EE12_M_check_lenEmPKc.exit.i.i12, %_ZNKSt6vectorISt4pairIllESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i.i.i16.preheader
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %5, align 8, !tbaa !64     ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorISt4pairIllESaIS1_EED2Ev.exit29, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdlPv(ptr noundef nonnull %i.l) #19
  br label %_ZNSt6vectorISt4pairIllESaIS1_EED2Ev.exit29

_ZNSt6vectorISt4pairIllESaIS1_EED2Ev.exit29:      ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  resume { ptr, i32 } %i.k
}

; Function Attrs: uwtable
define linkonce_odr hidden void @_Z12BM_template2IilEvRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load i64, ptr %0, align 64, !tbaa !34
  %.pre5.pre.i = load i8, ptr %i.b, align 8, !tbaa !35, !range !36
  br label %bb.b

bb.b:                                             ; preds = %_ZNK9benchmark5State10iterationsEv.exit.i, %bb.a
  %.pre5.i = phi i8 [ %.pre56.i, %_ZNK9benchmark5State10iterationsEv.exit.i ], [ %.pre5.pre.i, %bb.a ] ; 2 uses
  %i.f = phi i64 [ %storemerge.i, %_ZNK9benchmark5State10iterationsEv.exit.i ], [ %.pre.i, %bb.a ] ; 2 uses
  %.not.i.i = icmp slt i64 %i.f, 1
  br i1 %.not.i.i, label %bb.c, label %bb.f, !prof !37

bb.c:                                             ; preds = %bb.b
  %i.g = trunc nuw i8 %.pre5.i to i1
  br i1 %i.g, label %_Z8BM_emptyRN9benchmark5StateE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %i.h = load i32, ptr %i.c, align 4, !tbaa !38
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.e, label %_Z8BM_emptyRN9benchmark5StateE.exit

bb.e:                                             ; preds = %bb.d
  %i.i = load i64, ptr %0, align 64, !tbaa !34    ; 2 uses
  %.not14.i.i = icmp slt i64 %i.i, 1
  br i1 %.not14.i.i, label %_Z8BM_emptyRN9benchmark5StateE.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e
  %.pre4.i = load i8, ptr %i.b, align 8, !tbaa !35, !range !36
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %bb.b
  %.pre56.i = phi i8 [ %.pre5.i, %bb.b ], [ %.pre4.i, %._crit_edge.i ] ; 2 uses
  %storemerge.in.i = phi i64 [ %i.f, %bb.b ], [ %i.i, %._crit_edge.i ] ; 2 uses
  %storemerge.i = add nsw i64 %storemerge.in.i, -1 ; 2 uses
  store i64 %storemerge.i, ptr %0, align 64, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = trunc nuw i8 %.pre56.i to i1
  br i1 %i.j, label %bb.g, label %_ZNK9benchmark5State10iterationsEv.exit.i, !prof !39

bb.g:                                             ; preds = %bb.f
  %i.k = load i64, ptr %i.d, align 16, !tbaa !40
  %reass.sub = sub i64 %i.k, %storemerge.in.i
  %i.l = add i64 %reass.sub, 1
  %i.m = load i64, ptr %i.e, align 8, !tbaa !41
  %i.n = add nsw i64 %i.l, %i.m
  br label %_ZNK9benchmark5State10iterationsEv.exit.i

_ZNK9benchmark5State10iterationsEv.exit.i:        ; preds = %bb.g, %bb.f
  %.0.i.i = phi i64 [ %i.n, %bb.g ], [ 0, %bb.f ]
  store volatile i64 %.0.i.i, ptr %i.a, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

_Z8BM_emptyRN9benchmark5StateE.exit:              ; preds = %bb.c, %bb.d, %bb.e
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr hidden void @_Z12BM_template1IlEvRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load i64, ptr %0, align 64, !tbaa !34
  %.pre5.pre.i = load i8, ptr %i.b, align 8, !tbaa !35, !range !36
  br label %bb.b

bb.b:                                             ; preds = %_ZNK9benchmark5State10iterationsEv.exit.i, %bb.a
  %.pre5.i = phi i8 [ %.pre56.i, %_ZNK9benchmark5State10iterationsEv.exit.i ], [ %.pre5.pre.i, %bb.a ] ; 2 uses
  %i.f = phi i64 [ %storemerge.i, %_ZNK9benchmark5State10iterationsEv.exit.i ], [ %.pre.i, %bb.a ] ; 2 uses
  %.not.i.i = icmp slt i64 %i.f, 1
  br i1 %.not.i.i, label %bb.c, label %bb.f, !prof !37

bb.c:                                             ; preds = %bb.b
  %i.g = trunc nuw i8 %.pre5.i to i1
  br i1 %i.g, label %_Z8BM_emptyRN9benchmark5StateE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %i.h = load i32, ptr %i.c, align 4, !tbaa !38
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.e, label %_Z8BM_emptyRN9benchmark5StateE.exit

bb.e:                                             ; preds = %bb.d
  %i.i = load i64, ptr %0, align 64, !tbaa !34    ; 2 uses
  %.not14.i.i = icmp slt i64 %i.i, 1
  br i1 %.not14.i.i, label %_Z8BM_emptyRN9benchmark5StateE.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e
  %.pre4.i = load i8, ptr %i.b, align 8, !tbaa !35, !range !36
  br label %bb.f

end_hunk_0
