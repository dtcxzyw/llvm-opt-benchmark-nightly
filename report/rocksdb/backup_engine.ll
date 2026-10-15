Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/backup_engine?download=true
inline.NumInlined: 7838
inline.NumDeleted: 2946
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_:bb.a
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !91
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !92
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !92
  store ptr %i.u, ptr %i.r, align 8, !tbaa !90
  store i64 0, ptr %i.ab, align 8, !tbaa !92
  store i8 0, ptr %i.u, align 8, !tbaa !91
  br label %bb.l

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.ae = sub i64 9223372036854775807, %i.b
  %i.af = icmp ult i64 %i.ae, %i.d
  br i1 %i.af, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #35
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.d
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ag = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ag)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ah = load i64, ptr %i.g, align 8, !tbaa !91
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
  %i.ak = load i8, ptr %.pre, align 1, !tbaa !91
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !91
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %.pre, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.b, i64 noundef 0, ptr noundef %.pre, i64 noundef %i.d)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.f, %bb.h, %bb.i, %bb.j
  store i64 %i.e, ptr %i.a, align 8, !tbaa !92
  %i.al = load ptr, ptr %1, align 8, !tbaa !90
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.e
  store i8 0, ptr %i.am, align 1, !tbaa !91
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.an, ptr %0, align 8, !tbaa !86
  %i.ao = load ptr, ptr %1, align 8, !tbaa !90    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.g
  br i1 %i.ap, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !92  ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.as, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.ao, ptr %0, align 8, !tbaa !90
  %i.at = load i64, ptr %i.g, align 8, !tbaa !91
  store i64 %i.at, ptr %i.an, align 8, !tbaa !91
  %.pre18 = load i64, ptr %i.a, align 8, !tbaa !92
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16
  %i.au = phi i64 [ %i.aq, %bb.k ], [ %.pre18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16 ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.au, ptr %i.av, align 8, !tbaa !92
  store ptr %i.g, ptr %1, align 8, !tbaa !90
  store i64 0, ptr %i.a, align 8, !tbaa !92
  store i8 0, ptr %i.g, align 8, !tbaa !91
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !90     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !92   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !92   ; 5 uses
  %i.f = sub i64 9223372036854775807, %i.e
  %i.g = icmp ult i64 %i.f, %i.c
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #35
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.h = add i64 %i.e, %i.c                       ; 3 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !90     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = icmp ult i64 %i.e, 16
  tail call void @llvm.assume(i1 %i.l)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.m = load i64, ptr %i.j, align 8, !tbaa !91
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.n = phi i64 [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.h, %i.n
  br i1 %.not.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.e ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.c, 1
  br i1 %cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.a, align 1, !tbaa !91
  store i8 %i.p, ptr %i.o, align 1, !tbaa !91
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.a, i64 %i.c, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.e, i64 noundef 0, ptr noundef %i.a, i64 noundef %i.c)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.h, ptr %i.d, align 8, !tbaa !92
  %i.q = load ptr, ptr %1, align 8, !tbaa !90
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.h
  store i8 0, ptr %i.r, align 1, !tbaa !91
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !86
  %i.t = load ptr, ptr %1, align 8, !tbaa !90     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.j
  br i1 %i.u, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.v = load i64, ptr %i.d, align 8, !tbaa !92   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.t, ptr %0, align 8, !tbaa !90
  %i.y = load i64, ptr %i.j, align 8, !tbaa !91
  store i64 %i.y, ptr %i.s, align 8, !tbaa !91
  %.pre = load i64, ptr %i.d, align 8, !tbaa !92
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.z = phi i64 [ %i.v, %bb.h ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !92
  store ptr %i.j, ptr %1, align 8, !tbaa !90
  store i64 0, ptr %i.d, align 8, !tbaa !92
  store i8 0, ptr %i.j, align 8, !tbaa !91
  ret void
}

declare noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK7rocksdb12_GLOBAL__N_116BackupEngineImpl8FileInfo13GetDbFileNameB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(145) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !86
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  store i64 0, ptr %i.b, align 8, !tbaa !92
  store i8 0, ptr %i.a, align 8, !tbaa !91
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !92   ; 5 uses
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEcm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %.not13.i.i = icmp eq i64 %i.g, 0
  br i1 %.not13.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEcm.exit, label %bb.d, !llvm.loop !17

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1.i.i90 = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %i.g = add i64 %.1.i.i90, -1                    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !91
  %i.j = icmp eq i8 %i.i, 47
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEcm.exit, label %bb.c, !llvm.loop !17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEcm.exit: ; preds = %bb.c, %bb.d, %bb.a
  %.09.i.i = phi i64 [ -1, %bb.a ], [ -1, %bb.c ], [ %i.g, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.k = add i64 %.09.i.i, 1                      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !764)
  %i.l = icmp ugt i64 %i.k, %i.e
  br i1 %i.l, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEcm.exit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.72, i64 noundef %i.k, i64 noundef %i.e) #35
          to label %.noexc unwind label %bb.av

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEcm.exit
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !86, !alias.scope !764
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !90, !noalias !764
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k ; 2 uses
  %i.p = sub nuw i64 %i.e, %i.k                   ; 8 uses
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %bb.f, label %._crit_edge.i.i.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.r = icmp slt i64 %i.p, 0
  br i1 %i.r, label %.noexc10.i.i, label %bb.g

.noexc10.i.i:                                     ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.60) #35
          to label %.noexc8 unwind label %bb.av

.noexc8:                                          ; preds = %.noexc10.i.i
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.s = add nuw i64 %i.p, 1                      ; 2 uses
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !87

.noexc11.i.i:                                     ; preds = %bb.g
  invoke void @_ZSt17__throw_bad_allocv() #35
          to label %.noexc9 unwind label %bb.av

.noexc9:                                          ; preds = %.noexc11.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.g
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #37
          to label %.noexc10 unwind label %bb.av  ; 2 uses

.noexc10:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.u, ptr %3, align 8, !tbaa !90, !alias.scope !764
  store i64 %i.p, ptr %i.m, align 8, !tbaa !91, !alias.scope !764
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.v = phi ptr [ %i.u, %.noexc10 ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 3 uses
  switch i64 %i.p, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.w = load i8, ptr %i.o, align 1, !tbaa !91
  store i8 %i.w, ptr %i.v, align 1, !tbaa !91
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr align 1 %i.o, i64 %i.p, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 %i.p, ptr %i.x, align 8, !tbaa !92, !alias.scope !764
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.p
  store i8 0, ptr %i.y, align 1, !tbaa !91
  %i.z = load ptr, ptr %0, align 8, !tbaa !90     ; 6 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  %i.ab = load ptr, ptr %3, align 8, !tbaa !90    ; 6 uses
  %i.ac = icmp eq ptr %i.ab, %i.m                 ; 2 uses
  br i1 %i.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.j
  br i1 %i.ac, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.j
  br i1 %i.ac, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !92  ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %.not21.i = icmp eq ptr %3, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.l, !prof !87

bb.l:                                             ; preds = %bb.k
  switch i64 %i.ad, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.af = load i8, ptr %i.ab, align 1, !tbaa !91
  store i8 %i.af, ptr %i.z, align 1, !tbaa !91
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.ab, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.ag = load i64, ptr %i.x, align 8, !tbaa !92  ; 2 uses
  store i64 %i.ag, ptr %i.b, align 8, !tbaa !92
  %i.ah = load ptr, ptr %0, align 8, !tbaa !90
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  store i8 0, ptr %i.ai, align 1, !tbaa !91
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !90
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ab, ptr %0, align 8, !tbaa !90
  %i.aj = load <2 x i64>, ptr %i.x, align 8, !tbaa !91
  store <2 x i64> %i.aj, ptr %i.b, align 8, !tbaa !91
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !91
  store ptr %i.ab, ptr %0, align 8, !tbaa !90
  %i.al = load <2 x i64>, ptr %i.x, align 8, !tbaa !91
  store <2 x i64> %i.al, ptr %i.b, align 8, !tbaa !91
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.z, ptr %3, align 8, !tbaa !90
  store i64 %i.ak, ptr %i.m, align 8, !tbaa !91
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.m, ptr %3, align 8, !tbaa !90
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.o, %bb.p
  %i.am = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.z, %bb.o ], [ %i.m, %bb.p ], [ %i.ab, %bb.k ]
  store i64 0, ptr %i.x, align 8, !tbaa !92
  store i8 0, ptr %i.am, align 1, !tbaa !91
  %i.an = load ptr, ptr %3, align 8, !tbaa !90    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.m
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ap = load i64, ptr %i.m, align 8, !tbaa !91
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !765)
  %i.ar = load i64, ptr %i.d, align 8, !tbaa !92, !noalias !765
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.as, ptr %4, align 8, !tbaa !86, !alias.scope !765
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !90, !noalias !765 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.09.i.i, i64 %i.ar) ; 8 uses
  %i.au = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.au, label %bb.q, label %._crit_edge.i.i.i12

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = icmp slt i64 %spec.select.i.i.i, 0
  br i1 %i.av, label %.noexc10.i.i15, label %bb.r

.noexc10.i.i15:                                   ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.60) #35
          to label %.noexc16 unwind label %bb.aw

.noexc16:                                         ; preds = %.noexc10.i.i15
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.aw = add nuw i64 %spec.select.i.i.i, 1       ; 2 uses
  %i.ax = icmp slt i64 %i.aw, 0
  br i1 %i.ax, label %.noexc11.i.i14, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i13, !prof !87

.noexc11.i.i14:                                   ; preds = %bb.r
  invoke void @_ZSt17__throw_bad_allocv() #35
          to label %.noexc17 unwind label %bb.aw

.noexc17:                                         ; preds = %.noexc11.i.i14
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i13: ; preds = %bb.r
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #37
          to label %.noexc18 unwind label %bb.aw  ; 2 uses

.noexc18:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i13
  store ptr %i.ay, ptr %4, align 8, !tbaa !90, !alias.scope !765
  store i64 %spec.select.i.i.i, ptr %i.as, align 8, !tbaa !91, !alias.scope !765
  br label %._crit_edge.i.i.i12

._crit_edge.i.i.i12:                              ; preds = %.noexc18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.az = phi ptr [ %i.ay, %.noexc18 ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  switch i64 %spec.select.i.i.i, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i12
  %i.ba = load i8, ptr %i.at, align 1, !tbaa !91
  store i8 %i.ba, ptr %i.az, align 1, !tbaa !91
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i.i12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.az, ptr align 1 %i.at, i64 %spec.select.i.i.i, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i.i12
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %spec.select.i.i.i, ptr %i.bb, align 8, !tbaa !92, !alias.scope !765
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %spec.select.i.i.i
  store i8 0, ptr %i.bc, align 1, !tbaa !91
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !92 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 15
  %.pre = load ptr, ptr %4, align 8, !tbaa !90    ; 4 uses
  br i1 %i.be, label %bb.v, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.v:                                             ; preds = %bb.u
  %i.bf = load i64, ptr %.pre, align 1
  %i.bg = xor i64 %i.bf, 7160552319415838835
  %i.bh = getelementptr i8, ptr %.pre, i64 7
  %i.bi = load i64, ptr %i.bh, align 1
  %i.bj = xor i64 %i.bi, 7887337227475576931
  %i.bk = or i64 %i.bg, %i.bj
  %i.bl = icmp ne i64 %i.bk, 0
  %i.bm = zext i1 %i.bl to i32
  %i.bn = icmp eq i32 %i.bm, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.u, %bb.v
  %i.bo = phi i1 [ false, %bb.u ], [ %i.bn, %bb.v ]
  %i.bp = icmp eq ptr %.pre, %i.as
  br i1 %i.bp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i21: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.bq = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.bq)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.br = load i64, ptr %i.as, align 8, !tbaa !91
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.bs) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br i1 %i.bo, label %bb.w, label %bb.az

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %.val = load ptr, ptr %0, align 8, !tbaa !90    ; 2 uses
  %.val7 = load i64, ptr %i.b, align 8, !tbaa !92 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !766)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36, !noalias !766
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.bt, ptr %2, align 8, !tbaa !86, !noalias !766
  %i.bu = icmp ugt i64 %.val7, 15
  br i1 %i.bu, label %bb.x, label %._crit_edge.i.i.i23

bb.x:                                             ; preds = %bb.w
  %i.bv = icmp slt i64 %.val7, 0
  br i1 %i.bv, label %.noexc.i.i, label %bb.y

.noexc.i.i:                                       ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.60) #35
          to label %.noexc29 unwind label %bb.ax

.noexc29:                                         ; preds = %.noexc.i.i
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.bw = add nuw i64 %.val7, 1                   ; 2 uses
  %i.bx = icmp slt i64 %i.bw, 0
  br i1 %i.bx, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i28, !prof !87

.noexc6.i.i:                                      ; preds = %bb.y
  invoke void @_ZSt17__throw_bad_allocv() #35
          to label %.noexc30 unwind label %bb.ax

.noexc30:                                         ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i28: ; preds = %bb.y
  %i.by = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #37
          to label %.noexc31 unwind label %bb.ax  ; 2 uses

.noexc31:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i28
  store ptr %i.by, ptr %2, align 8, !tbaa !90, !noalias !766
  store i64 %.val7, ptr %i.bt, align 8, !tbaa !91, !noalias !766
  br label %._crit_edge.i.i.i23

._crit_edge.i.i.i23:                              ; preds = %.noexc31, %bb.w
  %i.bz = phi ptr [ %i.by, %.noexc31 ], [ %i.bt, %bb.w ] ; 3 uses
  switch i64 %.val7, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i23
  %i.ca = load i8, ptr %.val, align 1, !tbaa !91, !noalias !766
  store i8 %i.ca, ptr %i.bz, align 1, !tbaa !91, !noalias !766
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.aa:                                            ; preds = %._crit_edge.i.i.i23
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr readonly align 1 %.val, i64 %.val7, i1 false), !noalias !766
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.aa, %bb.z, %._crit_edge.i.i.i23
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i64 %.val7, ptr %i.cb, align 8, !tbaa !92, !noalias !766
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.val7
  store i8 0, ptr %i.cc, align 1, !tbaa !91, !noalias !766
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !92, !noalias !766 ; 9 uses
  %.not.i24 = icmp eq i64 %i.cd, 0
  br i1 %.not.i24, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ce = load ptr, ptr %2, align 8, !tbaa !90, !noalias !766 ; 6 uses
  %i.cf = call ptr @memchr(ptr noundef %i.ce, i32 noundef 95, i64 noundef %i.cd) #36, !noalias !766 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cf, null
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %.0.i.i.i = select i1 %.not.i.i.i, i64 -1, i64 %i.ci ; 7 uses
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ad
  %.not13.i.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not13.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEcm.exit.i, label %bb.ad, !llvm.loop !17

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.1.i.i5.i91 = phi i64 [ %i.cd, %bb.ab ], [ %i.cj, %bb.ac ]
  %i.cj = add i64 %.1.i.i5.i91, -1                ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !91, !noalias !766
  %i.cm = icmp eq i8 %i.cl, 46
  br i1 %i.cm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEcm.exit.i, label %bb.ac, !llvm.loop !17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEcm.exit.i: ; preds = %bb.ad, %bb.ac
  %.09.i.i.i = phi i64 [ -1, %bb.ac ], [ %i.cj, %bb.ad ]
  %i.cn = sub i64 %.09.i.i.i, %.0.i.i.i           ; 2 uses
  %i.co = icmp ugt i64 %.0.i.i.i, %i.cd
  br i1 %i.co, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i25

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEcm.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %.1.i.i36.i = phi i64 [ %.0.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEcm.exit.i ], [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.74, i64 noundef %.1.i.i36.i, i64 noundef %i.cd) #35
          to label %.noexc.i unwind label %bb.ao, !noalias !766

.noexc.i:                                         ; preds = %bb.ae
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i25: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEcm.exit.i
  switch i64 %i.cn, label %bb.af [
    i64 -1, label %.sink.split.i.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i
  ]

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i25
  %i.cp = sub nuw i64 %i.cd, %.0.i.i.i
  %spec.select.i.i.i27 = call noundef i64 @llvm.umin.i64(i64 %i.cn, i64 %i.cp) ; 4 uses
  %i.cq = add i64 %spec.select.i.i.i27, %.0.i.i.i ; 2 uses
  %i.cr = icmp ne i64 %i.cd, %i.cq
  %i.cs = icmp ne i64 %spec.select.i.i.i27, 0
  %or.cond.i.i.i = and i1 %i.cs, %i.cr
  br i1 %or.cond.i.i.i, label %bb.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i

bb.ag:                                            ; preds = %bb.af
  %i.ct = sub i64 %i.cd, %i.cq                    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.0.i.i.i ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %spec.select.i.i.i27 ; 2 uses
  switch i64 %i.ct, label %bb.ai [
    i64 1, label %bb.ah
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !91, !noalias !766
  store i8 %i.cw, ptr %i.cu, align 1, !tbaa !91, !noalias !766
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cu, ptr nonnull align 1 %i.cv, i64 %i.ct, i1 false), !noalias !766
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i: ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %i.cx = load i64, ptr %i.cb, align 8, !tbaa !92, !noalias !766
  %i.cy = sub i64 %i.cx, %spec.select.i.i.i27
  %.pre.i27 = load ptr, ptr %2, align 8, !tbaa !90, !noalias !766
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i25
  %6 = phi ptr [ %.pre.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i25 ]
  %.sink.i.i = phi i64 [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i ], [ %.0.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i25 ] ; 2 uses
  store i64 %.sink.i.i, ptr %i.cb, align 8, !tbaa !92, !noalias !766
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 %.sink.i.i
  store i8 0, ptr %7, align 1, !tbaa !91, !noalias !766
  %.pre7.i = load ptr, ptr %2, align 8, !tbaa !90, !noalias !766
  %.pre.i26 = load i64, ptr %i.cb, align 8, !tbaa !92, !noalias !766
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i: ; preds = %.sink.split.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i25
  %i.cz = phi i64 [ %.pre.i26, %.sink.split.i.i ], [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i25 ] ; 8 uses
  %8 = phi ptr [ %.pre7.i, %.sink.split.i.i ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i25 ] ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  store ptr %9, ptr %5, align 8, !tbaa !86, !alias.scope !766
  %i.da = icmp ugt i64 %i.cz, 15
  br i1 %i.da, label %bb.aj, label %._crit_edge.i.i6.i

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i
  %i.db = icmp slt i64 %i.cz, 0
  br i1 %i.db, label %.noexc.i9.i, label %bb.ak

.noexc.i9.i:                                      ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.60) #35
          to label %.noexc10.i unwind label %bb.ao

.noexc10.i:                                       ; preds = %.noexc.i9.i
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.dc = add nuw i64 %i.cz, 1                    ; 2 uses
  %i.dd = icmp slt i64 %i.dc, 0
  br i1 %i.dd, label %.noexc6.i8.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i7.i, !prof !87

.noexc6.i8.i:                                     ; preds = %bb.ak
  invoke void @_ZSt17__throw_bad_allocv() #35
          to label %.noexc11.i unwind label %bb.ao

.noexc11.i:                                       ; preds = %.noexc6.i8.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i7.i: ; preds = %bb.ak
  %i.de = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #37
          to label %.noexc12.i unwind label %bb.ao ; 2 uses

.noexc12.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i7.i
  store ptr %i.de, ptr %5, align 8, !tbaa !90, !alias.scope !766
  store i64 %i.cz, ptr %9, align 8, !tbaa !91, !alias.scope !766
  br label %._crit_edge.i.i6.i

._crit_edge.i.i6.i:                               ; preds = %.noexc12.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i
  %i.df = phi ptr [ %i.de, %.noexc12.i ], [ %9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i ] ; 3 uses
  switch i64 %i.cz, label %bb.am [
    i64 1, label %bb.al
    i64 0, label %bb.an
  ]

bb.al:                                            ; preds = %._crit_edge.i.i6.i
  %i.dg = load i8, ptr %8, align 1, !tbaa !91
  store i8 %i.dg, ptr %i.df, align 1, !tbaa !91
  br label %bb.an

bb.am:                                            ; preds = %._crit_edge.i.i6.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.df, ptr align 1 %8, i64 %i.cz, i1 false)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %._crit_edge.i.i6.i
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i64 %i.cz, ptr %i.dh, align 8, !tbaa !92, !alias.scope !766
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cz
  store i8 0, ptr %i.di, align 1, !tbaa !91
  %i.dj = load ptr, ptr %2, align 8, !tbaa !90, !noalias !766 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.bt
  br i1 %i.dk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.an
  %i.dl = load i64, ptr %i.bt, align 8, !tbaa !91, !noalias !766
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i7.i, %.noexc6.i8.i, %.noexc.i9.i, %bb.ae
  %i.dn = landingpad { ptr, i32 }
          cleanup
  %i.do = load ptr, ptr %2, align 8, !tbaa !90, !noalias !766 ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.bt
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i: ; preds = %bb.ao
  %i.dq = load i64, ptr %i.bt, align 8, !tbaa !91, !noalias !766
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36, !noalias !766
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36, !noalias !766
  %i.ds = load ptr, ptr %0, align 8, !tbaa !90    ; 6 uses
  %i.dt = icmp eq ptr %i.ds, %i.a
  %i.du = load ptr, ptr %5, align 8, !tbaa !90    ; 6 uses
  %i.dv = icmp eq ptr %i.du, %9                   ; 2 uses
  br i1 %i.dt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i38: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  br i1 %i.dv, label %bb.ap, label %.thread.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i32: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  br i1 %i.dv, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i33

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i38
  %i.dw = load i64, ptr %i.dh, align 8, !tbaa !92 ; 3 uses
  %i.dx = icmp ult i64 %i.dw, 16
  call void @llvm.assume(i1 %i.dx)
  %.not21.i35 = icmp eq ptr %5, %0
  br i1 %.not21.i35, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit40, label %bb.aq, !prof !87

bb.aq:                                            ; preds = %bb.ap
  switch i64 %i.dw, label %bb.as [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i36
    i64 1, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.dy = load i8, ptr %i.du, align 1, !tbaa !91
  store i8 %i.dy, ptr %i.ds, align 1, !tbaa !91
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i36

bb.as:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ds, ptr align 1 %i.du, i64 %i.dw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i36: ; preds = %bb.as, %bb.ar, %bb.aq
  %i.dz = load i64, ptr %i.dh, align 8, !tbaa !92 ; 2 uses
  store i64 %i.dz, ptr %i.b, align 8, !tbaa !92
  %i.ea = load ptr, ptr %0, align 8, !tbaa !90
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dz
  store i8 0, ptr %i.eb, align 1, !tbaa !91
  %.pre.i37 = load ptr, ptr %5, align 8, !tbaa !90
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit40

.thread.i39:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i38
  store ptr %i.du, ptr %0, align 8, !tbaa !90
  %i.ec = load <2 x i64>, ptr %i.dh, align 8, !tbaa !91
  store <2 x i64> %i.ec, ptr %i.b, align 8, !tbaa !91
  br label %bb.au

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i32
  %i.ed = load i64, ptr %i.a, align 8, !tbaa !91
  store ptr %i.du, ptr %0, align 8, !tbaa !90
  %i.ee = load <2 x i64>, ptr %i.dh, align 8, !tbaa !91
  store <2 x i64> %i.ee, ptr %i.b, align 8, !tbaa !91
  %.not.i34 = icmp eq ptr %i.ds, null
  br i1 %.not.i34, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i33
  store ptr %i.ds, ptr %5, align 8, !tbaa !90
  store i64 %i.ed, ptr %9, align 8, !tbaa !91
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit40

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i33, %.thread.i39
  store ptr %9, ptr %5, align 8, !tbaa !90
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit40: ; preds = %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i36, %bb.at, %bb.au
  %i.ef = phi ptr [ %.pre.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i36 ], [ %i.ds, %bb.at ], [ %9, %bb.au ], [ %i.du, %bb.ap ]
  store i64 0, ptr %i.dh, align 8, !tbaa !92
  store i8 0, ptr %i.ef, align 1, !tbaa !91
  %i.eg = load ptr, ptr %5, align 8, !tbaa !90    ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %9
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit40
  %i.ei = load i64, ptr %9, align 8, !tbaa !91
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.az

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc11.i.i, %.noexc10.i.i, %bb.e
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.ay

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i13, %.noexc11.i.i14, %.noexc10.i.i15
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.ay

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i28, %.noexc6.i.i, %.noexc.i.i
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i, %bb.ax
  %eh.lpad-body = phi { ptr, i32 } [ %i.em, %bb.ax ], [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.ay

bb.ay:                                            ; preds = %.body, %bb.aw, %bb.av
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.el, %bb.aw ], [ %i.ek, %bb.av ]
  %i.en = load ptr, ptr %0, align 8, !tbaa !90    ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.a
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.ay
  %i.ep = load i64, ptr %i.a, align 8, !tbaa !91
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  resume { ptr, i32 } %.pn

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN7rocksdb22BackupExcludedFileInfoESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !292  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !291    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %i.g = ashr exact i64 %i.f, 5                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !293
  %i.j = load ptr, ptr %0, align 8, !tbaa !291    ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef ptr @_ZNSt6vectorIN7rocksdb22BackupExcludedFileInfoESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.g, ptr %i.c, ptr %i.b) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !291    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !292  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7rocksdb22BackupExcludedFileInfoEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_ZSt8_DestroyIN7rocksdb22BackupExcludedFileInfoEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.x, %_ZSt8_DestroyIN7rocksdb22BackupExcludedFileInfoEEvPT_.exit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i, align 8, !tbaa !90 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt8_DestroyIN7rocksdb22BackupExcludedFileInfoEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
end_hunk_0
