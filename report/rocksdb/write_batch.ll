Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/write_batch?download=true
inline.NumInlined: 3984
inline.NumDeleted: 1401
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7rocksdb18WriteBatchInternal3PutEPNS_10WriteBatchEjRKNS_5SliceES5_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 1, ptr %i.b, align 1, !tbaa !193
  %i.bp = load ptr, ptr %3, align 8, !tbaa !109
  %i.bq = load i64, ptr %i.d, align 8, !tbaa !110
  %i.br = call noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef %i.bp, i64 noundef %i.bq, i64 noundef 0)
  %i.bs = load ptr, ptr %4, align 8, !tbaa !109
  %i.bt = load i64, ptr %i.i, align 8, !tbaa !110
  %i.bu = call noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef %i.bs, i64 noundef %i.bt, i64 noundef -3275615069716884213)
  %i.bv = xor i64 %i.bu, %i.br
  %i.bw = call noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef -6551230139433768426)
  %i.bx = xor i64 %i.bv, %i.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %2, ptr %i.a, align 4, !tbaa !96
  %i.by = call noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 5344283794842014764)
  %i.bz = xor i64 %i.bx, %i.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.bz, ptr %10, align 8
  call void @_ZN7rocksdb10autovectorINS_18ProtectionInfoKVOCImEELm8EE12emplace_backIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(104) %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @_ZN7rocksdb14LocalSavePoint6commitEv(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.d, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb22PutLengthPrefixedSliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5SliceE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110
  %i.d = trunc i64 %i.c to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.e = call noundef ptr @_ZN7rocksdb14EncodeVarint32EPcj(ptr noundef nonnull %i.a, i32 noundef %i.d) ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = sub i64 %i.f, %i.g                       ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !67   ; 5 uses
  %i.k = sub i64 9223372036854775807, %i.j
  %i.l = icmp ult i64 %i.k, %i.h
  br i1 %i.l, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.88) #37
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.m = add i64 %i.h, %i.j                       ; 3 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.q = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.q)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.r = load i64, ptr %i.o, align 8, !tbaa !27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.s = phi i64 [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.m, %i.s
  br i1 %.not.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq ptr %i.e, %i.a
  br i1 %.not8.i.i.i, label %_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.j ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.h, 1
  br i1 %cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = load i8, ptr %i.a, align 1, !tbaa !27
  store i8 %i.u, ptr %i.t, align 1, !tbaa !27
  br label %_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %i.a, i64 %i.h, i1 false)
  br label %_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.j, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.h)
  br label %_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit

_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.m, ptr %i.i, align 8, !tbaa !67
  %i.v = load ptr, ptr %0, align 8, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.m
  store i8 0, ptr %i.w, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.x = load ptr, ptr %1, align 8, !tbaa !109    ; 3 uses
  %i.y = load i64, ptr %i.b, align 8, !tbaa !110  ; 6 uses
  %i.z = load i64, ptr %i.i, align 8, !tbaa !67   ; 5 uses
  %i.aa = sub i64 9223372036854775807, %i.z
  %i.ab = icmp ult i64 %i.aa, %i.y
  br i1 %i.ab, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.h:                                             ; preds = %_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.88) #37
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit
  %i.ac = add i64 %i.z, %i.y                      ; 3 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.o
  br i1 %i.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.af = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.af)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ag = load i64, ptr %i.o, align 8, !tbaa !27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ah = phi i64 [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.ac, %i.ah
  br i1 %.not.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %i.y, 0
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.z ; 2 uses
  %cond.i.i = icmp eq i64 %i.y, 1
  br i1 %cond.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = load i8, ptr %i.x, align 1, !tbaa !27
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.x, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.z, i64 noundef 0, ptr noundef %i.x, i64 noundef %i.y)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.i, %bb.k, %bb.l, %bb.m
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !67
  %i.ak = load ptr, ptr %0, align 8, !tbaa !26
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  store i8 0, ptr %i.al, align 1, !tbaa !27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb10autovectorINS_18ProtectionInfoKVOCImEELm8EE12emplace_backIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !76     ; 3 uses
  %i.b = icmp ult i64 %i.a, 8
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !74
  %i.e = add nuw nsw i64 %i.a, 1
  store i64 %i.e, ptr %0, align 8, !tbaa !76
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.a
  %i.g = load i64, ptr %1, align 8, !tbaa !95
  store i64 %i.g, ptr %i.f, align 8, !tbaa !95
  br label %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !78   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !79
  %.not.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %1, align 8, !tbaa !95
  store i64 %i.m, ptr %i.j, align 8, !tbaa !95
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.n, ptr %i.i, align 8, !tbaa !78
  br label %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !77   ; 9 uses
  %i.p = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64                 ; 4 uses
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.f, label %_ZNKSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.92) #37
  unreachable

_ZNKSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #35 ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  %i.ab = load i64, ptr %1, align 8, !tbaa !95
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !95
  %.not10.i.i.i.i.i = icmp eq ptr %i.o, %i.j
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %2 = ptrtoaddr ptr %i.z to i64
  %i.ac = add i64 %i.p, -8
  %i.ad = sub i64 %i.ac, %i.q                     ; 3 uses
  %i.ae = lshr i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ad, 24
  %3 = sub i64 %i.q, %2
  %diff.check = icmp ugt i64 %3, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %i.ad, 120
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ag = and i64 %i.af, 12
  %n.vec = and i64 %i.af, 4611686018427387888     ; 4 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.z, i64 %i.ah   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.o, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.ak ; 4 uses
  %next.gep7 = getelementptr i8, ptr %i.o, i64 %i.ak ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  %i.al = getelementptr i8, ptr %next.gep7, i64 32
  %i.am = getelementptr i8, ptr %next.gep7, i64 64
  %i.an = getelementptr i8, ptr %next.gep7, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep7, align 8, !tbaa !95, !alias.scope !610, !noalias !609
  %wide.load8 = load <4 x i64>, ptr %i.al, align 8, !tbaa !95, !alias.scope !610, !noalias !609
  %wide.load9 = load <4 x i64>, ptr %i.am, align 8, !tbaa !95, !alias.scope !610, !noalias !609
  %wide.load10 = load <4 x i64>, ptr %i.an, align 8, !tbaa !95, !alias.scope !610, !noalias !609
  %i.ao = getelementptr i8, ptr %next.gep, i64 32
  %i.ap = getelementptr i8, ptr %next.gep, i64 64
  %i.aq = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !95, !alias.scope !609, !noalias !610
  store <4 x i64> %wide.load8, ptr %i.ao, align 8, !tbaa !95, !alias.scope !609, !noalias !610
  store <4 x i64> %wide.load9, ptr %i.ap, align 8, !tbaa !95, !alias.scope !609, !noalias !610
  store <4 x i64> %wide.load10, ptr %i.aq, align 8, !tbaa !95, !alias.scope !609, !noalias !610
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !606

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !196

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %i.af, 4611686018427387900   ; 3 uses
  %i.as = shl i64 %n.vec12, 3                     ; 2 uses
  %i.at = getelementptr i8, ptr %i.z, i64 %i.as   ; 2 uses
  %i.au = getelementptr i8, ptr %i.o, i64 %i.as
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 2 uses
  %i.av = shl i64 %index13, 3                     ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.z, i64 %i.av
  %next.gep15 = getelementptr i8, ptr %i.o, i64 %i.av
  tail call void @llvm.experimental.noalias.scope.decl(metadata !609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  %wide.load16 = load <4 x i64>, ptr %next.gep15, align 8, !tbaa !95, !alias.scope !610, !noalias !609
  store <4 x i64> %wide.load16, ptr %next.gep14, align 8, !tbaa !95, !alias.scope !609, !noalias !610
  %index.next17 = add nuw i64 %index13, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next17, %n.vec12
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !607

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n18 = icmp eq i64 %i.af, %n.vec12
  br i1 %cmp.n18, label %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.z, %iter.check ], [ %i.ai, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.o, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  %i.ax = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !95, !alias.scope !610, !noalias !609
  store i64 %i.ax, ptr %.012.i.i.i.i.i, align 8, !tbaa !95, !alias.scope !609, !noalias !610
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !608

_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNKSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.z, %_ZNKSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.at, %vec.epilog.middle.block ], [ %i.ai, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !79
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.bd) #34
  br label %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.z, ptr %i.h, align 8, !tbaa !77
  store ptr %i.ba, ptr %i.i, align 8, !tbaa !78
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.be, ptr %i.k, align 8, !tbaa !79
  br label %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit: ; preds = %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb14LocalSavePoint6commitEv(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !188    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !59   ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !67   ; 8 uses
  %i.g = icmp ugt i64 %i.f, %i.c
  br i1 %i.g, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !615  ; 6 uses
  %i.j = icmp ult i64 %i.f, %i.i
  br i1 %i.j, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.k = sub nuw i64 %i.i, %i.f                   ; 4 uses
  %i.l = sub i64 9223372036854775807, %i.f
  %i.m = icmp ult i64 %i.l, %i.k
  br i1 %i.m, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.76) #37
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.d
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.q = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.q)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.r = load i64, ptr %i.o, align 8, !tbaa !27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.s = phi i64 [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.i, %i.s
  br i1 %.not.i.i.i.i, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.f, i64 noundef 0, ptr noundef null, i64 noundef %i.k)
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.t = phi ptr [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i ], [ %.pre.i.i, %bb.f ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.f ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.k, 1
  br i1 %cond.i.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  store i8 0, ptr %i.u, align 1, !tbaa !27
  br label %.sink.split.i.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.u, i8 0, i64 %i.k, i1 false)
  br label %.sink.split.i.i

bb.i:                                             ; preds = %bb.c
  %i.v = icmp ult i64 %i.i, %i.f
  br i1 %i.v, label %.sink.split.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

.sink.split.i.i:                                  ; preds = %bb.i, %bb.h, %bb.g
  store i64 %i.i, ptr %i.e, align 8, !tbaa !67
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.i
  store i8 0, ptr %i.x, align 1, !tbaa !27
  %.pre = load ptr, ptr %1, align 8, !tbaa !188
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %bb.i, %.sink.split.i.i
  %i.y = phi ptr [ %i.a, %bb.i ], [ %.pre, %.sink.split.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !616
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 128
end_hunk_0
begin_hunk_1_@_ZNSt17_Function_handlerIFmjEZN7rocksdb12_GLOBAL__N_116MemTableInserter23MarkCommitWithTimestampERKNS1_5SliceES6_EUljE_E9_M_invokeERKSt9_Any_dataOj:bb.a
  %.val.val = load ptr, ptr %i.a, align 8, !tbaa !236
  %i.b = getelementptr i8, ptr %.val.val, i64 112
  %.val.val.val = load ptr, ptr %i.b, align 8, !tbaa !1190
  %i.c = getelementptr i8, ptr %.val.val.val, i64 64
  %.val.val.val.val = load ptr, ptr %i.c, align 8, !tbaa !1191
  %i.d = tail call noundef ptr @_ZNK7rocksdb15ColumnFamilySet15GetColumnFamilyEj(ptr noundef nonnull align 8 dereferenceable(593) %.val.val.val.val, i32 noundef %.val2)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !287
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !140
  ret i64 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFmjEZN7rocksdb12_GLOBAL__N_116MemTableInserter23MarkCommitWithTimestampERKNS1_5SliceES6_EUljE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN7rocksdb12_GLOBAL__N_116MemTableInserter23MarkCommitWithTimestampERKNS1_5SliceES6_EUljE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !1192
  br label %_ZNSt14_Function_base13_Base_managerIZN7rocksdb12_GLOBAL__N_116MemTableInserter23MarkCommitWithTimestampERKNS1_5SliceES6_EUljE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !1194
  br label %_ZNSt14_Function_base13_Base_managerIZN7rocksdb12_GLOBAL__N_116MemTableInserter23MarkCommitWithTimestampERKNS1_5SliceES6_EUljE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8
  store i64 %.val, ptr %0, align 8, !tbaa !496
  br label %_ZNSt14_Function_base13_Base_managerIZN7rocksdb12_GLOBAL__N_116MemTableInserter23MarkCommitWithTimestampERKNS1_5SliceES6_EUljE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN7rocksdb12_GLOBAL__N_116MemTableInserter23MarkCommitWithTimestampERKNS1_5SliceES6_EUljE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare noundef ptr @_ZNK7rocksdb15ColumnFamilySet15GetColumnFamilyEj(ptr noundef nonnull align 8 dereferenceable(593), i32 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIPN7rocksdb8MemTableESt4pairIKS2_NS0_23MemTablePostProcessInfoEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !512
  tail call void @_ZNSt8_Rb_treeIPN7rocksdb8MemTableESt4pairIKS2_NS0_23MemTablePostProcessInfoEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !513  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #34
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1195

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !67   ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #37
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !26     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.k = load i64, ptr %i.h, align 8, !tbaa !27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.d, label %bb.j, !prof !130

bb.d:                                             ; preds = %bb.c
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.u, align 1, !tbaa !27
  store i8 %i.v, ptr %i.t, align 1, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.g, %bb.f, %bb.d
  switch i64 %4, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1, !tbaa !27
  store i8 %i.w, ptr %i.m, align 1, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.c
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.i, %bb.h, %bb.j, %bb.k
  store i64 %i.f, ptr %i.a, align 8, !tbaa !67
  %i.x = load ptr, ptr %0, align 8, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !27
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #28

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb10autovectorINS_18ProtectionInfoKVOCImEELm8EE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !76     ; 3 uses
  %i.b = icmp ult i64 %i.a, 8
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !74
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.a ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !103
  %i.f = add nuw nsw i64 %i.a, 1
  store i64 %i.f, ptr %0, align 8, !tbaa !76
  %i.g = load i64, ptr %1, align 8, !tbaa !95
  store i64 %i.g, ptr %i.e, align 8, !tbaa !95
  br label %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !78   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !79
  %.not.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %1, align 8, !tbaa !95
  store i64 %i.m, ptr %i.j, align 8, !tbaa !95
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.n, ptr %i.i, align 8, !tbaa !78
  br label %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !77   ; 9 uses
  %i.p = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64                 ; 4 uses
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.f, label %_ZNKSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.92) #37
  unreachable

_ZNKSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #35 ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  %i.ab = load i64, ptr %1, align 8, !tbaa !95
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !95
  %.not10.i.i.i.i.i = icmp eq ptr %i.o, %i.j
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %2 = ptrtoaddr ptr %i.z to i64
  %i.ac = add i64 %i.p, -8
  %i.ad = sub i64 %i.ac, %i.q                     ; 3 uses
  %i.ae = lshr i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ad, 24
  %3 = sub i64 %i.q, %2
  %diff.check = icmp ugt i64 %3, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %i.ad, 120
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ag = and i64 %i.af, 12
  %n.vec = and i64 %i.af, 4611686018427387888     ; 4 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.z, i64 %i.ah   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.o, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.ak ; 4 uses
  %next.gep7 = getelementptr i8, ptr %i.o, i64 %i.ak ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  %i.al = getelementptr i8, ptr %next.gep7, i64 32
  %i.am = getelementptr i8, ptr %next.gep7, i64 64
  %i.an = getelementptr i8, ptr %next.gep7, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep7, align 8, !tbaa !95, !alias.scope !1203, !noalias !1202
  %wide.load8 = load <4 x i64>, ptr %i.al, align 8, !tbaa !95, !alias.scope !1203, !noalias !1202
  %wide.load9 = load <4 x i64>, ptr %i.am, align 8, !tbaa !95, !alias.scope !1203, !noalias !1202
  %wide.load10 = load <4 x i64>, ptr %i.an, align 8, !tbaa !95, !alias.scope !1203, !noalias !1202
  %i.ao = getelementptr i8, ptr %next.gep, i64 32
  %i.ap = getelementptr i8, ptr %next.gep, i64 64
  %i.aq = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !95, !alias.scope !1202, !noalias !1203
  store <4 x i64> %wide.load8, ptr %i.ao, align 8, !tbaa !95, !alias.scope !1202, !noalias !1203
  store <4 x i64> %wide.load9, ptr %i.ap, align 8, !tbaa !95, !alias.scope !1202, !noalias !1203
  store <4 x i64> %wide.load10, ptr %i.aq, align 8, !tbaa !95, !alias.scope !1202, !noalias !1203
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !1199

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !196

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %i.af, 4611686018427387900   ; 3 uses
  %i.as = shl i64 %n.vec12, 3                     ; 2 uses
  %i.at = getelementptr i8, ptr %i.z, i64 %i.as   ; 2 uses
  %i.au = getelementptr i8, ptr %i.o, i64 %i.as
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 2 uses
  %i.av = shl i64 %index13, 3                     ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.z, i64 %i.av
  %next.gep15 = getelementptr i8, ptr %i.o, i64 %i.av
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  %wide.load16 = load <4 x i64>, ptr %next.gep15, align 8, !tbaa !95, !alias.scope !1203, !noalias !1202
  store <4 x i64> %wide.load16, ptr %next.gep14, align 8, !tbaa !95, !alias.scope !1202, !noalias !1203
  %index.next17 = add nuw i64 %index13, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next17, %n.vec12
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1200

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n18 = icmp eq i64 %i.af, %n.vec12
  br i1 %cmp.n18, label %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.z, %iter.check ], [ %i.ai, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.o, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  %i.ax = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !95, !alias.scope !1203, !noalias !1202
  store i64 %i.ax, ptr %.012.i.i.i.i.i, align 8, !tbaa !95, !alias.scope !1202, !noalias !1203
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1201

_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNKSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.z, %_ZNKSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.at, %vec.epilog.middle.block ], [ %i.ai, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !79
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.bd) #34
  br label %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.z, ptr %i.h, align 8, !tbaa !77
  store ptr %i.ba, ptr %i.i, align 8, !tbaa !78
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.be, ptr %i.k, align 8, !tbaa !79
  br label %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdaterD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater5PutCFEjRKNS_5SliceES4_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::Status") align 8 captures(none) initializes((0, 6), (8, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.rocksdb::ProtectionInfoKVOC", align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !284 ; 2 uses
  %.val3 = load ptr, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val4 = load i64, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater14UpdateProtInfoEjRKNS_5SliceES4_NS_9ValueTypeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36, !noalias !1208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1208
  store i8 1, ptr %i.b, align 1, !tbaa !193, !noalias !1208
  %i.e = tail call noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef %.val3, i64 noundef %.val4, i64 noundef 0), !noalias !1208
  %i.f = load ptr, ptr %4, align 8, !tbaa !109, !noalias !1208
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !110, !noalias !1208
  %i.i = tail call noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef %i.f, i64 noundef %i.h, i64 noundef -3275615069716884213), !noalias !1208
  %i.j = xor i64 %i.i, %i.e
  %i.k = call noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef -6551230139433768426), !noalias !1208
  %i.l = xor i64 %i.j, %i.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1208
  store i32 %2, ptr %i.a, align 4, !tbaa !96, !noalias !1208
  %i.m = call noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 5344283794842014764), !noalias !1208
  %i.n = xor i64 %i.l, %i.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1208
  store i64 %i.n, ptr %5, align 8, !noalias !1208
  call void @_ZN7rocksdb10autovectorINS_18ProtectionInfoKVOCImEELm8EE12emplace_backIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(104) %.val, ptr noundef nonnull align 8 dereferenceable(8) %5), !noalias !1208
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36, !noalias !1208
  br label %_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater14UpdateProtInfoEjRKNS_5SliceES4_NS_9ValueTypeE.exit

_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater14UpdateProtInfoEjRKNS_5SliceES4_NS_9ValueTypeE.exit: ; preds = %bb.a, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.o, align 8, !tbaa !114, !alias.scope !1209
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !1209
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater10TimedPutCFEjRKNS_5SliceES4_m(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::Status") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4, i64 noundef %5) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.rocksdb::ProtectionInfoKVOC", align 8 ; 4 uses
  %7 = alloca %"struct.rocksdb::SliceParts", align 8 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"struct.std::array.226", align 8   ; 8 uses
  %10 = alloca %"struct.rocksdb::SliceParts", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.c, ptr %8, align 8, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %5, ptr %i.c, align 8
  store i64 8, ptr %i.d, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i8 0, ptr %i.e, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !112
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.c, ptr %i.f, align 8, !tbaa !109
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 8, ptr %i.g, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  store ptr %9, ptr %10, align 8, !tbaa !201
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 2, ptr %i.h, align 8, !tbaa !202
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.i, align 8, !tbaa !284 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_1
begin_hunk_2_@_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater13DeleteRangeCFEjRKNS_5SliceES4_:bb.a
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.rocksdb::ProtectionInfoKVOC", align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !284 ; 2 uses
  %.val3 = load ptr, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val4 = load i64, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater14UpdateProtInfoEjRKNS_5SliceES4_NS_9ValueTypeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36, !noalias !1238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1238
  store i8 15, ptr %i.b, align 1, !tbaa !193, !noalias !1238
  %i.e = tail call noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef %.val3, i64 noundef %.val4, i64 noundef 0), !noalias !1238
  %i.f = load ptr, ptr %4, align 8, !tbaa !109, !noalias !1238
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !110, !noalias !1238
  %i.i = tail call noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef %i.f, i64 noundef %i.h, i64 noundef -3275615069716884213), !noalias !1238
  %i.j = xor i64 %i.i, %i.e
  %i.k = call noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef -6551230139433768426), !noalias !1238
  %i.l = xor i64 %i.j, %i.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1238
  store i32 %2, ptr %i.a, align 4, !tbaa !96, !noalias !1238
  %i.m = call noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 5344283794842014764), !noalias !1238
  %i.n = xor i64 %i.l, %i.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1238
  store i64 %i.n, ptr %5, align 8, !noalias !1238
  call void @_ZN7rocksdb10autovectorINS_18ProtectionInfoKVOCImEELm8EE12emplace_backIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(104) %.val, ptr noundef nonnull align 8 dereferenceable(8) %5), !noalias !1238
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36, !noalias !1238
  br label %_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater14UpdateProtInfoEjRKNS_5SliceES4_NS_9ValueTypeE.exit

_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater14UpdateProtInfoEjRKNS_5SliceES4_NS_9ValueTypeE.exit: ; preds = %bb.a, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.o, align 8, !tbaa !114, !alias.scope !1239
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !1239
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater7MergeCFEjRKNS_5SliceES4_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::Status") align 8 captures(none) initializes((0, 6), (8, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.rocksdb::ProtectionInfoKVOC", align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !284 ; 2 uses
  %.val3 = load ptr, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val4 = load i64, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1244)
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater14UpdateProtInfoEjRKNS_5SliceES4_NS_9ValueTypeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36, !noalias !1244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1244
  store i8 2, ptr %i.b, align 1, !tbaa !193, !noalias !1244
  %i.e = tail call noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef %.val3, i64 noundef %.val4, i64 noundef 0), !noalias !1244
  %i.f = load ptr, ptr %4, align 8, !tbaa !109, !noalias !1244
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !110, !noalias !1244
  %i.i = tail call noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef %i.f, i64 noundef %i.h, i64 noundef -3275615069716884213), !noalias !1244
  %i.j = xor i64 %i.i, %i.e
  %i.k = call noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef -6551230139433768426), !noalias !1244
  %i.l = xor i64 %i.j, %i.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1244
  store i32 %2, ptr %i.a, align 4, !tbaa !96, !noalias !1244
  %i.m = call noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 5344283794842014764), !noalias !1244
  %i.n = xor i64 %i.l, %i.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1244
  store i64 %i.n, ptr %5, align 8, !noalias !1244
  call void @_ZN7rocksdb10autovectorINS_18ProtectionInfoKVOCImEELm8EE12emplace_backIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(104) %.val, ptr noundef nonnull align 8 dereferenceable(8) %5), !noalias !1244
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36, !noalias !1244
  br label %_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater14UpdateProtInfoEjRKNS_5SliceES4_NS_9ValueTypeE.exit

_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater14UpdateProtInfoEjRKNS_5SliceES4_NS_9ValueTypeE.exit: ; preds = %bb.a, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.o, align 8, !tbaa !114, !alias.scope !1245
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !1245
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater14PutBlobIndexCFEjRKNS_5SliceES4_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::Status") align 8 captures(none) initializes((0, 6), (8, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.rocksdb::ProtectionInfoKVOC", align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !284 ; 2 uses
  %.val3 = load ptr, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val4 = load i64, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater14UpdateProtInfoEjRKNS_5SliceES4_NS_9ValueTypeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36, !noalias !1250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1250
  store i8 17, ptr %i.b, align 1, !tbaa !193, !noalias !1250
  %i.e = tail call noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef %.val3, i64 noundef %.val4, i64 noundef 0), !noalias !1250
  %i.f = load ptr, ptr %4, align 8, !tbaa !109, !noalias !1250
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !110, !noalias !1250
  %i.i = tail call noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef %i.f, i64 noundef %i.h, i64 noundef -3275615069716884213), !noalias !1250
  %i.j = xor i64 %i.i, %i.e
  %i.k = call noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef -6551230139433768426), !noalias !1250
  %i.l = xor i64 %i.j, %i.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1250
  store i32 %2, ptr %i.a, align 4, !tbaa !96, !noalias !1250
  %i.m = call noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 5344283794842014764), !noalias !1250
  %i.n = xor i64 %i.l, %i.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1250
  store i64 %i.n, ptr %5, align 8, !noalias !1250
  call void @_ZN7rocksdb10autovectorINS_18ProtectionInfoKVOCImEELm8EE12emplace_backIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(104) %.val, ptr noundef nonnull align 8 dereferenceable(8) %5), !noalias !1250
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36, !noalias !1250
  br label %_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater14UpdateProtInfoEjRKNS_5SliceES4_NS_9ValueTypeE.exit

_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater14UpdateProtInfoEjRKNS_5SliceES4_NS_9ValueTypeE.exit: ; preds = %bb.a, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.o, align 8, !tbaa !114, !alias.scope !1251
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !1251
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater16MarkBeginPrepareEb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::Status") align 8 captures(none) initializes((0, 6), (8, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i1 zeroext %2) unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !114, !alias.scope !1254
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !1254
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater14MarkEndPrepareERKNS_5SliceE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::Status") align 8 captures(none) initializes((0, 6), (8, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2) unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !114, !alias.scope !1257
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !1257
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater8MarkNoopEb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::Status") align 8 captures(none) initializes((0, 6), (8, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i1 zeroext %2) unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !114, !alias.scope !1260
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !1260
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater12MarkRollbackERKNS_5SliceE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::Status") align 8 captures(none) initializes((0, 6), (8, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2) unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !114, !alias.scope !1263
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !1263
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater10MarkCommitERKNS_5SliceE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::Status") align 8 captures(none) initializes((0, 6), (8, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2) unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !114, !alias.scope !1266
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !1266
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater23MarkCommitWithTimestampERKNS_5SliceES4_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::Status") align 8 captures(none) initializes((0, 6), (8, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3) unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !114, !alias.scope !1269
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !1269
  ret void
}

declare noundef ptr @_ZN7rocksdb14EncodeVarint32EPcj(ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !77     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !79
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN7rocksdb18ProtectionInfoKVOCImEEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN7rocksdb18ProtectionInfoKVOCImEEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 3                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !103
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !78
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.107) #37
  unreachable

_ZNKSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #35 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !103
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE12_M_check_lenEmPKc.exit
  %2 = ptrtoaddr ptr %i.u to i64
  %i.x = add i64 %i.d, -8
  %i.y = sub i64 %i.x, %i.e                       ; 3 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 5 uses
  %min.iters.check = icmp ult i64 %i.y, 24
  %3 = sub i64 %i.e, %2
  %diff.check = icmp ugt i64 %3, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check40 = icmp ult i64 %i.y, 120
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %i.aa, 12
  %n.vec = and i64 %i.aa, 4611686018427387888     ; 4 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.u, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.c, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.af ; 4 uses
  %next.gep41 = getelementptr i8, ptr %i.c, i64 %i.af ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  %i.ag = getelementptr i8, ptr %next.gep41, i64 32
  %i.ah = getelementptr i8, ptr %next.gep41, i64 64
  %i.ai = getelementptr i8, ptr %next.gep41, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep41, align 8, !tbaa !95, !alias.scope !1277, !noalias !1276
  %wide.load42 = load <4 x i64>, ptr %i.ag, align 8, !tbaa !95, !alias.scope !1277, !noalias !1276
  %wide.load43 = load <4 x i64>, ptr %i.ah, align 8, !tbaa !95, !alias.scope !1277, !noalias !1276
  %wide.load44 = load <4 x i64>, ptr %i.ai, align 8, !tbaa !95, !alias.scope !1277, !noalias !1276
  %i.aj = getelementptr i8, ptr %next.gep, i64 32
  %i.ak = getelementptr i8, ptr %next.gep, i64 64
  %i.al = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !95, !alias.scope !1276, !noalias !1277
  store <4 x i64> %wide.load42, ptr %i.aj, align 8, !tbaa !95, !alias.scope !1276, !noalias !1277
  store <4 x i64> %wide.load43, ptr %i.ak, align 8, !tbaa !95, !alias.scope !1276, !noalias !1277
  store <4 x i64> %wide.load44, ptr %i.al, align 8, !tbaa !95, !alias.scope !1276, !noalias !1277
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !1273

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !196

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec46 = and i64 %i.aa, 4611686018427387900   ; 3 uses
  %i.an = shl i64 %n.vec46, 3                     ; 2 uses
  %i.ao = getelementptr i8, ptr %i.u, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.c, i64 %i.an
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index47 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next51, %vec.epilog.vector.body ] ; 2 uses
  %i.aq = shl i64 %index47, 3                     ; 2 uses
  %next.gep48 = getelementptr i8, ptr %i.u, i64 %i.aq
  %next.gep49 = getelementptr i8, ptr %i.c, i64 %i.aq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  %wide.load50 = load <4 x i64>, ptr %next.gep49, align 8, !tbaa !95, !alias.scope !1277, !noalias !1276
  store <4 x i64> %wide.load50, ptr %next.gep48, align 8, !tbaa !95, !alias.scope !1276, !noalias !1277
  %index.next51 = add nuw i64 %index47, 4         ; 2 uses
  %i.ar = icmp eq i64 %index.next51, %n.vec46
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1274

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n52 = icmp eq i64 %i.aa, %n.vec46
  br i1 %cmp.n52, label %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  %i.as = load i64, ptr %.0911.i.i.i, align 8, !tbaa !95, !alias.scope !1277, !noalias !1276
  store i64 %i.as, ptr %.012.i.i.i, align 8, !tbaa !95, !alias.scope !1276, !noalias !1277
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.at, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !1275

_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNKSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE13_M_deallocateEPS2_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.av = load ptr, ptr %i.h, align 8, !tbaa !79
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ax) #34
  br label %_ZNSt12_Vector_baseIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE13_M_deallocateEPS2_m.exit37

_ZNSt12_Vector_baseIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE13_M_deallocateEPS2_m.exit37: ; preds = %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !77
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %1
  store ptr %i.ay, ptr %i.a, align 8, !tbaa !78
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.az, ptr %i.h, align 8, !tbaa !79
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN7rocksdb18ProtectionInfoKVOCImEEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE13_M_deallocateEPS2_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvT_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !79
  %i.f = load ptr, ptr %0, align 8, !tbaa !77     ; 6 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.c, 9223372036854775800
  br i1 %i.k, label %bb.c, label %_ZNSt12_Vector_baseIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #37
  unreachable

_ZNSt12_Vector_baseIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #35 ; 3 uses
  %i.m = icmp eq ptr %1, %2
  br i1 %i.m, label %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE11_M_allocateEm.exit.i
  %i.n = and i64 %i.c, 9223372036854775800
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 8 %1, i64 %i.n, i1 false), !tbaa !95
  br label %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %_ZNSt12_Vector_baseIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %0, align 8, !tbaa !77     ; 3 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !79
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.t) #34
  br label %_ZNSt12_Vector_baseIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, %bb.d
  store ptr %i.l, ptr %0, align 8, !tbaa !77
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c ; 2 uses
  store ptr %i.u, ptr %i.o, align 8, !tbaa !78
  store ptr %i.u, ptr %i.d, align 8, !tbaa !79
  br label %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE15_M_erase_at_endEPS2_.exit

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !78   ; 5 uses
  %i.x = ptrtoint ptr %i.w to i64                 ; 3 uses
  %i.y = sub i64 %i.x, %i.h                       ; 5 uses
  %.not = icmp ult i64 %i.y, %i.c
  br i1 %.not, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb18ProtectionInfoKVOCImEESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = icmp sgt i64 %i.c, 8
  br i1 %i.z, label %bb.g, label %bb.h, !prof !130

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.f, ptr align 8 %1, i64 %i.c, i1 false)
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !78
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb18ProtectionInfoKVOCImEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = icmp eq i64 %i.c, 8
  br i1 %i.aa, label %bb.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb18ProtectionInfoKVOCImEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.h
  %i.ab = load i64, ptr %1, align 8, !tbaa !95
  store i64 %i.ab, ptr %i.f, align 8, !tbaa !95
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb18ProtectionInfoKVOCImEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb18ProtectionInfoKVOCImEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_.exit: ; preds = %bb.g, %bb.h, %bb.i
  %i.ac = phi ptr [ %.pre, %bb.g ], [ %i.w, %bb.h ], [ %i.w, %bb.i ]
  %i.ad = getelementptr inbounds i8, ptr %i.f, i64 %i.c ; 2 uses
  %.not.i18 = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i18, label %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE15_M_erase_at_endEPS2_.exit, label %_ZSt8_DestroyIPN7rocksdb18ProtectionInfoKVOCImEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7rocksdb18ProtectionInfoKVOCImEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb18ProtectionInfoKVOCImEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_.exit
  store ptr %i.ad, ptr %i.v, align 8, !tbaa !78
  br label %_ZNSt6vectorIN7rocksdb18ProtectionInfoKVOCImEESaIS2_EE15_M_erase_at_endEPS2_.exit
end_hunk_2
begin_hunk_3_@llvm.vector.reduce.add.v4i64
!408 = !{!"p1 _ZTSN7rocksdb14ThreadLocalPtrE", !21, i64 0}
!409 = !{!"_ZTSSt10_Head_baseILm0EPN7rocksdb14ThreadLocalPtrELb0EE", !408, i64 0}
!410 = !{!"_ZTSSt11_Tuple_implILm0EJPN7rocksdb14ThreadLocalPtrESt14default_deleteIS1_EEE", !409, i64 0}
!411 = !{!"_ZTSSt5tupleIJPN7rocksdb14ThreadLocalPtrESt14default_deleteIS1_EEE", !410, i64 0}
!412 = !{!"_ZTSSt15__uniq_ptr_implIN7rocksdb14ThreadLocalPtrESt14default_deleteIS1_EE", !411, i64 0}
!413 = !{!"_ZTSSt15__uniq_ptr_dataIN7rocksdb14ThreadLocalPtrESt14default_deleteIS1_ELb1ELb1EE", !412, i64 0}
!414 = !{!"_ZTSSt10unique_ptrIN7rocksdb14ThreadLocalPtrESt14default_deleteIS1_EE", !413, i64 0}
!415 = !{!"p1 _ZTSN7rocksdb16ColumnFamilyDataE", !21, i64 0}
!416 = !{!"p1 _ZTSN7rocksdb16CompactionPickerE", !21, i64 0}
!417 = !{!"_ZTSSt10_Head_baseILm0EPN7rocksdb16CompactionPickerELb0EE", !416, i64 0}
!418 = !{!"_ZTSSt11_Tuple_implILm0EJPN7rocksdb16CompactionPickerESt14default_deleteIS1_EEE", !417, i64 0}
!419 = !{!"_ZTSSt5tupleIJPN7rocksdb16CompactionPickerESt14default_deleteIS1_EEE", !418, i64 0}
!420 = !{!"_ZTSSt15__uniq_ptr_implIN7rocksdb16CompactionPickerESt14default_deleteIS1_EE", !419, i64 0}
!421 = !{!"_ZTSSt15__uniq_ptr_dataIN7rocksdb16CompactionPickerESt14default_deleteIS1_ELb1ELb1EE", !420, i64 0}
!422 = !{!"_ZTSSt10unique_ptrIN7rocksdb16CompactionPickerESt14default_deleteIS1_EE", !421, i64 0}
!423 = !{!"p1 _ZTSN7rocksdb15ColumnFamilySetE", !21, i64 0}
!424 = !{!"p1 _ZTSN7rocksdb20WriteControllerTokenE", !21, i64 0}
!425 = !{!"_ZTSSt10_Head_baseILm0EPN7rocksdb20WriteControllerTokenELb0EE", !424, i64 0}
!426 = !{!"_ZTSSt11_Tuple_implILm0EJPN7rocksdb20WriteControllerTokenESt14default_deleteIS1_EEE", !425, i64 0}
!427 = !{!"_ZTSSt5tupleIJPN7rocksdb20WriteControllerTokenESt14default_deleteIS1_EEE", !426, i64 0}
!428 = !{!"_ZTSSt15__uniq_ptr_implIN7rocksdb20WriteControllerTokenESt14default_deleteIS1_EE", !427, i64 0}
!429 = !{!"_ZTSSt15__uniq_ptr_dataIN7rocksdb20WriteControllerTokenESt14default_deleteIS1_ELb1ELb1EE", !428, i64 0}
!430 = !{!"_ZTSSt10unique_ptrIN7rocksdb20WriteControllerTokenESt14default_deleteIS1_EE", !429, i64 0}
!431 = !{!"p1 _ZTSSt10shared_ptrIN7rocksdb11FSDirectoryEE", !21, i64 0}
!432 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN7rocksdb11FSDirectoryEESaIS3_EE17_Vector_impl_dataE", !431, i64 0, !431, i64 8, !431, i64 16}
!433 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN7rocksdb11FSDirectoryEESaIS3_EE12_Vector_implE", !432, i64 0}
!434 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN7rocksdb11FSDirectoryEESaIS3_EE", !433, i64 0}
!435 = !{!"_ZTSSt6vectorISt10shared_ptrIN7rocksdb11FSDirectoryEESaIS3_EE", !434, i64 0}
!436 = !{!"p1 _ZTSN7rocksdb23CacheReservationManagerE", !21, i64 0}
!437 = !{!"_ZTSSt12__shared_ptrIN7rocksdb23CacheReservationManagerELN9__gnu_cxx12_Lock_policyE2EE", !436, i64 0, !148, i64 8}
!438 = !{!"_ZTSSt10shared_ptrIN7rocksdb23CacheReservationManagerEE", !437, i64 0}
!439 = !{!"_ZTSN7rocksdb4port7RWMutexE", !17, i64 0}
!440 = !{!"_ZTSN7rocksdb16ColumnFamilyDataE", !18, i64 0, !25, i64 8, !288, i64 40, !288, i64 48, !290, i64 56, !292, i64 60, !292, i64 61, !292, i64 62, !145, i64 64, !297, i64 80, !327, i64 104, !367, i64 1080, !373, i64 1960, !41, i64 2696, !380, i64 2704, !387, i64 2712, !394, i64 2720, !397, i64 2728, !404, i64 2744, !342, i64 2752, !272, i64 2760, !406, i64 2768, !407, i64 2832, !241, i64 2840, !414, i64 2848, !415, i64 2856, !415, i64 2864, !24, i64 2872, !422, i64 2880, !423, i64 2888, !430, i64 2896, !41, i64 2904, !41, i64 2905, !24, i64 2912, !41, i64 2920, !24, i64 2928, !435, i64 2936, !41, i64 2960, !25, i64 2968, !438, i64 3000, !41, i64 3016, !241, i64 3024, !439, i64 3032}
!441 = !{!"_ZTSN7rocksdb24ImmutableMemTableOptionsE", !24, i64 0, !18, i64 8, !24, i64 16, !41, i64 24, !41, i64 25, !24, i64 32, !21, i64 40, !24, i64 48, !41, i64 56, !339, i64 64, !146, i64 72, !335, i64 80, !18, i64 88, !41, i64 92, !41, i64 93, !41, i64 94, !41, i64 95}
!442 = !{!"_ZTSN7rocksdb8SnapshotE"}
!443 = !{!"p1 _ZTSN7rocksdb12SnapshotImplE", !21, i64 0}
!444 = !{!"p1 _ZTSN7rocksdb12SnapshotListE", !21, i64 0}
!445 = !{!"_ZTSN7rocksdb12SnapshotImplE", !442, i64 0, !24, i64 8, !24, i64 16, !443, i64 24, !443, i64 32, !444, i64 40, !24, i64 48, !24, i64 56, !41, i64 64}
!446 = !{!445, !24, i64 16}
!447 = !{!445, !24, i64 8}
!448 = !{!"p1 _ZTSN7rocksdb8SnapshotE", !21, i64 0}
!449 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE", !24, i64 0}
!450 = !{!"_ZTSN7rocksdb8ReadTierE", !17, i64 0}
!451 = !{!"_ZTSSt22_Optional_payload_baseImE", !17, i64 0, !41, i64 8}
!452 = !{!"_ZTSSt17_Optional_payloadImLb1ELb1ELb1EE", !451, i64 0}
!453 = !{!"_ZTSSt14_Optional_baseImLb1ELb1EE", !452, i64 0}
!454 = !{!"_ZTSSt8optionalImE", !453, i64 0}
!455 = !{!"_ZTSSt8functionIFbRKN7rocksdb15TablePropertiesEEE", !212, i64 0, !21, i64 24}
!456 = !{!"p1 _ZTSN7rocksdb23UserDefinedIndexFactoryE", !21, i64 0}
!457 = !{!"p1 _ZTSN7rocksdb29ReadScopedBlockBufferProviderE", !21, i64 0}
!458 = !{!"_ZTSN7rocksdb3Env10IOActivityE", !17, i64 0}
!459 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !21, i64 0}
!460 = !{!"_ZTSN7rocksdb11ReadOptionsE", !448, i64 0, !199, i64 8, !199, i64 16, !449, i64 24, !449, i64 32, !450, i64 40, !242, i64 44, !24, i64 48, !454, i64 56, !41, i64 72, !41, i64 73, !41, i64 74, !41, i64 75, !41, i64 76, !24, i64 80, !24, i64 88, !199, i64 96, !199, i64 104, !41, i64 112, !41, i64 113, !41, i64 114, !41, i64 115, !41, i64 116, !41, i64 117, !41, i64 118, !455, i64 120, !41, i64 152, !41, i64 153, !41, i64 154, !456, i64 160, !457, i64 168, !458, i64 176, !459, i64 184}
!461 = !{!460, !242, i64 44}
!462 = !{!460, !24, i64 48}
!463 = !{!451, !41, i64 8}
!464 = !{!460, !41, i64 76}
!465 = !{!460, !41, i64 152}
!466 = !{!460, !41, i64 153}
!467 = !{!460, !41, i64 154}
!468 = !{!460, !458, i64 176}
!469 = !{!460, !459, i64 184}
!470 = !{!460, !448, i64 0}
!471 = !{!441, !339, i64 64}
!472 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEEE", !17, i64 0, !17, i64 24}
!473 = !{!472, !17, i64 24}
!474 = !{!369, !368, i64 0}
!475 = !{!369, !368, i64 16}
!476 = !{!"p1 _ZTSSt19_Fwd_list_node_base", !21, i64 0}
!477 = !{!"_ZTSSt19_Fwd_list_node_base", !476, i64 0}
!478 = !{!477, !476, i64 0}
!479 = !{!272, !272, i64 0}
!480 = !{!262, !260, i64 24}
!481 = !{!262, !24, i64 32}
!482 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!483 = !{!"p1 _ZTSN7rocksdb10VersionSetE", !21, i64 0}
!484 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7rocksdb6DBImpl20RecoveredTransactionEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE", !51, i64 0, !24, i64 8, !53, i64 16, !24, i64 24, !55, i64 32, !52, i64 48}
!485 = !{!"_ZTSSt4lessImE"}
!486 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessImEE", !485, i64 0}
!487 = !{!228, !24, i64 160}
!488 = !{!228, !41, i64 171}
!489 = !{!"p1 _ZTSN7rocksdb6DBImpl20RecoveredTransactionE", !21, i64 0}
!490 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7rocksdb6DBImpl20RecoveredTransactionEE", !25, i64 0, !489, i64 32}
!491 = !{!490, !489, i64 32}
!492 = !{!"_ZTSN7rocksdb6DBImpl20RecoveredTransaction9BatchInfoE", !24, i64 0, !186, i64 8, !24, i64 16}
!493 = !{!492, !24, i64 0}
!494 = !{!492, !186, i64 8}
!495 = !{!"p1 _ZTSN7rocksdb12_GLOBAL__N_116MemTableInserterE", !21, i64 0}
!496 = !{!495, !495, i64 0}
!497 = !{!441, !41, i64 25}
!498 = !{!"_ZTSSt4pairIKPN7rocksdb8MemTableEPvE", !272, i64 0, !21, i64 8}
!499 = !{!498, !272, i64 0}
!500 = !{!498, !21, i64 8}
!501 = !{!"_ZTSSt4lessIjE"}
!502 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIjEE", !501, i64 0}
!503 = !{!"_ZTSNSt8_Rb_treeIjSt4pairIKjSt3setIN7rocksdb5SliceENS3_13SetComparatorESaIS4_EEESt10_Select1stIS8_ESt4lessIjESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !502, i64 0, !262, i64 8}
!504 = !{!"_ZTSSt8_Rb_treeIjSt4pairIKjSt3setIN7rocksdb5SliceENS3_13SetComparatorESaIS4_EEESt10_Select1stIS8_ESt4lessIjESaIS8_EE", !503, i64 0}
!505 = !{!"_ZTSSt3mapIjSt3setIN7rocksdb5SliceENS1_13SetComparatorESaIS2_EESt4lessIjESaISt4pairIKjS5_EEE", !504, i64 0}
!506 = !{!"_ZTSN7rocksdb17DuplicateDetectorE", !24, i64 0, !223, i64 8, !505, i64 16}
!507 = !{!506, !24, i64 0}
!508 = !{!506, !223, i64 8}
!509 = !{!262, !259, i64 0}
!510 = !{!260, !260, i64 0}
!511 = !{!303, !303, i64 0}
!512 = !{!261, !260, i64 24}
!513 = !{!261, !260, i64 16}
!514 = !{!"p1 _ZTSSt8_Rb_treeIjSt4pairIKjSt3setIN7rocksdb5SliceENS3_13SetComparatorESaIS4_EEESt10_Select1stIS8_ESt4lessIjESaIS8_EE", !21, i64 0}
!515 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKjSt3setIN7rocksdb5SliceENS3_13SetComparatorESaIS4_EEEE", !21, i64 0}
!516 = !{!"_ZTSNSt8_Rb_treeIjSt4pairIKjSt3setIN7rocksdb5SliceENS3_13SetComparatorESaIS4_EEESt10_Select1stIS8_ESt4lessIjESaIS8_EE10_Auto_nodeE", !514, i64 0, !515, i64 8}
!517 = !{!516, !515, i64 8}
!518 = !{!"_ZTSN7rocksdb13SetComparatorE", !143, i64 0}
!519 = !{!518, !143, i64 0}
!520 = !{!186, !186, i64 0}
!521 = !{!"_ZTSNSt8_Rb_treeImSt4pairIKmN7rocksdb6DBImpl20RecoveredTransaction9BatchInfoEESt10_Select1stIS6_ESt4lessImESaIS6_EE13_Rb_tree_implISA_Lb1EEE", !486, i64 0, !262, i64 8}
!522 = !{!"_ZTSSt8_Rb_treeImSt4pairIKmN7rocksdb6DBImpl20RecoveredTransaction9BatchInfoEESt10_Select1stIS6_ESt4lessImESaIS6_EE", !521, i64 0}
!523 = !{!"_ZTSSt3mapImN7rocksdb6DBImpl20RecoveredTransaction9BatchInfoESt4lessImESaISt4pairIKmS3_EEE", !522, i64 0}
!524 = !{!"_ZTSN7rocksdb6DBImpl20RecoveredTransactionE", !25, i64 0, !41, i64 32, !523, i64 40}
!525 = !{!524, !41, i64 32}
!526 = !{!484, !24, i64 24}
!527 = !{!484, !24, i64 8}
!528 = !{!484, !51, i64 0}
!529 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !24, i64 0}
!530 = !{!529, !24, i64 0}
!531 = !{!"_ZTSSt4pairIKmN7rocksdb6DBImpl20RecoveredTransaction9BatchInfoEE", !24, i64 0, !492, i64 8}
!532 = !{!459, !459, i64 0}
!533 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7rocksdb6DBImpl20RecoveredTransactionEELb1EEEEEE", !21, i64 0}
!534 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7rocksdb6DBImpl20RecoveredTransactionEELb1EEE", !21, i64 0}
!535 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7rocksdb6DBImpl20RecoveredTransactionEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !533, i64 0, !534, i64 8}
!536 = !{!535, !534, i64 8}
!537 = !{!484, !52, i64 16}
!538 = distinct !{!538, !83}
!539 = !{!34, !33, i64 0}
!540 = !{!85, !85, i64 0}
!541 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!542 = !{!68, !68, i64 0}
!543 = distinct !{!543, !83}
!544 = distinct !{!544, i1 false, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE"}
!545 = distinct !{!545, !544, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE: argument 0"}
!546 = !{!545}
!547 = !{!58, !24, i64 16}
!548 = !{!58, !18, i64 24}
!549 = !{!58, !18, i64 28}
!550 = distinct !{!550, i1 false, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE"}
!551 = distinct !{!551, !550, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE: argument 0"}
!552 = !{!551}
!553 = distinct !{!553, i1 false, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE"}
!554 = distinct !{!554, !553, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE: argument 0"}
!555 = !{!554}
!556 = distinct !{!556, i1 false, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE"}
!557 = distinct !{!557, !556, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE: argument 0"}
!558 = !{!557}
!559 = distinct !{!559, i1 false, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE"}
!560 = distinct !{!560, !559, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE: argument 0"}
!561 = !{!560}
!562 = distinct !{!562, i1 false, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE"}
!563 = distinct !{!563, !562, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE: argument 0"}
!564 = !{!563}
!565 = distinct !{!565, i1 false, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE"}
!566 = distinct !{!566, !565, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE: argument 0"}
!567 = !{!566}
!568 = distinct !{!568, i1 false, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE"}
!569 = distinct !{!569, !568, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE: argument 0"}
!570 = !{!569}
!571 = distinct !{!571, i1 false, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE"}
!572 = distinct !{!572, !571, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE: argument 0"}
!573 = !{!572}
!574 = distinct !{!574, i1 false, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE"}
!575 = distinct !{!575, !574, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE: argument 0"}
!576 = !{!575}
!577 = distinct !{!577, i1 false, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE"}
!578 = distinct !{!578, !577, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE: argument 0"}
!579 = !{!578}
!580 = distinct !{!580, i1 false, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE"}
!581 = distinct !{!581, !580, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE: argument 0"}
!582 = !{!581}
!583 = distinct !{!583, i1 false, !"_ZNSt7__cxx119to_stringEj"}
!584 = distinct !{!584, !583, !"_ZNSt7__cxx119to_stringEj: argument 0"}
!585 = distinct !{!585, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!586 = distinct !{!586, !585, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!587 = !{!584}
!588 = !{!586}
!589 = distinct !{!589, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!590 = distinct !{!590, !589, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!591 = distinct !{!591, !83}
!592 = distinct !{!592, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!593 = distinct !{!593, !592, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!594 = !{!590}
!595 = !{!593}
!596 = distinct !{!596, i1 false, !"_ZSt10make_tupleIJRN7rocksdb6StatusERjRmEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOS8_"}
!597 = distinct !{!597, !596, !"_ZSt10make_tupleIJRN7rocksdb6StatusERjRmEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOS8_: argument 0"}
!598 = !{!"_ZTSSt10_Head_baseILm2EmLb0EE", !24, i64 0}
!599 = !{!598, !24, i64 0}
!600 = !{!597}
!601 = !{!"_ZTSSt10_Head_baseILm1EjLb0EE", !18, i64 0}
!602 = !{!601, !18, i64 0}
!603 = distinct !{!603, i1 false, !"_ZSt19__relocate_object_aIN7rocksdb18ProtectionInfoKVOCImEES2_SaIS2_EEvPT_PT0_RT1_"}
!604 = distinct !{!604, !603, !"_ZSt19__relocate_object_aIN7rocksdb18ProtectionInfoKVOCImEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!605 = distinct !{!605, !603, !"_ZSt19__relocate_object_aIN7rocksdb18ProtectionInfoKVOCImEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!606 = distinct !{!606, !83, !194, !195}
!607 = distinct !{!607, !83, !194, !195}
!608 = distinct !{!608, !83, !194}
!609 = !{!604}
!610 = !{!605}
!611 = distinct !{!611, i1 false, !"_ZN7rocksdb6Status11MemoryLimitEv"}
!612 = distinct !{!612, !611, !"_ZN7rocksdb6Status11MemoryLimitEv: argument 0"}
!613 = distinct !{!613, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!614 = distinct !{!614, !613, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!615 = !{!187, !24, i64 8}
!616 = !{!187, !18, i64 16}
!617 = !{!187, !18, i64 20}
!618 = !{!612}
!619 = !{!614}
!620 = distinct !{!620, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!621 = distinct !{!621, !620, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!622 = !{!621}
!623 = distinct !{!623, !83, !194, !195}
!624 = distinct !{!624, !83, !194, !195}
!625 = distinct !{!625, !83, !194, !195}
!626 = distinct !{!626, !83, !194, !195}
!627 = distinct !{!627, !83, !195, !194}
!628 = distinct !{!628, !83, !195, !194}
!629 = distinct !{!629, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!630 = distinct !{!630, !629, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!631 = !{!630}
!632 = !{!"p1 _ZTSN7rocksdb14AttributeGroupE", !21, i64 0}
!633 = !{!632, !632, i64 0}
!634 = !{!"p1 _ZTSN7rocksdb18ColumnFamilyHandleE", !21, i64 0}
!635 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb10WideColumnESaIS1_EE12_Vector_implE", !206, i64 0}
!636 = !{!"_ZTSSt12_Vector_baseIN7rocksdb10WideColumnESaIS1_EE", !635, i64 0}
!637 = !{!"_ZTSSt6vectorIN7rocksdb10WideColumnESaIS1_EE", !636, i64 0}
!638 = !{!"_ZTSN7rocksdb14AttributeGroupE", !634, i64 0, !637, i64 8}
!639 = !{!638, !634, i64 0}
!640 = distinct !{!640, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!641 = distinct !{!641, !640, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!642 = !{!641}
!643 = distinct !{!643, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!644 = distinct !{!644, !643, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!645 = !{!644}
!646 = distinct !{!646, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!647 = distinct !{!647, !646, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!648 = !{!647}
!649 = distinct !{!649, !83}
!650 = distinct !{!650, i1 false, !"_ZN7rocksdb18WriteBatchInternal16InsertEndPrepareEPNS_10WriteBatchERKNS_5SliceE"}
!651 = distinct !{!651, !650, !"_ZN7rocksdb18WriteBatchInternal16InsertEndPrepareEPNS_10WriteBatchERKNS_5SliceE: argument 0"}
!652 = distinct !{!652, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!653 = distinct !{!653, !652, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!654 = !{!651}
!655 = !{!653, !651}
!656 = distinct !{!656, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!657 = distinct !{!657, !656, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!658 = !{!657}
!659 = distinct !{!659, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!660 = distinct !{!660, !659, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!661 = !{!660}
!662 = distinct !{!662, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!663 = distinct !{!663, !662, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!664 = !{!663}
!665 = !{!123, !117, i64 2}
!666 = distinct !{!666, i1 false, !"_ZN7rocksdb6Status8NotFoundENS0_7SubCodeE"}
!667 = distinct !{!667, !666, !"_ZN7rocksdb6Status8NotFoundENS0_7SubCodeE: argument 0"}
!668 = distinct !{!668, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!669 = distinct !{!669, !668, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!670 = !{!667}
!671 = !{!669}
!672 = distinct !{!672, i1 false, !"_ZN7rocksdb6Status8NotFoundENS0_7SubCodeE"}
!673 = distinct !{!673, !672, !"_ZN7rocksdb6Status8NotFoundENS0_7SubCodeE: argument 0"}
!674 = distinct !{!674, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!675 = distinct !{!675, !674, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!676 = !{!673}
!677 = !{!675}
!678 = distinct !{!678, i1 false, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE"}
!679 = distinct !{!679, !678, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE: argument 0"}
!680 = !{i64 0, i64 16, !27}
!681 = !{!679}
!682 = distinct !{!682, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!683 = distinct !{!683, !682, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!684 = distinct !{!684, i1 false, !"_ZNK7rocksdb14ProtectionInfoImE9GetStatusEv"}
!685 = distinct !{!685, !684, !"_ZNK7rocksdb14ProtectionInfoImE9GetStatusEv: argument 0"}
!686 = distinct !{!686, !83}
!687 = distinct !{!687, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!688 = distinct !{!688, !687, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!689 = !{!683}
!690 = !{!685}
!691 = !{!688}
!692 = distinct !{!692, i1 false, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE"}
!693 = distinct !{!693, !692, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE: argument 0"}
!694 = distinct !{!694, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!695 = distinct !{!695, !694, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!696 = !{!"_ZTSN7rocksdb11WriteThread10WriteGroupE", !239, i64 0, !239, i64 8, !24, i64 16, !123, i64 24, !241, i64 40, !24, i64 48}
!697 = !{!696, !239, i64 0}
!698 = !{!696, !239, i64 8}
!699 = !{!252, !245, i64 80}
!700 = !{!252, !24, i64 112}
!701 = !{!252, !41, i64 24}
!702 = !{!693}
!703 = !{!252, !239, i64 248}
!704 = !{!695}
!705 = distinct !{!705, !83}
!706 = distinct !{!706, i1 false, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE"}
!707 = distinct !{!707, !706, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE: argument 0"}
!708 = !{!707}
!709 = distinct !{!709, i1 false, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE"}
!710 = distinct !{!710, !709, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE: argument 0"}
!711 = !{!710}
!712 = distinct !{!712, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!713 = distinct !{!713, !712, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!714 = !{!713}
!715 = distinct !{!715, !83}
!716 = distinct !{!716, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!717 = distinct !{!717, !716, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!718 = !{!717}
!719 = distinct !{!719, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!720 = distinct !{!720, !719, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!721 = distinct !{!721, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!722 = distinct !{!722, !721, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!723 = distinct !{!723, i1 false, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE"}
!724 = distinct !{!724, !723, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE: argument 0"}
!725 = distinct !{!725, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!726 = distinct !{!726, !725, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!727 = !{!720}
!728 = !{!722}
!729 = !{!724}
!730 = !{!726}
!731 = distinct !{!731, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!732 = distinct !{!732, !731, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!733 = !{!732}
!734 = distinct !{!734, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!735 = distinct !{!735, !734, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!736 = !{!735}
!737 = distinct !{!737, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!738 = distinct !{!738, !737, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!739 = !{!738}
!740 = distinct !{!740, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!741 = distinct !{!741, !740, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!742 = !{!741}
!743 = distinct !{!743, !83}
!744 = distinct !{!744, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!745 = distinct !{!745, !744, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!746 = !{!745}
!747 = distinct !{!747, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!748 = distinct !{!748, !747, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!749 = !{!748}
!750 = distinct !{!750, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!751 = distinct !{!751, !750, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!752 = !{!751}
!753 = distinct !{!753, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!754 = distinct !{!754, !753, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!755 = !{!754}
!756 = distinct !{!756, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!757 = distinct !{!757, !756, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!758 = !{!757}
!759 = distinct !{!759, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!760 = distinct !{!760, !759, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!761 = !{!760}
!762 = distinct !{!762, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!763 = distinct !{!763, !762, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!764 = !{!763}
!765 = distinct !{!765, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!766 = distinct !{!766, !765, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!767 = !{!766}
!768 = distinct !{!768, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!769 = distinct !{!769, !768, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!770 = !{!769}
!771 = distinct !{!771, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!772 = distinct !{!772, !771, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!773 = !{!772}
!774 = distinct !{!774, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!775 = distinct !{!775, !774, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!776 = !{!775}
!777 = distinct !{!777, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!778 = distinct !{!778, !777, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!779 = !{!778}
!780 = distinct !{!780, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!781 = distinct !{!781, !780, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!782 = !{!781}
!783 = distinct !{!783, !83}
!784 = !{!"_ZTSSt4pairIKjmE", !18, i64 0, !24, i64 8}
!785 = !{!784, !18, i64 0}
!786 = !{!784, !24, i64 8}
!787 = distinct !{!787, !83}
!788 = !{!56, !52, i64 48}
!789 = distinct !{!789, !83, !194, !195}
!790 = distinct !{!790, !83, !194, !195}
!791 = distinct !{!791, !83, !195, !194}
!792 = distinct !{!792, !83}
!793 = distinct !{!793, !83}
!794 = distinct !{!794, !83}
!795 = distinct !{!795, !83}
!796 = distinct !{!796, !83}
!797 = distinct !{!797, !83}
!798 = distinct !{!798, !83}
!799 = distinct !{!799, !83}
!800 = distinct !{!800, !83}
!801 = distinct !{!801, !83}
!802 = distinct !{!802, !83}
!803 = !{!"branch_weights", !"expected", i32 1716614, i32 2145767034}
!804 = !{!"branch_weights", !"expected", i32 1716613, i32 2145767035}
!805 = distinct !{!805, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!806 = distinct !{!806, !805, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!807 = distinct !{!807, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!808 = distinct !{!808, !807, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
end_hunk_3
begin_hunk_4_@llvm.vector.reduce.add.v4i64
!1001 = !{!"_ZTSSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE", !51, i64 0, !24, i64 8, !53, i64 16, !24, i64 24, !55, i64 32, !52, i64 48}
!1002 = !{!"_ZTSSt13unordered_setImSt4hashImESt8equal_toImESaImEE", !1001, i64 0}
!1003 = !{!"p3 _ZTSN7rocksdb3log6WriterE", !992, i64 0}
!1004 = !{!"_ZTSSt15_Deque_iteratorIPN7rocksdb3log6WriterERS3_PS3_E", !924, i64 0, !924, i64 8, !924, i64 16, !1003, i64 24}
!1005 = !{!"_ZTSNSt11_Deque_baseIPN7rocksdb3log6WriterESaIS3_EE16_Deque_impl_dataE", !1003, i64 0, !24, i64 8, !1004, i64 16, !1004, i64 48}
!1006 = !{!"_ZTSNSt11_Deque_baseIPN7rocksdb3log6WriterESaIS3_EE11_Deque_implE", !1005, i64 0}
!1007 = !{!"_ZTSSt11_Deque_baseIPN7rocksdb3log6WriterESaIS3_EE", !1006, i64 0}
!1008 = !{!"_ZTSSt5dequeIPN7rocksdb3log6WriterESaIS3_EE", !1007, i64 0}
!1009 = !{!"p3 _ZTSN7rocksdb12SuperVersionE", !992, i64 0}
!1010 = !{!"p2 _ZTSN7rocksdb12SuperVersionE", !50, i64 0}
!1011 = !{!"_ZTSSt15_Deque_iteratorIPN7rocksdb12SuperVersionERS2_PS2_E", !1010, i64 0, !1010, i64 8, !1010, i64 16, !1009, i64 24}
!1012 = !{!"_ZTSNSt11_Deque_baseIPN7rocksdb12SuperVersionESaIS2_EE16_Deque_impl_dataE", !1009, i64 0, !24, i64 8, !1011, i64 16, !1011, i64 48}
!1013 = !{!"_ZTSNSt11_Deque_baseIPN7rocksdb12SuperVersionESaIS2_EE11_Deque_implE", !1012, i64 0}
!1014 = !{!"_ZTSSt11_Deque_baseIPN7rocksdb12SuperVersionESaIS2_EE", !1013, i64 0}
!1015 = !{!"_ZTSSt5dequeIPN7rocksdb12SuperVersionESaIS2_EE", !1014, i64 0}
!1016 = !{!"_ZTSN7rocksdb6DBImpl18AsyncFileOpenStateE", !17, i64 0}
!1017 = !{!"_ZTSN7rocksdb6DBImpl22AsyncWALPrecreateStateE", !17, i64 0}
!1018 = !{!"p1 _ZTSN7rocksdb3log6WriterE", !21, i64 0}
!1019 = !{!"_ZTSSt10_Head_baseILm0EPN7rocksdb3log6WriterELb0EE", !1018, i64 0}
!1020 = !{!"_ZTSSt11_Tuple_implILm0EJPN7rocksdb3log6WriterESt14default_deleteIS2_EEE", !1019, i64 0}
!1021 = !{!"_ZTSSt5tupleIJPN7rocksdb3log6WriterESt14default_deleteIS2_EEE", !1020, i64 0}
!1022 = !{!"_ZTSSt15__uniq_ptr_implIN7rocksdb3log6WriterESt14default_deleteIS2_EE", !1021, i64 0}
!1023 = !{!"_ZTSSt15__uniq_ptr_dataIN7rocksdb3log6WriterESt14default_deleteIS2_ELb1ELb1EE", !1022, i64 0}
!1024 = !{!"_ZTSSt10unique_ptrIN7rocksdb3log6WriterESt14default_deleteIS2_EE", !1023, i64 0}
!1025 = !{!"_ZTSN7rocksdb6DBImpl14UnpublishedWALE", !24, i64 0, !1024, i64 8}
!1026 = !{!"p3 _ZTSN7rocksdb6DBImpl21ManualCompactionStateE", !992, i64 0}
!1027 = !{!"p2 _ZTSN7rocksdb6DBImpl21ManualCompactionStateE", !50, i64 0}
!1028 = !{!"_ZTSSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_E", !1027, i64 0, !1027, i64 8, !1027, i64 16, !1026, i64 24}
!1029 = !{!"_ZTSNSt11_Deque_baseIPN7rocksdb6DBImpl21ManualCompactionStateESaIS3_EE16_Deque_impl_dataE", !1026, i64 0, !24, i64 8, !1028, i64 16, !1028, i64 48}
!1030 = !{!"_ZTSNSt11_Deque_baseIPN7rocksdb6DBImpl21ManualCompactionStateESaIS3_EE11_Deque_implE", !1029, i64 0}
!1031 = !{!"_ZTSSt11_Deque_baseIPN7rocksdb6DBImpl21ManualCompactionStateESaIS3_EE", !1030, i64 0}
!1032 = !{!"_ZTSSt5dequeIPN7rocksdb6DBImpl21ManualCompactionStateESaIS3_EE", !1031, i64 0}
!1033 = !{!"_ZTSSt9__condvar", !17, i64 0}
!1034 = !{!"_ZTSSt18condition_variable", !1033, i64 0}
!1035 = !{!"_ZTSSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE", !51, i64 0, !24, i64 8, !53, i64 16, !24, i64 24, !55, i64 32, !52, i64 48}
!1036 = !{!"_ZTSSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE", !1035, i64 0}
!1037 = !{!"_ZTSN7rocksdb10WalManagerE", !867, i64 0, !894, i64 8, !328, i64 224, !848, i64 232, !1036, i64 280, !858, i64 336, !916, i64 376, !41, i64 384, !459, i64 392, !41, i64 400, !844, i64 408}
!1038 = !{!"p1 _ZTSN7rocksdb19LogsWithPrepTracker6LogCntE", !21, i64 0}
!1039 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb19LogsWithPrepTracker6LogCntESaIS2_EE17_Vector_impl_dataE", !1038, i64 0, !1038, i64 8, !1038, i64 16}
!1040 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb19LogsWithPrepTracker6LogCntESaIS2_EE12_Vector_implE", !1039, i64 0}
!1041 = !{!"_ZTSSt12_Vector_baseIN7rocksdb19LogsWithPrepTracker6LogCntESaIS2_EE", !1040, i64 0}
!1042 = !{!"_ZTSSt6vectorIN7rocksdb19LogsWithPrepTracker6LogCntESaIS2_EE", !1041, i64 0}
!1043 = !{!"_ZTSN7rocksdb19LogsWithPrepTrackerE", !1042, i64 0, !972, i64 24, !1036, i64 64, !972, i64 120}
!1044 = !{!"p1 _ZTSN7rocksdb15SnapshotCheckerE", !21, i64 0}
!1045 = !{!"_ZTSSt10_Head_baseILm0EPN7rocksdb15SnapshotCheckerELb0EE", !1044, i64 0}
!1046 = !{!"_ZTSSt11_Tuple_implILm0EJPN7rocksdb15SnapshotCheckerESt14default_deleteIS1_EEE", !1045, i64 0}
!1047 = !{!"_ZTSSt5tupleIJPN7rocksdb15SnapshotCheckerESt14default_deleteIS1_EEE", !1046, i64 0}
!1048 = !{!"_ZTSSt15__uniq_ptr_implIN7rocksdb15SnapshotCheckerESt14default_deleteIS1_EE", !1047, i64 0}
!1049 = !{!"_ZTSSt15__uniq_ptr_dataIN7rocksdb15SnapshotCheckerESt14default_deleteIS1_ELb1ELb1EE", !1048, i64 0}
!1050 = !{!"_ZTSSt10unique_ptrIN7rocksdb15SnapshotCheckerESt14default_deleteIS1_EE", !1049, i64 0}
!1051 = !{!"_ZTSSt10_Head_baseILm0EPN7rocksdb18PreReleaseCallbackELb0EE", !243, i64 0}
!1052 = !{!"_ZTSSt11_Tuple_implILm0EJPN7rocksdb18PreReleaseCallbackESt14default_deleteIS1_EEE", !1051, i64 0}
!1053 = !{!"_ZTSSt5tupleIJPN7rocksdb18PreReleaseCallbackESt14default_deleteIS1_EEE", !1052, i64 0}
!1054 = !{!"_ZTSSt15__uniq_ptr_implIN7rocksdb18PreReleaseCallbackESt14default_deleteIS1_EE", !1053, i64 0}
!1055 = !{!"_ZTSSt15__uniq_ptr_dataIN7rocksdb18PreReleaseCallbackESt14default_deleteIS1_ELb1ELb1EE", !1054, i64 0}
!1056 = !{!"_ZTSSt10unique_ptrIN7rocksdb18PreReleaseCallbackESt14default_deleteIS1_EE", !1055, i64 0}
!1057 = !{!"_ZTSSt4lessIN7rocksdb16PeriodicTaskTypeEE"}
!1058 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN7rocksdb16PeriodicTaskTypeEEE", !1057, i64 0}
!1059 = !{!"_ZTSNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE13_Rb_tree_implISA_Lb1EEE", !1058, i64 0, !262, i64 8}
!1060 = !{!"_ZTSSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE", !1059, i64 0}
!1061 = !{!"_ZTSSt3mapIN7rocksdb16PeriodicTaskTypeENS0_21PeriodicTaskScheduler8TaskInfoESt4lessIS1_ESaISt4pairIKS1_S3_EEE", !1060, i64 0}
!1062 = !{!"p1 _ZTSN7rocksdb5TimerE", !21, i64 0}
!1063 = !{!"_ZTSN7rocksdb21PeriodicTaskSchedulerE", !1061, i64 0, !1062, i64 48}
!1064 = !{!"_ZTSNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_KSt8functionIFvvEEESt10_Select1stIS8_ESt4lessIS1_ESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !1058, i64 0, !262, i64 8}
!1065 = !{!"_ZTSSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_KSt8functionIFvvEEESt10_Select1stIS8_ESt4lessIS1_ESaIS8_EE", !1064, i64 0}
!1066 = !{!"_ZTSSt3mapIN7rocksdb16PeriodicTaskTypeEKSt8functionIFvvEESt4lessIS1_ESaISt4pairIKS1_S5_EEE", !1065, i64 0}
!1067 = !{!"p1 _ZTSN7rocksdb12ErrorHandlerE", !21, i64 0}
!1068 = !{!"p1 _ZTSN7rocksdb11EventLoggerE", !21, i64 0}
!1069 = !{!"_ZTSN7rocksdb26BlobFileCompletionCallbackE", !332, i64 0, !879, i64 8, !1067, i64 16, !1068, i64 24, !349, i64 32, !25, i64 56}
!1070 = !{!"p1 _ZTSN7rocksdb14StallInterfaceE", !21, i64 0}
!1071 = !{!"_ZTSSt10_Head_baseILm0EPN7rocksdb14StallInterfaceELb0EE", !1070, i64 0}
!1072 = !{!"_ZTSSt11_Tuple_implILm0EJPN7rocksdb14StallInterfaceESt14default_deleteIS1_EEE", !1071, i64 0}
!1073 = !{!"_ZTSSt5tupleIJPN7rocksdb14StallInterfaceESt14default_deleteIS1_EEE", !1072, i64 0}
!1074 = !{!"_ZTSSt15__uniq_ptr_implIN7rocksdb14StallInterfaceESt14default_deleteIS1_EE", !1073, i64 0}
!1075 = !{!"_ZTSSt15__uniq_ptr_dataIN7rocksdb14StallInterfaceESt14default_deleteIS1_ELb1ELb1EE", !1074, i64 0}
!1076 = !{!"_ZTSSt10unique_ptrIN7rocksdb14StallInterfaceESt14default_deleteIS1_EE", !1075, i64 0}
!1077 = !{!"p2 _ZTSN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairE", !50, i64 0}
!1078 = !{!"p1 _ZTSN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairE", !21, i64 0}
!1079 = !{!"_ZTSSt15_Deque_iteratorIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairERS2_PS2_E", !1078, i64 0, !1078, i64 8, !1078, i64 16, !1077, i64 24}
!1080 = !{!"_ZTSNSt11_Deque_baseIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE16_Deque_impl_dataE", !1077, i64 0, !24, i64 8, !1079, i64 16, !1079, i64 48}
!1081 = !{!"_ZTSNSt11_Deque_baseIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE11_Deque_implE", !1080, i64 0}
!1082 = !{!"_ZTSSt11_Deque_baseIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE", !1081, i64 0}
!1083 = !{!"_ZTSSt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE", !1082, i64 0}
!1084 = !{!"_ZTSN7rocksdb18SeqnoToTimeMappingE", !24, i64 0, !24, i64 8, !1083, i64 16, !41, i64 96}
!1085 = !{!"_ZTSSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE", !51, i64 0, !24, i64 8, !53, i64 16, !24, i64 24, !55, i64 32, !52, i64 48}
!1086 = !{!"_ZTSSt13unordered_mapImjSt4hashImESt8equal_toImESaISt4pairIKmjEEE", !1085, i64 0}
!1087 = !{!"_ZTSN7rocksdb6DBImplE", !834, i64 0, !25, i64 8, !41, i64 40, !25, i64 48, !25, i64 80, !840, i64 112, !41, i64 120, !123, i64 128, !841, i64 144, !328, i64 904, !844, i64 912, !366, i64 928, !848, i64 1528, !849, i64 1576, !339, i64 1760, !850, i64 1768, !857, i64 1824, !859, i64 1832, !864, i64 1896, !292, i64 1984, !865, i64 2048, !866, i64 2112, !398, i64 2120, !180, i64 2128, !883, i64 2144, !884, i64 2432, !241, i64 2440, !894, i64 2448, !894, i64 2664, !901, i64 2880, !41, i64 2888, !41, i64 2889, !290, i64 2892, !292, i64 2896, !41, i64 2897, !41, i64 2898, !41, i64 2899, !902, i64 2904, !859, i64 2912, !859, i64 2976, !859, i64 3040, !290, i64 3104, !290, i64 3108, !871, i64 3112, !866, i64 3192, !41, i64 3200, !24, i64 3208, !908, i64 3216, !24, i64 3296, !41, i64 3304, !41, i64 3305, !915, i64 3312, !916, i64 3392, !923, i64 3400, !871, i64 3480, !58, i64 3560, !292, i64 3720, !929, i64 3728, !41, i64 3832, !932, i64 3840, !937, i64 3888, !41, i64 3936, !950, i64 3944, !342, i64 3984, !953, i64 3992, !58, i64 4432, !953, i64 4592, !960, i64 5032, !24, i64 5088, !964, i64 5096, !973, i64 5104, !974, i64 5256, !978, i64 5336, !984, i64 5384, !984, i64 5408, !991, i64 5432, !998, i64 5512, !1000, i64 5592, !1002, i64 5648, !1008, i64 5704, !1015, i64 5784, !18, i64 5864, !18, i64 5868, !18, i64 5872, !18, i64 5876, !18, i64 5880, !18, i64 5884, !18, i64 5888, !18, i64 5892, !18, i64 5896, !18, i64 5900, !1016, i64 5904, !1017, i64 5905, !1025, i64 5912, !1032, i64 5928, !18, i64 6008, !18, i64 6012, !24, i64 6016, !1034, i64 6024, !972, i64 6072, !241, i64 6112, !292, i64 6120, !42, i64 6124, !41, i64 6128, !18, i64 6132, !42, i64 6136, !1037, i64 6144, !18, i64 6568, !18, i64 6572, !41, i64 6576, !24, i64 6584, !24, i64 6592, !1043, i64 6600, !1050, i64 6760, !41, i64 6768, !1056, i64 6776, !1063, i64 6784, !1066, i64 6840, !41, i64 6888, !41, i64 6889, !41, i64 6890, !41, i64 6891, !292, i64 6892, !41, i64 6893, !41, i64 6894, !123, i64 6896, !859, i64 6912, !871, i64 6976, !41, i64 7056, !241, i64 7064, !1069, i64 7072, !1076, i64 7160, !1084, i64 7168, !430, i64 7272, !1086, i64 7280}
!1088 = !{!1087, !41, i64 1282}
!1089 = !{!833}
!1090 = distinct !{!1090, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!1091 = distinct !{!1091, !1090, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!1092 = !{!1091}
!1093 = distinct !{!1093, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!1094 = distinct !{!1094, !1093, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!1095 = !{!1094}
!1096 = distinct !{!1096, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!1097 = distinct !{!1097, !1096, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!1098 = !{!1097}
!1099 = distinct !{!1099, i1 false, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE"}
!1100 = distinct !{!1100, !1099, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE: argument 0"}
!1101 = !{!1100}
!1102 = distinct !{!1102, i1 false, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE"}
!1103 = distinct !{!1103, !1102, !"_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE: argument 0"}
!1104 = !{!1103}
!1105 = !{!228, !41, i64 170}
!1106 = distinct !{null}
!1107 = !{!441, !21, i64 40}
!1108 = !{!116, !116, i64 0}
!1109 = distinct !{!1109, i1 false, !"_ZN7rocksdb2DB3GetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleERKNS_5SliceEPNS_13PinnableSliceE"}
!1110 = distinct !{!1110, !1109, !"_ZN7rocksdb2DB3GetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleERKNS_5SliceEPNS_13PinnableSliceE: argument 0"}
!1111 = distinct !{null}
!1112 = !{!"p1 _ZTSN7rocksdb9Cleanable7CleanupE", !21, i64 0}
!1113 = !{!"_ZTSN7rocksdb9Cleanable7CleanupE", !21, i64 0, !21, i64 8, !21, i64 16, !1112, i64 24}
!1114 = !{!"_ZTSN7rocksdb9CleanableE", !1113, i64 0}
!1115 = !{!"_ZTSN7rocksdb13PinnableSliceE", !108, i64 0, !1114, i64 16, !25, i64 48, !459, i64 80, !41, i64 88}
!1116 = !{!1115, !41, i64 88}
!1117 = !{!1115, !459, i64 80}
!1118 = !{!1110}
!1119 = distinct !{null}
!1120 = !{!440, !272, i64 2760}
!1121 = !{!184, !24, i64 80}
!1122 = !{!143, !143, i64 0}
!1123 = !{!261, !260, i64 8}
!1124 = distinct !{!1124, !83}
!1125 = distinct !{!1125, !83}
!1126 = !{!514, !514, i64 0}
!1127 = distinct !{!1127, !83}
!1128 = !{!"_ZTSSt20_Rb_tree_key_compareIN7rocksdb13SetComparatorEE", !518, i64 0}
!1129 = !{!"_ZTSNSt8_Rb_treeIN7rocksdb5SliceES1_St9_IdentityIS1_ENS0_13SetComparatorESaIS1_EE13_Rb_tree_implIS4_Lb0EEE", !1128, i64 0, !262, i64 8}
!1130 = !{!"_ZTSSt8_Rb_treeIN7rocksdb5SliceES1_St9_IdentityIS1_ENS0_13SetComparatorESaIS1_EE", !1129, i64 0}
!1131 = !{!"_ZTSSt3setIN7rocksdb5SliceENS0_13SetComparatorESaIS1_EE", !1130, i64 0}
!1132 = !{!"_ZTSSt4pairIKjSt3setIN7rocksdb5SliceENS2_13SetComparatorESaIS3_EEE", !18, i64 0, !1131, i64 8}
!1133 = !{!1132, !18, i64 0}
!1134 = distinct !{null, null}
!1135 = distinct !{!1135, !83}
!1136 = distinct !{null, null}
!1137 = distinct !{!1137, !83}
!1138 = distinct !{!1138, !83}
!1139 = !{!265, !24, i64 24}
!1140 = distinct !{!1140, !83}
!1141 = !{!265, !52, i64 48}
!1142 = !{!445, !24, i64 48}
!1143 = !{!445, !24, i64 56}
!1144 = distinct !{!1144, i1 false, !"_ZZN7rocksdb12_GLOBAL__N_116MemTableInserter10TimedPutCFEjRKNS_5SliceES4_mENKUlPNS_10WriteBatchEjS4_S4_E_clES6_jS4_S4_"}
!1145 = distinct !{!1145, !1144, !"_ZZN7rocksdb12_GLOBAL__N_116MemTableInserter10TimedPutCFEjRKNS_5SliceES4_mENKUlPNS_10WriteBatchEjS4_S4_E_clES6_jS4_S4_: argument 0"}
!1146 = distinct !{!1146, i1 false, !"_ZN7rocksdb6Status12NotSupportedENS0_7SubCodeE"}
!1147 = distinct !{!1147, !1146, !"_ZN7rocksdb6Status12NotSupportedENS0_7SubCodeE: argument 0"}
!1148 = distinct !{!1148, i1 false, !"_ZZN7rocksdb12_GLOBAL__N_116MemTableInserter10TimedPutCFEjRKNS_5SliceES4_mENKUlPNS_10WriteBatchEjS4_S4_E_clES6_jS4_S4_"}
!1149 = distinct !{!1149, !1148, !"_ZZN7rocksdb12_GLOBAL__N_116MemTableInserter10TimedPutCFEjRKNS_5SliceES4_mENKUlPNS_10WriteBatchEjS4_S4_E_clES6_jS4_S4_: argument 0"}
!1150 = distinct !{!1150, i1 false, !"_ZN7rocksdb6Status12NotSupportedENS0_7SubCodeE"}
!1151 = distinct !{!1151, !1150, !"_ZN7rocksdb6Status12NotSupportedENS0_7SubCodeE: argument 0"}
!1152 = distinct !{!1152, i1 false, !"_ZZN7rocksdb12_GLOBAL__N_116MemTableInserter10TimedPutCFEjRKNS_5SliceES4_mENKUlPNS_10WriteBatchEjS4_S4_E_clES6_jS4_S4_"}
!1153 = distinct !{!1153, !1152, !"_ZZN7rocksdb12_GLOBAL__N_116MemTableInserter10TimedPutCFEjRKNS_5SliceES4_mENKUlPNS_10WriteBatchEjS4_S4_E_clES6_jS4_S4_: argument 0"}
!1154 = distinct !{!1154, i1 false, !"_ZN7rocksdb6Status12NotSupportedENS0_7SubCodeE"}
!1155 = distinct !{!1155, !1154, !"_ZN7rocksdb6Status12NotSupportedENS0_7SubCodeE: argument 0"}
!1156 = !{!1147, !1145}
!1157 = !{!1151, !1149}
!1158 = !{!1155, !1153}
!1159 = distinct !{null}
!1160 = distinct !{!1160, i1 false, !"_ZZN7rocksdb12_GLOBAL__N_116MemTableInserter14PutBlobIndexCFEjRKNS_5SliceES4_ENKUlPNS_10WriteBatchEjS4_S4_E_clES6_jS4_S4_"}
!1161 = distinct !{!1161, !1160, !"_ZZN7rocksdb12_GLOBAL__N_116MemTableInserter14PutBlobIndexCFEjRKNS_5SliceES4_ENKUlPNS_10WriteBatchEjS4_S4_E_clES6_jS4_S4_: argument 0"}
!1162 = distinct !{!1162, i1 false, !"_ZN7rocksdb6Status12NotSupportedENS0_7SubCodeE"}
!1163 = distinct !{!1163, !1162, !"_ZN7rocksdb6Status12NotSupportedENS0_7SubCodeE: argument 0"}
!1164 = distinct !{!1164, i1 false, !"_ZZN7rocksdb12_GLOBAL__N_116MemTableInserter14PutBlobIndexCFEjRKNS_5SliceES4_ENKUlPNS_10WriteBatchEjS4_S4_E_clES6_jS4_S4_"}
!1165 = distinct !{!1165, !1164, !"_ZZN7rocksdb12_GLOBAL__N_116MemTableInserter14PutBlobIndexCFEjRKNS_5SliceES4_ENKUlPNS_10WriteBatchEjS4_S4_E_clES6_jS4_S4_: argument 0"}
!1166 = distinct !{!1166, i1 false, !"_ZN7rocksdb6Status12NotSupportedENS0_7SubCodeE"}
!1167 = distinct !{!1167, !1166, !"_ZN7rocksdb6Status12NotSupportedENS0_7SubCodeE: argument 0"}
!1168 = distinct !{!1168, i1 false, !"_ZZN7rocksdb12_GLOBAL__N_116MemTableInserter14PutBlobIndexCFEjRKNS_5SliceES4_ENKUlPNS_10WriteBatchEjS4_S4_E_clES6_jS4_S4_"}
!1169 = distinct !{!1169, !1168, !"_ZZN7rocksdb12_GLOBAL__N_116MemTableInserter14PutBlobIndexCFEjRKNS_5SliceES4_ENKUlPNS_10WriteBatchEjS4_S4_E_clES6_jS4_S4_: argument 0"}
!1170 = distinct !{!1170, i1 false, !"_ZN7rocksdb6Status12NotSupportedENS0_7SubCodeE"}
!1171 = distinct !{!1171, !1170, !"_ZN7rocksdb6Status12NotSupportedENS0_7SubCodeE: argument 0"}
!1172 = !{!1163, !1161}
!1173 = !{!1167, !1165}
!1174 = !{!1171, !1169}
!1175 = !{!489, !489, i64 0}
!1176 = distinct !{!1176, !83}
!1177 = distinct !{!1177, !83}
!1178 = !{!531, !24, i64 0}
!1179 = distinct !{!1179, !83}
!1180 = distinct !{!1180, !83}
!1181 = !{!535, !533, i64 0}
!1182 = distinct !{!1182, !83}
!1183 = !{!484, !52, i64 48}
!1184 = distinct !{!1184, !83}
!1185 = distinct !{null}
!1186 = !{!531, !24, i64 8}
!1187 = !{!531, !186, i64 16}
!1188 = !{!"_ZTSZN7rocksdb12_GLOBAL__N_116MemTableInserter23MarkCommitWithTimestampERKNS_5SliceES4_EUljE_", !495, i64 0}
!1189 = !{!1188, !495, i64 0}
!1190 = !{!483, !483, i64 0}
!1191 = !{!423, !423, i64 0}
!1192 = !{!21, !21, i64 0}
!1193 = !{!"p1 _ZTSSt9type_info", !21, i64 0}
!1194 = !{!1193, !1193, i64 0}
!1195 = distinct !{!1195, !83}
!1196 = distinct !{!1196, i1 false, !"_ZSt19__relocate_object_aIN7rocksdb18ProtectionInfoKVOCImEES2_SaIS2_EEvPT_PT0_RT1_"}
!1197 = distinct !{!1197, !1196, !"_ZSt19__relocate_object_aIN7rocksdb18ProtectionInfoKVOCImEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!1198 = distinct !{!1198, !1196, !"_ZSt19__relocate_object_aIN7rocksdb18ProtectionInfoKVOCImEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!1199 = distinct !{!1199, !83, !194, !195}
!1200 = distinct !{!1200, !83, !194, !195}
!1201 = distinct !{!1201, !83, !194}
!1202 = !{!1197}
!1203 = !{!1198}
!1204 = distinct !{!1204, i1 false, !"_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater14UpdateProtInfoEjRKNS_5SliceES4_NS_9ValueTypeE"}
!1205 = distinct !{!1205, !1204, !"_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater14UpdateProtInfoEjRKNS_5SliceES4_NS_9ValueTypeE: argument 0"}
!1206 = distinct !{!1206, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!1207 = distinct !{!1207, !1206, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!1208 = !{!1205}
!1209 = !{!1207, !1205}
!1210 = distinct !{!1210, i1 false, !"_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater14UpdateProtInfoEjRKNS_5SliceERKNS_10SlicePartsENS_9ValueTypeE"}
!1211 = distinct !{!1211, !1210, !"_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater14UpdateProtInfoEjRKNS_5SliceERKNS_10SlicePartsENS_9ValueTypeE: argument 0"}
!1212 = distinct !{!1212, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!1213 = distinct !{!1213, !1212, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!1214 = !{!1211}
!1215 = !{!1213, !1211}
!1216 = distinct !{!1216, i1 false, !"_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater14UpdateProtInfoEjRKNS_5SliceES4_NS_9ValueTypeE"}
!1217 = distinct !{!1217, !1216, !"_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater14UpdateProtInfoEjRKNS_5SliceES4_NS_9ValueTypeE: argument 0"}
!1218 = distinct !{!1218, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!1219 = distinct !{!1219, !1218, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!1220 = !{!1217}
!1221 = !{!1219, !1217}
!1222 = distinct !{!1222, i1 false, !"_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater14UpdateProtInfoEjRKNS_5SliceES4_NS_9ValueTypeE"}
!1223 = distinct !{!1223, !1222, !"_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater14UpdateProtInfoEjRKNS_5SliceES4_NS_9ValueTypeE: argument 0"}
!1224 = distinct !{!1224, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!1225 = distinct !{!1225, !1224, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!1226 = !{!1223}
!1227 = !{!1225, !1223}
!1228 = distinct !{!1228, i1 false, !"_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater14UpdateProtInfoEjRKNS_5SliceES4_NS_9ValueTypeE"}
!1229 = distinct !{!1229, !1228, !"_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater14UpdateProtInfoEjRKNS_5SliceES4_NS_9ValueTypeE: argument 0"}
!1230 = distinct !{!1230, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!1231 = distinct !{!1231, !1230, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!1232 = !{!1229}
!1233 = !{!1231, !1229}
!1234 = distinct !{!1234, i1 false, !"_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater14UpdateProtInfoEjRKNS_5SliceES4_NS_9ValueTypeE"}
!1235 = distinct !{!1235, !1234, !"_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater14UpdateProtInfoEjRKNS_5SliceES4_NS_9ValueTypeE: argument 0"}
!1236 = distinct !{!1236, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!1237 = distinct !{!1237, !1236, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!1238 = !{!1235}
!1239 = !{!1237, !1235}
!1240 = distinct !{!1240, i1 false, !"_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater14UpdateProtInfoEjRKNS_5SliceES4_NS_9ValueTypeE"}
!1241 = distinct !{!1241, !1240, !"_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater14UpdateProtInfoEjRKNS_5SliceES4_NS_9ValueTypeE: argument 0"}
!1242 = distinct !{!1242, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!1243 = distinct !{!1243, !1242, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!1244 = !{!1241}
!1245 = !{!1243, !1241}
!1246 = distinct !{!1246, i1 false, !"_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater14UpdateProtInfoEjRKNS_5SliceES4_NS_9ValueTypeE"}
!1247 = distinct !{!1247, !1246, !"_ZN7rocksdb12_GLOBAL__N_121ProtectionInfoUpdater14UpdateProtInfoEjRKNS_5SliceES4_NS_9ValueTypeE: argument 0"}
!1248 = distinct !{!1248, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!1249 = distinct !{!1249, !1248, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!1250 = !{!1247}
!1251 = !{!1249, !1247}
!1252 = distinct !{!1252, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!1253 = distinct !{!1253, !1252, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!1254 = !{!1253}
!1255 = distinct !{!1255, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!1256 = distinct !{!1256, !1255, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!1257 = !{!1256}
!1258 = distinct !{!1258, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!1259 = distinct !{!1259, !1258, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!1260 = !{!1259}
!1261 = distinct !{!1261, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!1262 = distinct !{!1262, !1261, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!1263 = !{!1262}
!1264 = distinct !{!1264, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!1265 = distinct !{!1265, !1264, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!1266 = !{!1265}
!1267 = distinct !{!1267, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!1268 = distinct !{!1268, !1267, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!1269 = !{!1268}
!1270 = distinct !{!1270, i1 false, !"_ZSt19__relocate_object_aIN7rocksdb18ProtectionInfoKVOCImEES2_SaIS2_EEvPT_PT0_RT1_"}
!1271 = distinct !{!1271, !1270, !"_ZSt19__relocate_object_aIN7rocksdb18ProtectionInfoKVOCImEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!1272 = distinct !{!1272, !1270, !"_ZSt19__relocate_object_aIN7rocksdb18ProtectionInfoKVOCImEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!1273 = distinct !{!1273, !83, !194, !195}
!1274 = distinct !{!1274, !83, !194, !195}
!1275 = distinct !{!1275, !83, !194}
!1276 = !{!1271}
!1277 = !{!1272}
!1278 = distinct !{!1278, !83, !194, !195}
!1279 = distinct !{!1279, !83, !194, !195}
!1280 = distinct !{!1280, !83, !194}
!1281 = distinct !{!1281, i1 false, !"_ZSt19__relocate_object_aIN7rocksdb9SavePointES1_SaIS1_EEvPT_PT0_RT1_"}
!1282 = distinct !{!1282, !1281, !"_ZSt19__relocate_object_aIN7rocksdb9SavePointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!1283 = distinct !{!1283, !1281, !"_ZSt19__relocate_object_aIN7rocksdb9SavePointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!1284 = distinct !{!1284, !83}
!1285 = !{!1283, !1282}
!1286 = distinct !{!1286, i1 false, !"_ZN7rocksdb16TimestampUpdaterISt8functionIFmjEEE15UpdateTimestampEjRKNS_5SliceEb"}
!1287 = distinct !{!1287, !1286, !"_ZN7rocksdb16TimestampUpdaterISt8functionIFmjEEE15UpdateTimestampEjRKNS_5SliceEb: argument 0"}
!1288 = !{!1287}
!1289 = distinct !{!1289, i1 false, !"_ZN7rocksdb16TimestampUpdaterISt8functionIFmjEEE15UpdateTimestampEjRKNS_5SliceEb"}
!1290 = distinct !{!1290, !1289, !"_ZN7rocksdb16TimestampUpdaterISt8functionIFmjEEE15UpdateTimestampEjRKNS_5SliceEb: argument 0"}
!1291 = !{!1290}
!1292 = distinct !{!1292, i1 false, !"_ZN7rocksdb16TimestampUpdaterISt8functionIFmjEEE15UpdateTimestampEjRKNS_5SliceEb"}
!1293 = distinct !{!1293, !1292, !"_ZN7rocksdb16TimestampUpdaterISt8functionIFmjEEE15UpdateTimestampEjRKNS_5SliceEb: argument 0"}
!1294 = !{!1293}
!1295 = distinct !{!1295, i1 false, !"_ZN7rocksdb16TimestampUpdaterISt8functionIFmjEEE15UpdateTimestampEjRKNS_5SliceEb"}
!1296 = distinct !{!1296, !1295, !"_ZN7rocksdb16TimestampUpdaterISt8functionIFmjEEE15UpdateTimestampEjRKNS_5SliceEb: argument 0"}
!1297 = distinct !{!1297, i1 false, !"_ZN7rocksdb16TimestampUpdaterISt8functionIFmjEEE15UpdateTimestampEjRKNS_5SliceEb"}
!1298 = distinct !{!1298, !1297, !"_ZN7rocksdb16TimestampUpdaterISt8functionIFmjEEE15UpdateTimestampEjRKNS_5SliceEb: argument 0"}
!1299 = !{!1296}
!1300 = !{!1298}
!1301 = distinct !{!1301, i1 false, !"_ZN7rocksdb16TimestampUpdaterISt8functionIFmjEEE15UpdateTimestampEjRKNS_5SliceEb"}
!1302 = distinct !{!1302, !1301, !"_ZN7rocksdb16TimestampUpdaterISt8functionIFmjEEE15UpdateTimestampEjRKNS_5SliceEb: argument 0"}
!1303 = !{!1302}
!1304 = distinct !{!1304, i1 false, !"_ZN7rocksdb16TimestampUpdaterISt8functionIFmjEEE15UpdateTimestampEjRKNS_5SliceEb"}
!1305 = distinct !{!1305, !1304, !"_ZN7rocksdb16TimestampUpdaterISt8functionIFmjEEE15UpdateTimestampEjRKNS_5SliceEb: argument 0"}
!1306 = !{!1305}
!1307 = distinct !{!1307, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!1308 = distinct !{!1308, !1307, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!1309 = !{!1308}
!1310 = distinct !{!1310, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!1311 = distinct !{!1311, !1310, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!1312 = !{!1311}
!1313 = distinct !{!1313, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!1314 = distinct !{!1314, !1313, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!1315 = !{!1314}
!1316 = distinct !{!1316, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!1317 = distinct !{!1317, !1316, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!1318 = !{!1317}
!1319 = distinct !{!1319, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!1320 = distinct !{!1320, !1319, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!1321 = !{!1320}
!1322 = distinct !{!1322, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!1323 = distinct !{!1323, !1322, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!1324 = !{!1323}
!1325 = distinct !{null}
!1326 = distinct !{!1326, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!1327 = distinct !{!1327, !1326, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!1328 = distinct !{!1328, i1 false, !"_ZN7rocksdb6Status8NotFoundENS0_7SubCodeE"}
!1329 = distinct !{!1329, !1328, !"_ZN7rocksdb6Status8NotFoundENS0_7SubCodeE: argument 0"}
!1330 = distinct !{!1330, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!1331 = distinct !{!1331, !1330, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!1332 = !{!1327}
!1333 = !{!1329}
!1334 = !{!1331}
!1335 = !{!"_ZTSN7rocksdb12ThreadStatus13OperationTypeE", !17, i64 0}
!1336 = !{!"_ZTSN7rocksdb13OperationInfoE", !1335, i64 0, !25, i64 8}
!1337 = !{!1336, !1335, i64 0}
!1338 = !{!"_ZTSN7rocksdb12ThreadStatus14OperationStageE", !17, i64 0}
!1339 = !{!"_ZTSN7rocksdb18OperationStageInfoE", !1338, i64 0, !25, i64 8}
!1340 = !{!1339, !1338, i64 0}
!1341 = !{!"_ZTSN7rocksdb17OperationPropertyE", !18, i64 0, !25, i64 8}
!1342 = !{!1341, !18, i64 0}
end_hunk_4
