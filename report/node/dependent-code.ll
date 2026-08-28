Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/dependent-code?download=true
inline.NumInlined: 1117
inline.NumDeleted: 402
begin_hunk_0_@_ZN2v88internal13DependentCode17InstallDependencyEPNS0_7IsolateENS0_6HandleINS0_4CodeEEENS4_INS0_10HeapObjectEEENS_4base5FlagsINS1_15DependencyGroupEjjEE:bb.a

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.r, %bb.d ], [ %i.n, %bb.c ] ; 5 uses
  %i.s = ptrtoint ptr %.0.i to i64
  %i.t = add i64 %i.s, 8
  %i.u = inttoptr i64 %i.t to ptr
  store ptr %i.u, ptr %i.m, align 8
  store i64 %i.l, ptr %.0.i, align 8
  %i.v = call ptr @_ZN2v88internal13DependentCode14InsertWeakCodeEPNS0_7IsolateENS0_6HandleIS1_EENS_4base5FlagsINS1_15DependencyGroupEjjEENS0_12DirectHandleINS0_4CodeEEE(ptr noundef nonnull %0, ptr nonnull %.0.i, i32 %3, ptr %1) ; 4 uses
  %i.w = icmp eq ptr %i.v, %.0.i
  br i1 %i.w, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.x = icmp eq ptr %i.v, null
  br i1 %i.x, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread28, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit: ; preds = %bb.e
  %i.y = load i64, ptr %i.v, align 8
  %i.z = load i64, ptr %.0.i, align 8
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread28

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread28: ; preds = %bb.e, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit
  call void @_ZN2v88internal13DependentCode16SetDependentCodeENS0_12DirectHandleINS0_10HeapObjectEEENS2_IS1_EE(ptr nonnull %2, ptr %i.v)
  br label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread28, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal12StdoutStreamC1Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  tail call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i8 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 313
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr @stdout, align 8
  tail call void @_ZN2v88internal8OFStreamC2EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN2v88internal12StdoutStreamE, i64 8), ptr noundef %i.f) #16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = tail call noundef ptr @_ZN2v88internal12StdoutStream14GetStdoutMutexEv() #16 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8
  tail call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #16
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal12StdoutStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN2v88internal12StdoutStreamD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #16
  br label %_ZN2v88internal12StdoutStreamD2Ev.exit

_ZN2v88internal12StdoutStreamD2Ev.exit:           ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #16
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_121PrintDependencyGroupsENS_4base5FlagsINS0_13DependentCode15DependencyGroupEjjEE(i32 %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.v8::internal::StdoutStream", align 16 ; 14 uses
  %2 = alloca %"class.v8::internal::StdoutStream", align 16 ; 14 uses
  %.not9 = icmp eq i32 %0, 0
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 313
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 313
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal12StdoutStreamD1Ev.exit4, %.lr.ph
  %.sroa.05.010 = phi i32 [ %0, %.lr.ph ], [ %i.y, %_ZN2v88internal12StdoutStreamD1Ev.exit4 ] ; 2 uses
  %i.o = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.05.010, i1 true) ; 3 uses
  %i.p = shl nuw nsw i32 1, %i.o
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.a, align 8
  store ptr null, ptr %i.b, align 16
  store i8 0, ptr %i.c, align 8
  store i8 0, ptr %i.d, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.q = load ptr, ptr @stdout, align 8
  call void @_ZN2v88internal8OFStreamC2EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN2v88internal12StdoutStreamE, i64 8), ptr noundef %i.q) #16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %1, align 16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.a, align 8
  %i.r = call noundef ptr @_ZN2v88internal12StdoutStream14GetStdoutMutexEv() #16 ; 2 uses
  store ptr %i.r, ptr %i.f, align 16
  call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #16
  %i.s = icmp samesign ult i32 %i.o, 11
  br i1 %i.s, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #15
  unreachable

switch.lookup:                                    ; preds = %bb.b
  %i.t = zext nneg i32 %i.o to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal13DependentCode19DependencyGroupNameENS1_15DependencyGroupE, i64 %i.t
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.u = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %switch.load) #16
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %switch.load, i64 noundef %i.u) #16 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %1, align 16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.a, align 8
  %i.w = load ptr, ptr %i.f, align 16             ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZN2v88internal12StdoutStreamD1Ev.exit, label %bb.d

bb.d:                                             ; preds = %switch.lookup
  call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #16, !inline_history !77
  br label %_ZN2v88internal12StdoutStreamD1Ev.exit

_ZN2v88internal12StdoutStreamD1Ev.exit:           ; preds = %switch.lookup, %bb.d
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.a, align 8
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %1, align 16
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #16, !inline_history !77
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #16, !inline_history !77
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  %i.x = xor i32 %i.p, -1
  %i.y = and i32 %.sroa.05.010, %i.x              ; 2 uses
  %cond = icmp eq i32 %i.y, 0
  br i1 %cond, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal12StdoutStreamD1Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.h) #16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  store ptr null, ptr %i.i, align 16
  store i8 0, ptr %i.j, align 8
  store i8 0, ptr %i.k, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.l, i8 0, i64 32, i1 false)
  %i.z = load ptr, ptr @stdout, align 8
  call void @_ZN2v88internal8OFStreamC2EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN2v88internal12StdoutStreamE, i64 8), ptr noundef %i.z) #16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %2, align 16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.h, align 8
  %i.aa = call noundef ptr @_ZN2v88internal12StdoutStream14GetStdoutMutexEv() #16 ; 2 uses
  store ptr %i.aa, ptr %i.m, align 16
  call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #16
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull @.str.16, i64 noundef 1) #16 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %2, align 16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.h, align 8
  %i.ac = load ptr, ptr %i.m, align 16            ; 2 uses
  %.not.i.i.i3 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i3, label %_ZN2v88internal12StdoutStreamD1Ev.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #16, !inline_history !77
  br label %_ZN2v88internal12StdoutStreamD1Ev.exit4

_ZN2v88internal12StdoutStreamD1Ev.exit4:          ; preds = %bb.e, %bb.f
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.h, align 8
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %2, align 16
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #16, !inline_history !77
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.h) #16, !inline_history !77
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2v88internal12StdoutStreamD1Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal13DependentCode14InsertWeakCodeEPNS0_7IsolateENS0_6HandleIS1_EENS_4base5FlagsINS1_15DependencyGroupEjjEENS0_12DirectHandleINS0_4CodeEEE(ptr noundef %0, ptr %1, i32 %2, ptr nofree readonly captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.35", align 8 ; 4 uses
  %i.a = load i64, ptr %1, align 8                ; 4 uses
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = lshr i64 %i.d, 32                        ; 4 uses
  %i.f = trunc nuw i64 %i.e to i32                ; 3 uses
  %i.g = add i64 %i.a, 7
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8
  %i.j = lshr i64 %i.i, 32
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store i64 %i.a, ptr %4, align 8
  %i.l = icmp eq i64 %i.e, 0
  br i1 %i.l, label %"_ZN2v88internal13DependentCode17IterateAndCompactIZNS1_14InsertWeakCodeEPNS0_7IsolateENS0_6HandleIS1_EENS_4base5FlagsINS1_15DependencyGroupEjjEENS0_12DirectHandleINS0_4CodeEEEE3$_0EEvNS0_17IsolateForSandboxERKT_.exit", label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.m = icmp sgt i32 %i.f, 1
  br i1 %i.m, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.n = add i64 %i.a, 23                         ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.e
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ %i.e, %.lr.ph.i.preheader ] ; 3 uses
  %.012.i = phi i32 [ %.2.i, %bb.e ], [ %i.f, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -2 ; 3 uses
  %i.o = shl nsw i64 %indvars.iv.next.i, 3
  %i.p = add i64 %i.n, %i.o
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8 ; 2 uses
  %i.s = and i64 %i.r, 4294967295
  %i.t = icmp eq i64 %i.s, 3
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.u = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.v = call noundef i32 @_ZN2v88internal13DependentCode17FillEntryFromBackEii(ptr noundef nonnull readonly align 8 dereferenceable(8) %4, i32 noundef %i.u, i32 noundef %.012.i)
  br label %bb.e, !llvm.loop !78

bb.d:                                             ; preds = %.lr.ph.i
  %i.w = and i64 %i.r, -3
  %i.x = add i64 %i.w, 7
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load atomic volatile i64, ptr %i.y acquire, align 8 ; 0 uses
  %i.aa = shl nsw i64 %indvars.iv.i, 3
  %i.ab = add nsw i64 %i.aa, 4294967288
  %i.ac = and i64 %i.ab, 4294967288
  %i.ad = add i64 %i.n, %i.ac
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.2.i = phi i32 [ %i.v, %bb.c ], [ %.012.i, %bb.d ] ; 2 uses
  %i.ag = icmp samesign ugt i64 %indvars.iv.i, 3
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e, %.preheader.i
  %.0.lcssa.i = phi i32 [ %i.f, %.preheader.i ], [ %.2.i, %bb.e ]
  %i.ah = sext i32 %.0.lcssa.i to i64
  %i.ai = shl nsw i64 %i.ah, 32
  store atomic volatile i64 %i.ai, ptr %i.c monotonic, align 8
  br label %"_ZN2v88internal13DependentCode17IterateAndCompactIZNS1_14InsertWeakCodeEPNS0_7IsolateENS0_6HandleIS1_EENS_4base5FlagsINS1_15DependencyGroupEjjEENS0_12DirectHandleINS0_4CodeEEEE3$_0EEvNS0_17IsolateForSandboxERKT_.exit"

"_ZN2v88internal13DependentCode17IterateAndCompactIZNS1_14InsertWeakCodeEPNS0_7IsolateENS0_6HandleIS1_EENS_4base5FlagsINS1_15DependencyGroupEjjEENS0_12DirectHandleINS0_4CodeEEEE3$_0EEvNS0_17IsolateForSandboxERKT_.exit": ; preds = %bb.b, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.f

bb.f:                                             ; preds = %"_ZN2v88internal13DependentCode17IterateAndCompactIZNS1_14InsertWeakCodeEPNS0_7IsolateENS0_6HandleIS1_EENS_4base5FlagsINS1_15DependencyGroupEjjEENS0_12DirectHandleINS0_4CodeEEEE3$_0EEvNS0_17IsolateForSandboxERKT_.exit", %bb.a
  %i.aj = load i64, ptr %3, align 8
  %i.ak = add i64 %i.aj, 23
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i64, ptr %i.al, align 8
  %i.an = or i64 %i.am, 3                         ; 3 uses
  %i.ao = and i64 %i.an, 4294967295
  %.not = icmp eq i64 %i.ao, 3
  br i1 %.not, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = and i64 %i.an, -3
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = icmp eq ptr %i.ar, %i.at
  br i1 %i.au, label %bb.h, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i, !prof !76

bb.h:                                             ; preds = %bb.g
  %i.av = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #16
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i: ; preds = %bb.h, %bb.g
  %.0.i.i = phi ptr [ %i.av, %bb.h ], [ %i.ar, %bb.g ] ; 3 uses
  %i.aw = ptrtoint ptr %.0.i.i to i64
  %i.ax = add i64 %i.aw, 8
  %i.ay = inttoptr i64 %i.ax to ptr
  store ptr %i.ay, ptr %i.aq, align 8
  store i64 %i.ap, ptr %.0.i.i, align 8
  br label %_ZN2v88internal23MaybeObjectDirectHandleC2ENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEEPNS0_7IsolateE.exit

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = icmp eq ptr %i.ba, %i.bc
  br i1 %i.bd, label %bb.i, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !76

bb.i:                                             ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i
  %i.be = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #16
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.i, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i
  %.0.i.i.i = phi ptr [ %i.be, %bb.i ], [ %i.ba, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i ] ; 3 uses
  %i.bf = ptrtoint ptr %.0.i.i.i to i64
  %i.bg = add i64 %i.bf, 8
  %i.bh = inttoptr i64 %i.bg to ptr
  store ptr %i.bh, ptr %i.az, align 8
  store i64 %i.an, ptr %.0.i.i.i, align 8
  br label %_ZN2v88internal23MaybeObjectDirectHandleC2ENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEEPNS0_7IsolateE.exit

_ZN2v88internal23MaybeObjectDirectHandleC2ENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %storemerge18.i = phi ptr [ %.0.i.i.i, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %.0.i.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i ]
  %storemerge.i = phi i32 [ 1, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ 0, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i ]
  %i.bi = sext i32 %2 to i64
  %i.bj = shl nsw i64 %i.bi, 32
  %i.bk = tail call ptr @_ZN2v88internal13WeakArrayList8AddToEndEPNS0_7IsolateENS0_6HandleIS1_EENS0_23MaybeObjectDirectHandleENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull %0, ptr nonnull %1, i32 %storemerge.i, ptr nonnull %storemerge18.i, i64 %i.bj) #16
  ret ptr %i.bk
}

declare ptr @_ZN2v88internal13WeakArrayList8AddToEndEPNS0_7IsolateENS0_6HandleIS1_EENS0_23MaybeObjectDirectHandleENS0_6TaggedINS0_3SmiEEE(ptr noundef, ptr, i32, ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal13DependentCode25MarkCodeForDeoptimizationEPNS0_7IsolateENS_4base5FlagsINS1_15DependencyGroupEjjEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.40", align 8 ; 4 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i.i, 15
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = lshr i64 %i.c, 32                        ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %"_ZN2v88internal13DependentCode17IterateAndCompactIZNS1_25MarkCodeForDeoptimizationEPNS0_7IsolateENS_4base5FlagsINS1_15DependencyGroupEjjEEE3$_0EEvNS0_17IsolateForSandboxERKT_.exit", label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.f = trunc nuw i64 %i.d to i32                ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %"_ZZN2v88internal13DependentCode25MarkCodeForDeoptimizationEPNS0_7IsolateENS_4base5FlagsINS1_15DependencyGroupEjjEEENK3$_0clENS0_6TaggedINS0_4CodeEEES7_.exit.i"
  %.1 = phi i1 [ %.3, %"_ZZN2v88internal13DependentCode25MarkCodeForDeoptimizationEPNS0_7IsolateENS_4base5FlagsINS1_15DependencyGroupEjjEEENK3$_0clENS0_6TaggedINS0_4CodeEEES7_.exit.i" ], [ false, %.preheader.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %"_ZZN2v88internal13DependentCode25MarkCodeForDeoptimizationEPNS0_7IsolateENS_4base5FlagsINS1_15DependencyGroupEjjEEENK3$_0clENS0_6TaggedINS0_4CodeEEES7_.exit.i" ], [ %i.d, %.preheader.i ] ; 3 uses
  %.031.i = phi i32 [ %.2.i, %"_ZZN2v88internal13DependentCode25MarkCodeForDeoptimizationEPNS0_7IsolateENS_4base5FlagsINS1_15DependencyGroupEjjEEENK3$_0clENS0_6TaggedINS0_4CodeEEES7_.exit.i" ], [ %i.f, %.preheader.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -2 ; 3 uses
  %i.h = shl nsw i64 %indvars.iv.next.i, 3
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %0, align 8
  %4 = add nuw nsw i64 %i.h, 23
  %i.i = add i64 %4, %.sroa.0.0.copyload.i.i.i.i
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8 ; 2 uses
  %i.l = and i64 %i.k, 4294967295
  %i.m = icmp eq i64 %i.l, 3
  br i1 %i.m, label %"_ZZN2v88internal13DependentCode25MarkCodeForDeoptimizationEPNS0_7IsolateENS_4base5FlagsINS1_15DependencyGroupEjjEEENK3$_0clENS0_6TaggedINS0_4CodeEEES7_.exit.sink.split.i", label %bb.b, !llvm.loop !80

bb.b:                                             ; preds = %.lr.ph.i
  %i.n = and i64 %i.k, -3
  %i.o = add i64 %i.n, 7
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = shl nsw i64 %indvars.iv.i, 3
  %i.s = add nsw i64 %i.r, 4294967288
  %.sroa.0.0.copyload.i.i.i18.i = load i64, ptr %0, align 8
  %i.t = and i64 %i.s, 4294967288
  %i.u = add nuw nsw i64 %i.t, 23
  %i.v = add i64 %i.u, %.sroa.0.0.copyload.i.i.i18.i
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8 ; 2 uses
  %i.y = and i64 %i.x, 1
  %i.z = icmp eq i64 %i.y, 0
  call void @llvm.assume(i1 %i.z)
  %i.aa = lshr i64 %i.x, 32
  %i.ab = trunc nuw i64 %i.aa to i32
  %i.ac = and i32 %2, %i.ab                       ; 2 uses
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %"_ZZN2v88internal13DependentCode25MarkCodeForDeoptimizationEPNS0_7IsolateENS_4base5FlagsINS1_15DependencyGroupEjjEEENK3$_0clENS0_6TaggedINS0_4CodeEEES7_.exit.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = add i64 %i.q, 51
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load atomic volatile i32, ptr %i.ae monotonic, align 4
  %i.ag = and i32 %i.af, 64
  %.not.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i, label %bb.d, label %"_ZZN2v88internal13DependentCode25MarkCodeForDeoptimizationEPNS0_7IsolateENS_4base5FlagsINS1_15DependencyGroupEjjEEENK3$_0clENS0_6TaggedINS0_4CodeEEES7_.exit.sink.split.i"

bb.d:                                             ; preds = %bb.c
  %i.ah = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ac, i1 true) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store i64 %i.q, ptr %3, align 8
  %i.ai = icmp samesign ult i32 %i.ah, 11
  br i1 %i.ai, label %switch.lookup, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #15
  unreachable

switch.lookup:                                    ; preds = %bb.d
  %i.aj = zext nneg i32 %i.ah to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal13DependentCode32DependencyGroupToLazyDeoptReasonENS1_15DependencyGroupE, i64 %i.aj
  %switch.load = load i8, ptr %switch.gep, align 1
  call void @_ZN2v88internal4Code26SetMarkedForDeoptimizationEPNS0_7IsolateENS0_20LazyDeoptimizeReasonE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1, i8 noundef zeroext %switch.load) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %"_ZZN2v88internal13DependentCode25MarkCodeForDeoptimizationEPNS0_7IsolateENS_4base5FlagsINS1_15DependencyGroupEjjEEENK3$_0clENS0_6TaggedINS0_4CodeEEES7_.exit.sink.split.i"

"_ZZN2v88internal13DependentCode25MarkCodeForDeoptimizationEPNS0_7IsolateENS_4base5FlagsINS1_15DependencyGroupEjjEEENK3$_0clENS0_6TaggedINS0_4CodeEEES7_.exit.sink.split.i": ; preds = %switch.lookup, %bb.c, %.lr.ph.i
  %.2 = phi i1 [ %.1, %.lr.ph.i ], [ true, %switch.lookup ], [ %.1, %bb.c ]
  %i.ak = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.al = call noundef i32 @_ZN2v88internal13DependentCode17FillEntryFromBackEii(ptr noundef nonnull readonly align 8 dereferenceable(8) %0, i32 noundef %i.ak, i32 noundef %.031.i)
  br label %"_ZZN2v88internal13DependentCode25MarkCodeForDeoptimizationEPNS0_7IsolateENS_4base5FlagsINS1_15DependencyGroupEjjEEENK3$_0clENS0_6TaggedINS0_4CodeEEES7_.exit.i"

"_ZZN2v88internal13DependentCode25MarkCodeForDeoptimizationEPNS0_7IsolateENS_4base5FlagsINS1_15DependencyGroupEjjEEENK3$_0clENS0_6TaggedINS0_4CodeEEES7_.exit.i": ; preds = %"_ZZN2v88internal13DependentCode25MarkCodeForDeoptimizationEPNS0_7IsolateENS_4base5FlagsINS1_15DependencyGroupEjjEEENK3$_0clENS0_6TaggedINS0_4CodeEEES7_.exit.sink.split.i", %bb.b
  %.3 = phi i1 [ %.2, %"_ZZN2v88internal13DependentCode25MarkCodeForDeoptimizationEPNS0_7IsolateENS_4base5FlagsINS1_15DependencyGroupEjjEEENK3$_0clENS0_6TaggedINS0_4CodeEEES7_.exit.sink.split.i" ], [ %.1, %bb.b ] ; 2 uses
  %.2.i = phi i32 [ %i.al, %"_ZZN2v88internal13DependentCode25MarkCodeForDeoptimizationEPNS0_7IsolateENS_4base5FlagsINS1_15DependencyGroupEjjEEENK3$_0clENS0_6TaggedINS0_4CodeEEES7_.exit.sink.split.i" ], [ %.031.i, %bb.b ] ; 2 uses
  %i.am = icmp samesign ugt i64 %indvars.iv.i, 3
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %"_ZZN2v88internal13DependentCode25MarkCodeForDeoptimizationEPNS0_7IsolateENS_4base5FlagsINS1_15DependencyGroupEjjEEENK3$_0clENS0_6TaggedINS0_4CodeEEES7_.exit.i"
  %.sroa.02.0.copyload.i.pre.i = load i64, ptr %0, align 8
  %.pre.i = add i64 %.sroa.02.0.copyload.i.pre.i, 15
  %.pre35.i = inttoptr i64 %.pre.i to ptr
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.0 = phi i1 [ %.3, %._crit_edge.loopexit.i ], [ false, %.preheader.i ]
  %.pre-phi36.i = phi ptr [ %.pre35.i, %._crit_edge.loopexit.i ], [ %i.b, %.preheader.i ]
  %.0.lcssa.i = phi i32 [ %.2.i, %._crit_edge.loopexit.i ], [ %i.f, %.preheader.i ]
  %i.an = sext i32 %.0.lcssa.i to i64
  %i.ao = shl nsw i64 %i.an, 32
  store atomic volatile i64 %i.ao, ptr %.pre-phi36.i monotonic, align 8
  br label %"_ZN2v88internal13DependentCode17IterateAndCompactIZNS1_25MarkCodeForDeoptimizationEPNS0_7IsolateENS_4base5FlagsINS1_15DependencyGroupEjjEEE3$_0EEvNS0_17IsolateForSandboxERKT_.exit"

"_ZN2v88internal13DependentCode17IterateAndCompactIZNS1_25MarkCodeForDeoptimizationEPNS0_7IsolateENS_4base5FlagsINS1_15DependencyGroupEjjEEE3$_0EEvNS0_17IsolateForSandboxERKT_.exit": ; preds = %bb.a, %._crit_edge.i
  %.4 = phi i1 [ false, %bb.a ], [ %.0, %._crit_edge.i ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal13DependentCode17FillEntryFromBackEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8 ; 2 uses
  %invariant.op = add i64 %.sroa.0.0.copyload.i.i.i, 23
  %i.a = sext i32 %2 to i64                       ; 2 uses
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %indvars.iv.next36 = add nsw i64 %i.a, -2       ; 2 uses
  %i.c = icmp sgt i64 %indvars.iv.next36, %i.b
  br i1 %i.c, label %.lr.ph, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv.next38, -2 ; 2 uses
  %i.d = icmp sgt i64 %indvars.iv.next, %i.b
  br i1 %i.d, label %.lr.ph, label %.loopexit, !llvm.loop !81

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv.next38 = phi i64 [ %indvars.iv.next, %bb.b ], [ %indvars.iv.next36, %bb.a ] ; 4 uses
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %bb.b ], [ %i.a, %bb.a ]
  %i.e = shl nsw i64 %indvars.iv.next38, 3
  %.reass = add i64 %invariant.op, %i.e
  %i.f = inttoptr i64 %.reass to ptr
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8 ; 5 uses
  %i.h = and i64 %i.g, 4294967295
  %i.i = icmp eq i64 %i.h, 3
  br i1 %i.i, label %bb.b, label %bb.c, !llvm.loop !81

bb.c:                                             ; preds = %.lr.ph
  %i.j = trunc nsw i64 %indvars.iv37 to i32
  %i.k = trunc nsw i64 %indvars.iv.next38 to i32
  %i.l = shl i32 %1, 3                            ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = add nsw i64 %i.m, 23                     ; 2 uses
  %i.o = add i64 %.sroa.0.0.copyload.i.i.i, %i.n
  %i.p = inttoptr i64 %i.o to ptr
  store atomic volatile i64 %i.g, ptr %i.p monotonic, align 8
  %.sroa.02.0.copyload.i.i = load i64, ptr %0, align 8 ; 4 uses
  %i.q = add i64 %.sroa.02.0.copyload.i.i, %i.n   ; 2 uses
  %i.r = trunc i64 %i.g to i1
  br i1 %i.r, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.s = and i64 %i.g, -3                         ; 2 uses
  %i.t = and i64 %.sroa.02.0.copyload.i.i, -262144
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i64, ptr %i.u, align 262144         ; 2 uses
  %i.w = and i64 %i.v, 32
  %.not.i.i.i.i = icmp eq i64 %i.w, 0
  %i.x = and i64 %i.v, 25
  %.not38.i.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not38.i.i.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.y = and i64 %i.g, -262144
  %i.z = inttoptr i64 %i.y to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i = load i64, ptr %i.z, align 262144
  %i.aa = and i64 %.sroa.0.0.copyload.i28.i.i.i.i, 25
  %.not39.i.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not39.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %.sroa.02.0.copyload.i.i, i64 noundef %i.q, i64 %i.s) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h, !prof !39

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %.sroa.02.0.copyload.i.i, i64 %i.q, i64 %i.s) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.c
  %i.ab = shl i32 %i.j, 3
  %i.ac = add i32 %i.ab, -8
  %.sroa.0.0.copyload.i.i.i18 = load i64, ptr %0, align 8
  %i.ad = sext i32 %i.ac to i64
  %i.ae = add i64 %.sroa.0.0.copyload.i.i.i18, 23 ; 2 uses
  %i.af = add i64 %i.ae, %i.ad
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load atomic volatile i64, ptr %i.ag monotonic, align 8
  %i.ai = add i32 %i.l, 8
  %i.aj = sext i32 %i.ai to i64
  %i.ak = add i64 %i.ae, %i.aj
  %i.al = inttoptr i64 %i.ak to ptr
  store atomic volatile i64 %i.ah, ptr %i.al monotonic, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.i
  %i.am = phi i32 [ %i.k, %bb.i ], [ %1, %bb.a ], [ %1, %bb.b ]
  ret i32 %i.am
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13DependentCode26DeoptimizeDependencyGroupsEPNS0_7IsolateENS_4base5FlagsINS1_15DependencyGroupEjjEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN2v88internal13DependentCode25MarkCodeForDeoptimizationEPNS0_7IsolateENS_4base5FlagsINS1_15DependencyGroupEjjEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i32 %2)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal11Deoptimizer20DeoptimizeMarkedCodeEPNS0_7IsolateE(ptr noundef %1) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN2v88internal11Deoptimizer20DeoptimizeMarkedCodeEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @_ZN2v88internal13DependentCode20empty_dependent_codeERKNS0_13ReadOnlyRootsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
end_hunk_0
